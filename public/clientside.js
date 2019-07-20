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
        for (var i = 0; i < data.list.length; i++) {
            var item = data.list[i];
            if(i == 0){
                itemID = item.item_id;
                $("#displayItems_id").empty().append("<div>HEY THERE");
            }
            else{
                itemID = item.item_id;
                $("#displayItems_id").append("<div>HEY THERE");
            }
        }
    })
}



{/*             <tr>
                <th>Item</th>
                <th></th>
                <th>Description</th>
                <th>Price (Gold)</th>
                <th>Items in Cart</th>
            </tr>
            <!-- <?php
            for ($i = 0; $i < sizeof($_SESSION['store_items']) - 1; $i++) {
                $to_print = $_SESSION['store_items'][$i];
                echo "<tr onclick=\"checkInfo($i)\">";
                echo "<td>" . $to_print->name;
                echo "<td><img src=\"$to_print->filep\" alt=\"$to_print->name\">";
                echo "<td>" . $to_print->desc;
                echo "<td>" . $to_print->price;
                echo "<td><input type=\"checkbox\" name=\"cart$i\" id=\"$i\" value=\"1\"";
                if ($to_print->in_cart == 1) echo "checked";
                echo "onclick=\"checkInfo($i)\">";
            }
            ?> --> */}