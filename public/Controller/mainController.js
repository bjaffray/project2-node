const mainModel = require("../Model/mainModel.js")


function getItems(req, res){
    mainModel.getItemDB(function(error, result){
        if (error || result == null) {
            res.status(500).json({success: false, data: error});
            console.log("Error in DB");
        } 
        else{
            res.json(result)
            console.log(res.json(result));
        }
    })
}




module.exports = {
    getItems: getItems
};