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
            if(i == 0){
                itemID = item.item_id;
                $("#displayItems_id").append("<tr onclick=\"checkInfo(" + i + ")\"> <td>" + item.ItemName + "<td><img src=\"" + item.PicPath + "\" alt=\"" + item.ItemName + "\"> <td>" + item.Description + "<td>" + item.ItemPrice + "<td><input type=\"checkbox\" name=\"cart" + i + "\" id=\"" + i + "\" value=\"1\"  disabled");
            }
            else{
                itemID = item.item_id;
                $("#displayItems_id").append("<tr onclick=\"checkInfo(" + i + ")\"> <td>" + item.ItemName + "<td><img src=\"" + item.PicPath + "\" alt=\"" + item.ItemName + "\"> <td>" + item.Description + "<td>" + item.ItemPrice + "<td><input type=\"checkbox\" name=\"cart" + i + "\" id=\"" + i + "\" value=\"1\"  disabled");
            }
        }
    })
}
