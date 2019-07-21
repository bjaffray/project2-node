var itemID;



function checkInfo(address)
{
    var temp = document.getElementById(address);

    if (!temp.checked)
        temp.checked = true;
    else
        temp.checked = false;
}



function displayItems()
{
    $.get("/getItems", function(data) {
        $("#displayItems_id").empty();

        $("#displayItems_id").append("<tr><th>Item</th><th></th><th>Description</th><th>Price (Gold)</th><th>Items in Cart</th></tr>");

        for (var i = 0; i < data.list.length; i++) {
            var item = data.list[i];
            itemID = item.item_id;
            // Commented out so that we can actualy complie without breaking the app cause of the img bug
            //$("#displayItems_id").append("<tr onclick=\"checkInfo(" + i + ")\"> <td>" + item.ItemName + "<td><img src=\"" + item.PicPath + "\" alt=\"" + item.ItemName + "'s Image\"> <td>" + item.Description + "<td>" + item.ItemPrice + "<td><input type=\"checkbox\" name=\"cart" + i + "\" id=\"" + i + "\" value=\"1\"  disabled");
            $("#displayItems_id").append("<tr onclick=\"checkInfo(" + i + ")\"> <td>" + item.ItemName + "<td><img alt=\"" + item.ItemName + "'s Image\"> <td>" + item.Description + "<td>" + item.ItemPrice + "<td><input type=\"checkbox\" name=\"cart" + i + "\" id=\"" + i + "\" value=\"1\"  disabled");
        }
    })
}
