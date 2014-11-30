var ejs = require("ejs");
var mysql = require('./mysql');

var userName = "";



function afterChangeThreshold(req, res) {
	
	var thresholdUpdate = "update item_count SET item_threshold  = "+req.param("threshold")+" where user_name = '"+userName+"' and item_id = ( select item_id from cloud_market.item_info where item_name = '"+req.param("product")+"');"
		
		console.log("Query is:" + thresholdUpdate);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("display successful");
		}
	}, thresholdUpdate);
	
	thresholdUpdate= "select  * from  item_count INNER JOIN item_info ON item_count.item_id = item_info.item_id where item_count.user_name = '"+userName+"';";
	
	
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("display successful");
			ejs.renderFile('./views/customer.ejs', {
				results : results
			}, function(err, result) {

				if (!err) {
					res.end(result);

				}

				else {
					res.end('An error occurred');
					console.log(err);
				}
			});

		}
	}, thresholdUpdate);
	
	
}




function changeThreshold(req, res) {
	
	ejs.renderFile('./views/threshold.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
	
	
}



function afterSignIn(req, res) {
	
	userName = req.param("inputUsername");
	var getUser = "select * from user_info where user_name ='" + req.param("inputUsername")
			+ "' AND password = '" + req.param("inputPassword") + "';";
	console.log("Query is:" + getUser);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			if (results.length > 0) {
				console.log("valid Login");
				
				  if(req.param("inputUsername")=="admin")
					  {
					  		ejs.renderFile('./views/admin.ejs',function(err,result) { 
					  		if (!err) { res.end(result); }  else { res.end('An error occurred');
					  		console.log(err); } });
					  }
				  else
					  {
					        console.log("customer");
					        
					        
					       /* var id = "select user_id from user_info where user_name ='"+userName+"';";
					        var userid="";
					        mysql.fetchData(function(err, results) {
					    		if (err) {
					    			console.log("user id fail");
					    			
					    			throw err;
					    		} else {
					    			console.log("user id succ");
					    			//userid=results[0].user_id;
					    		}
					    	}, id);*/
					        
					        var getFood = "select  * from  item_count INNER JOIN item_info ON item_count.item_id = item_info.item_id where item_count.user_name = '"+userName+"';";
					    	
					    	
					    	console.log("Query is:" + getFood);

					    	mysql.fetchData(function(err, results) {
					    		if (err) {
					    			throw err;
					    		} else {
					    			console.log("display successful");
					    			ejs.renderFile('./views/customer.ejs', {
					    				results : results
					    			}, function(err, result) {

					    				if (!err) {
					    					res.end(result);

					    				}

					    				else {
					    					res.end('An error occurred');
					    					console.log(err);
					    				}
					    			});

					    		}
					    	}, getFood);
					    
					  }
				  
			} else {

				console.log("Invalid Login");
				/*
				 * ejs.renderFile('./views/failLogin.ejs',function(err, result) { //
				 * render on success if (!err) { res.end(result); } // render or
				 * error else { res.end('An error occurred'); console.log(err); }
				 * });
				 */
			}
		}
	}, getUser);
}

function homePage(req, res) {

	ejs.renderFile('./views/index.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
}

function aboutUs(req, res) {

	ejs.renderFile('./views/about.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
}

function signUp(req, res) {

	ejs.renderFile('./views/signUp.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
}

function contacts(req, res) {

	ejs.renderFile('./views/contacts.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
}

function signIn(req, res) {

	ejs.renderFile('./views/signIn.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
}

function geographic(req, res) {

	ejs.renderFile('./views/google_Map.ejs', function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
		}
	});
}

function analysis(req, res) {

	//var analysis = "select  item_info.item_name , item_info.item_description , item_count.is_stock ,  item_count.is_delivery from  item_count INNER JOIN item_info ON item_count.item_id = item_info.item_id;";
	var analysis = "select user_name, item_count , item_threshold , item_quantity from item_count;";
console.log("Query is:" + analysis);
userName = req.param("email");

mysql.fetchData(function(err, results) {
	if (err) {
		throw err;
	} else {
		console.log("insert successful");
		
		results=JSON.parse(JSON.stringify(results));
		ejs.renderFile('./views/samplegraph.ejs', function(err, result) {
			results : results
			// render on success
			if (!err) {
				res.end(result);
			}
			// render or error
			else {
				res.end('An error occurred');
				console.log(err);
			}
		});
		
		console.log("result analysis"+results[0].user_name);
	}
}, analysis);

}


function afterSignUp(req, res) {
	
	var insertUser = "insert into user_info (user_name, first_name,address,contact_no , password) values('"
		+ req.param("email")
		+ "','"
		+ req.param("fName")
		+ "','"
		+ req.param("add")
		+ "','"
		+ req.param("phone")
		+ "','"
		+ req.param("password")
		+ "');";
console.log("Query is:" + insertUser);
userName = req.param("email");

mysql.fetchData(function(err, results) {
	if (err) {
		throw err;
	} else {
		console.log("insert successful");
		
		
		ejs.renderFile('./views/index.ejs', function(err, result) {
			// render on success
			if (!err) {
				res.end(result);
			}
			// render or error
			else {
				res.end('An error occurred');
				console.log(err);
			}
		});
		

	}
}, insertUser);
}



exports.analysis = analysis;
exports.aboutUs = aboutUs;
exports.homePage = homePage;
exports.geographic = geographic;
exports.signIn = signIn;
exports.contacts = contacts;
exports.signUp = signUp;
exports.afterSignIn = afterSignIn;
exports.changeThreshold=changeThreshold;
exports.afterSignUp=afterSignUp;
exports.afterChangeThreshold=afterChangeThreshold;
