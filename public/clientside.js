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
    console.log("starting");

    $.get("/getItems", function(data) {
        console.log("Running");

        for (var i = 0; i < data.list.length; i++) {
            var item = data.list[i];
            if(i == 0){
                itemID = item.item_id;
                $("#displayItems_id").empty().append("<tr onclick=\"checkInfo(" + i + ")\"> <td>" + item.ItemName + "<td><img src=\"" + item.PicPath + "\" alt=\"" + item.ItemName + "\"> <td>" + item.Description + "<td>" + item.ItemPrice + "<td><input type=\"checkbox\" name=\"cart" + i + "\" id=\"" + i + "\" value=\"1\"");
            }
            else{
                itemID = item.item_id;
                $("#displayItems_id").append("<tr onclick=\"checkInfo(" + i + ")\"> <td>" + item.ItemName + "<td><img src=\"" + item.PicPath + "\" alt=\"" + item.ItemName + "\"> <td>" + item.Description + "<td>" + item.ItemPrice + "<td><input type=\"checkbox\" name=\"cart" + i + "\" id=\"" + i + "\" value=\"1\"");
            }
        }
    })
}
