const mainModel = require("../model/mainModel.js")


function getItems(req, res){
    mainModel.getItemDB(function(error, result){
        if (error || result == null) {
            res.status(500).json({success: false, data: error});
        } 
        else{
            res.json(result)
        }
    })
}