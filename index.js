const fs = require("fs");

// Read the contents of 'sets.txt' file.
const setsFile = fs.readFileSync("sets.txt", "utf-8");

// Split the contents of the file by line to create an array of sets.
const sets = setsFile.split("\n");

const setObjects = [];

let currentSetName = null;
let currentSetItems = [];

// Loop through each line in the sets file.
for (let i = 0; i < sets.length; i++) {
  const line = sets[i].trim();
  // If the line starts with '---', it's a new set.
  if (line.startsWith("---")) {
    // If we were previously processing a set, add it to the setObjects array.
    if (currentSetName !== null) {
      const savingSetObject = {
        name: currentSetName,
        items: currentSetItems,
      };
      if (currentSetName.includes("DONE")) {
        savingSetObject.done = true;
        savingSetObject.name = savingSetObject.name
          .replace(" - DONE", "")
          .trim();
      }
      // --- Food - amount 20
      if (currentSetName.includes("amount")) {
        const [name, amount] = currentSetName.split(" - amount ");
        savingSetObject.amount = amount;
        savingSetObject.name = name.trim();
      }

      setObjects.push(savingSetObject);
    }

    // Start processing the new set.
    currentSetName = line.substring(3).trim();
    currentSetItems = [];
  } else {
    // Otherwise, it's an item in the current set.
    const item = line.split(" -- ")[0].trim();
    if (item !== "") {
      const newItem = { name: item };
      currentSetItems.push(newItem);
    }
  }
}
// Read the contents of 'itemsDB.txt' file.
const itemsFile = fs.readFileSync("itemsDB.txt", "utf-8");
// Split the contents of the file by line to create an array of items.
const items = itemsFile.split("\n");
const itemObjects = items
  .filter((item) => item.length)
  .map((item) => {
    const [uuid, names] = item.split(",--");
    const [t_name, d_name] = names.split(" (");

    if (!uuid || !t_name) {
      console.log("error", item);
    }

    return {
      uuid: uuid.replace(/"/g, "").trim(),
      d_name: d_name?.replace(")", "").trim() || "",
      t_name: t_name?.trim() || "",
    };
  })
  .filter((item) => item.uuid && item.t_name && item.d_name);

// Loop through each set object. For each item in the set, find the corresponding item object and add it to the set object.

for (let i = 0; i < setObjects.length; i++) {
  const set = setObjects[i];
  for (let j = 0; j < set.items.length; j++) {
    const item = set.items[j];
    const itemObject = itemObjects.find((itemObject) => {
      return itemObject.d_name === item.name;
    });

    if (!itemObject) {
      console.error(`Could not find item ${item.name} in the items list.`);
    }

    set.items[j] = { ...item, ...itemObject };
  }
}
console.log(setObjects);
console.log("sample", setObjects.at(-1));
// Write the array of set objects to a new file.
fs.writeFileSync("setObjects.json", JSON.stringify(setObjects));
// processing sets

/* TEMPLATE
{$lua}
if syntaxcheck then return end
[ENABLE]
-- SET NAME
local items = {
    "ITEM_UUID", -- ITEM_NAME || ITEM_D_NAME || ITEM_T_NAME
}
for i = 1, #items do
    local item = items[i]
    local amount = {if set has amount, add amount here if not 1}
    TemplateAddToPlayer(item, amount)
end
[DISABLE]
 */

const setTemplate = `{$lua}
if syntaxcheck then return end
[ENABLE]

-- {{SET_NAME}}

local items = {
    {{ITEMS}}
}
for i = 1, #items do
    local item = items[i]
    TemplateAddToPlayer(item, {{AMOUNT}})
end
[DISABLE]
`;
const itemTemplate = `"{{ITEM_UUID}}", -- {{ ITEM_NAME }}`;

const setScripts = setObjects.map((set) => {
  const items = set.items
    .filter((item) => item.uuid)
    .map((item) => {
      const itemName = item.name || item.d_name || item.t_name;
      return itemTemplate
        .replace("{{ITEM_UUID}}", item.uuid)
        .replace("{{ ITEM_NAME }}", itemName);
    });
  return setTemplate
    .replace("{{SET_NAME}}", set.name)
    .replace("{{ITEMS}}", items.join("\n    "))
    .replace("{{AMOUNT}}", set.amount || 1);
});

fs.writeFileSync("setScripts.lua", setScripts.join("\n\n"));
