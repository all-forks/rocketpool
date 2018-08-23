// Retrieve a list from storage
async function getList(contract, key) {

    // Get list count
    let count = await contract.getListCount.call(key);

    // Get list items
    let items = [], index;
    for (index = 0; index < count; ++index) {
        items.push(await contract.getListItem.call(key, index));
    }

    // Return list
    return items;

}


// Push an item into a list
export async function scenarioPushListItem({contract, key, value, fromAddress, gas}) {

    // Get initial list
    let list1 = await getList(contract, key);

    // Push list item
    await contract.pushListItem(key, value, {from: fromAddress, gas: gas});

    // Get updated list
    let list2 = await getList(contract, key);

    // Asserts
    assert.equal(list2.length, list1.length + 1, 'List count was not updated correctly');
    assert.equal(list2[list2.length - 1], value, 'Value was not inserted correctly');
    list1.forEach((item, listIndex) => {
        assert.equal(list1[listIndex].valueOf(), list2[listIndex].valueOf(), 'List items changed which should not have');
    });

}


// Set a list item
export async function scenarioSetListItem({contract, key, index, value, fromAddress, gas}) {

    // Get initial list
    let list1 = await getList(contract, key);

    // Set list item
    await contract.setListItem(key, index, value, {from: fromAddress, gas: gas});

    // Get updated list
    let list2 = await getList(contract, key);

    // Asserts
    assert.equal(list2.length, list1.length, 'List count was updated incorrectly');
    assert.equal(list2[index], value, 'Value was not set correctly');
    assert.notEqual(list2[index], list1[index], 'Value was not updated');
    list1.forEach((item, listIndex) => {
        if (listIndex != index) assert.equal(list1[listIndex].valueOf(), list2[listIndex].valueOf(), 'List items changed which should not have');
    });

}


// Insert an item into a list
export async function scenarioInsertListItem({contract, key, index, value, fromAddress, gas}) {

    // Get initial list
    let list1 = await getList(contract, key);

    // Insert list item
    await contract.insertListItem(key, index, value, {from: fromAddress, gas: gas});

    // Get updated list
    let list2 = await getList(contract, key);

    // Asserts
    assert.equal(list2.length, list1.length + 1, 'List count was not updated correctly');
    assert.equal(list2[index], value, 'Value was not inserted correctly');
    list1.forEach((item, listIndex) => {
        if (listIndex < index) assert.equal(list1[listIndex].valueOf(), list2[listIndex].valueOf(), 'List items changed which should not have');
        else assert.equal(list1[listIndex].valueOf(), list2[listIndex + 1].valueOf(), 'List item was not moved successfully');
    });

}


// Remove an item from an ordered list
export async function scenarioRemoveOListItem({contract, key, index, fromAddress, gas}) {

    // Get initial list
    let list1 = await getList(contract, key);

    // Insert list item
    await contract.removeOrderedListItem(key, index, {from: fromAddress, gas: gas});

    // Get updated list
    let list2 = await getList(contract, key);

    // Asserts
    assert.equal(list2.length, list1.length - 1, 'List count was not updated correctly');
    list2.forEach((item, listIndex) => {
        if (listIndex < index) assert.equal(list1[listIndex].valueOf(), list2[listIndex].valueOf(), 'List items changed which should not have');
        else assert.equal(list1[listIndex + 1].valueOf(), list2[listIndex].valueOf(), 'List item was not moved successfully');
    });

}


// Remove an item from an unordered list
export async function scenarioRemoveUListItem({contract, key, index, fromAddress, gas}) {

    // Get initial list
    let list1 = await getList(contract, key);

    // Insert list item
    await contract.removeUnorderedListItem(key, index, {from: fromAddress, gas: gas});

    // Get updated list
    let list2 = await getList(contract, key);

    // Asserts
    assert.equal(list2.length, list1.length - 1, 'List count was not updated correctly');
    list2.forEach((item, listIndex) => {
        if (listIndex == index) assert.equal(list2[listIndex].valueOf(), list1[list1.length - 1].valueOf(), 'Last item was not moved correctly');
        else assert.equal(list1[listIndex].valueOf(), list2[listIndex].valueOf(), 'List items changed which should not have');
    });

}

