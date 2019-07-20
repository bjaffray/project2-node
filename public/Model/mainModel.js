const { Pool } = require("pg");
require('dotenv').config();
const db_url = process.env.DATABASE_URL || process.env.DATABASE_URL1;
const pool = new Pool({connectionString: db_url});
require('util');

function getItemDB(callback)
{
    var sql = 'SELECT * FROM public."Item";'
    console.log("Ex: " + sql);

    pool.query(sql, function(error, db_info){
        if(error){
            console.log("Error in query Item: ")
			console.log(error);
			callback(error, null);
        } 
        else {
            var result = {
                    success:true,
                    list:db_info.rows
            }
            console.log("Item DB result: "+ JSON.stringify(db_info.rows))
            callback(null, result);
        }
    })
}



module.exports = {
    getItemDB: getItemDB
};