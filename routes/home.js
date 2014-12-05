var ejs = require("ejs");
var mysql = require('./mysql');
//var mysql = require('./connectionPooling');

var userName = "";
var item;

function afterChangeThreshold(req, res) {

	if( req.param("threshold") == "" || isNaN( req.param("threshold")))
		{
		ejs.renderFile('./views/wrongThreshold.ejs', {
		
			userName : userName
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
	
	else
		{
	var thresholdUpdate = "update item_counter SET item_threshold  = "
			+ req.param("threshold")
			+ " where user_name = '"
			+ userName
			+ "' and item_id = ( select item_id from cloud_market.item_info where item_name = '"
			+ req.param("product") + "' limit 1);"

	console.log("Query is:" + thresholdUpdate);

	if(isNaN(req.param("threshold")))
	{
	ejs.renderFile('./views/error.ejs', {
		results : results,
		userName : userName
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
	
	
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
			
			
		} else {
			console.log("display successful");
		}
	}, thresholdUpdate);

	var selectThreshold = "select  * from  item_counter INNER JOIN item_info ON item_counter.item_id = item_info.item_id where item_counter.user_name = '"
			+ userName + "';";

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("display successful");
			ejs.renderFile('./views/index.ejs', {
				results : results,
				userName : userName
			}, function(err, result) {

				if (!err) {
					res.end(result);

				}

				else {
					res.end('An error occurred');
					console.log(err);
					
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, selectThreshold);
		}

}

function changeThreshold(req, res) {

	
	
	var analysis = "select * from item_counter INNER JOIN item_info on item_counter.item_id = item_info.item_id where item_counter.user_name = '"+userName+"';";
	console.log("Query is:" + analysis);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			
			ejs.renderFile('./views/threshold.ejs', {
				userName : userName,
				item:results
			}, function(err, result) {
				// render on success
				if (!err) {
					res.end(result);
				}
				// render or error
				else {
					res.end('An error occurred');
					console.log(err);
					
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		
		}
	}, analysis);
	
	
}

function myGrocery(req, res) {

	var getFood = "select  * from  item_counter INNER JOIN item_info ON item_counter.item_id = item_info.item_id where item_counter.user_name = '"
			+ userName + "';";

	console.log("Query is:" + getFood);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("display successful");
			ejs.renderFile('./views/customer.ejs', {
				results : results,
				userName : userName
			}, function(err, result) {

				if (!err) {
					res.end(result);

				}

				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, getFood);

}


function realTimeData(req, res) {

	var getFood = "select * from cloud_market.item_counter ic inner join cloud_market.item_info inf on ic.item_id = inf.item_id limit 10;";

	console.log("Query is:" + getFood);
	var realtimedata =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("display successful");
			realtimedata = results;
			ejs.renderFile('./views/realtimedata.ejs', {
				realtimedata : results,
				userName : userName
			}, function(err, result) {

				if (!err) {
					res.end(result);

				}

				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, getFood);

}

function afterSignIn(req, res) {

	
	var getUser = "select * from user_info where user_name ='"
			+ req.param("inputUsername") + "' AND password = '"
			+ req.param("inputPassword") + "';";
	console.log("Query is:" + getUser);

	mysql
			.fetchData(
					function(err, results) {
						if (err) {
							throw err;
						} else {
							if (results.length > 0) {
								console.log("valid Login");
								userName = req.param("inputUsername");

								if (req.param("inputUsername") == "admin") {
									ejs.renderFile('./views/index.ejs', {
										userName : userName
									}, function(err, result) {

										if (!err) {
											res.end(result);
										} else {
											res.end('An error occurred');
											console.log(err);
										}
									});

								} else {
									console.log("customer");

									var getFood = "select  * from  item_counter INNER JOIN item_info ON item_counter.item_id = item_info.item_id where item_counter.user_name = '"
											+ userName + "';";

									console.log("Query is:" + getFood);

									mysql
											.fetchData(
													function(err, results) {
														if (err) {
															throw err;
														} else {
															console
																	.log("display successful");
															ejs
																	.renderFile(
																			'./views/customer.ejs',
																			{
																				results : results,
																				userName : userName
																			},
																			function(
																					err,
																					result) {

																				if (!err) {
																					res
																							.end(result);

																				}

																				else {
																					res
																							.end('An error occurred');
																					console
																							.log(err);
																				}
																			});

														}
													}, getFood);

								}

							} else {

								console.log("Invalid Login");
								ejs.renderFile('./views/signInFail.ejs', {
									results : results,
									userName : userName
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
						}
					}, getUser);
}


function addProductForm(req, res) {

	var analysis = "select * from item_info;";
	console.log("Query is:" + analysis);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			
			ejs.renderFile('./views/addProduct.ejs', {
				userName : userName,
				item : results
			}, function(err, result) {
				// render on success
				if (!err) {
					res.end(result);
				}
				// render or error
				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});
		
		}
	}, analysis);
	
}

function dueOrders(req, res) {

	var order = "select * from cloud_market.item_counter ic INNER JOIN cloud_market.item_info inf on ic.item_id = inf.item_id inner join cloud_market.user_info  ui on ui.user_id=ic.user_id where item_quantity < item_threshold;";


	console.log("Query is:" + order);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("display successful");
			ejs.renderFile('./views/dueOrders.ejs', {
				results : results,
				userName : userName
			}, function(err, result) {

				if (!err) {
					res.end(result);

				}

				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, order);
}

function homePage(req, res) {

	ejs.renderFile('./views/index.ejs', {
		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function signOut(req, res) {

	userName = "";
	ejs.renderFile('./views/index.ejs', {
		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function aboutUs(req, res) {

	ejs.renderFile('./views/about.ejs', {
		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function signUp(req, res) {

	ejs.renderFile('./views/signUp.ejs', {

		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function addProduct(req, res) {

	if( req.param("pQuantity") == "" || isNaN( req.param("pQuantity")) ||  req.param("pThreshold") == "" || isNaN( req.param("pThreshold")) )
	{
	ejs.renderFile('./views/error.ejs', {
	
		userName : userName
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
	else
		{
	
	var insertUser = "insert into cloud_market.item_counter values ((select user_id from cloud_market.user_info where user_name = '"+userName+"') ,"+req.param("pName")+" , "+req.param("pQuantity") +" , "+req.param("pThreshold") +" , "+req.param("pQuantity") +" ,'"+userName+"');"
	
	console.log("Query is:" + insertUser);
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			ejs.renderFile('./views/index.ejs', {

				userName : userName,
				
			}, function(err, result) {

				if (!err) {
					res.end(result);
				}
				// render or error
				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, insertUser);
		}
}

function contacts(req, res) {

	ejs.renderFile('./views/contacts.ejs', {

		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function signIn(req, res) {

	ejs.renderFile('./views/signIn.ejs', {

		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function geographic(req, res) {

	ejs.renderFile('./views/google_Map.ejs', {
		results : results,
		userName : userName
	}, function(err, result) {
		// render on success
		if (!err) {
			res.end(result);
		}
		// render or error
		else {
			res.end('An error occurred');
			console.log(err);
			ejs.renderFile('./views/error.ejs', {
				results : results,
				userName : userName
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
	});
}

function analysis(req, res) {

	// var analysis = "select item_info.item_name , item_info.item_description ,
	// item_counterer.is_stock , item_counterer.is_delivery from item_counterer INNER JOIN
	// item_info ON item_counterer.item_id = item_info.item_id;";
	var analysis = "select * from cloud_market.threshold_data limit 10;";
	//var analysis = "select *  from item_counterer;";
	console.log("Query is:" + analysis);
	//userName = req.param("email");
	var graphData =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			//results = JSON.parse(JSON.stringify(results));
			graphData = results
			res.render('samplegraph', {

				graphData : graphData,
				userName : userName
				
			});
			console.log("result analysis for user Name: " + userName);
			console.log("result analysis" + graphData[1].item_quantity);
			console.log("result analysis" + results[2].item_quantity);
		}
	}, analysis);

}


function barGraph(req, res) {

	var analysis = "select * from cereals_analysis";
	//var analysis = "select *  from item_counterer;";
	console.log("Query is:" + analysis);
	//userName = req.param("email");
	var graphData =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			//results = JSON.parse(JSON.stringify(results));
			graphData = results
			res.render('sampleBargraph', {

				graphData : graphData,
				userName : userName
				
			});
			console.log("result analysis" + graphData[0]);
			console.log("result analysis" + graphData[1].Cereals);
			console.log("result analysis" + results[2].Location);
		}
	}, analysis);

}

function pieChart(req, res) {

	var analysis = "select * from fruits_analysis";
	//var analysis = "select *  from item_counterer;";
	console.log("Query is:" + analysis);
	//userName = req.param("email");
	var graphData =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			//results = JSON.parse(JSON.stringify(results));
			graphData = results
			res.render('PieChart', {

				graphData : graphData,
				userName : userName
				
			});
			console.log("result analysis for pie" + graphData[0]);
			console.log("result analysis" + graphData[1].Apples);
			console.log("result analysis" + results[2].Blueberries);
		}
	}, analysis);

}

function locationGraph(req, res) {

	var analysis = "select * from location_data limit 7;";
	//var analysis = "select *  from item_counterer;";
	console.log("Query is:" + analysis);
	//userName = req.param("email");
	var graphData =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			//results = JSON.parse(JSON.stringify(results));
			graphData = results
			res.render('locationGraph', {

				graphData : graphData,
				userName : userName
				
			});
			console.log("result analysis for pie" + graphData[0]);
			console.log("result analysis" + graphData[1].Latitude);
			console.log("result analysis" + results[2].Latitude);
		}
	}, analysis);

}

function histrogramGraph(req, res) {

	var analysis = "select * from chocolate_analysis";
	//var analysis = "select *  from item_counterer;";
	console.log("Query is:" + analysis);
	//userName = req.param("email");
	var graphData =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			//results = JSON.parse(JSON.stringify(results));
			graphData = results
			res.render('histogramGraph', {

				graphData : graphData,
				userName : userName
				
			});
			console.log("result analysis for pie" + graphData[0]);
			console.log("result analysis" + graphData[1].Apples);
			console.log("result analysis" + results[2].Blueberries);
		}
	}, analysis);

}

function afterSignUp(req, res) {

	
	
	if(req.param("fName") == "" || req.param("email") == "" || req.param("add")== ""|| req.param("phone")==""|| req.param("password")==""  ||   req.param("phone").match("^(?:\(\d{3}\)|\d{3})[- ]?\d{3}[- ]?\d{4}$"))
	
	{
		ejs.renderFile('./views/wrongSignUp.ejs', {
			
			userName : userName
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
	
	else
		{
	var insertUser = "insert into user_info (user_name, first_name,address,contact_no , password) values('"
			+ req.param("email")
			+ "','"
			+ req.param("fName")
			+ "','"
			+ req.param("add")
			+ "','"
			+ req.param("phone")
			+ "','"
			+ req.param("password") + "');";
	console.log("Query is:" + insertUser);
	userName = req.param("email");

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			ejs.renderFile('./views/index.ejs', {

				userName : userName
			}, function(err, result) {

				if (!err) {
					res.end(result);
				}
				// render or error
				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, insertUser); }
}

function contactUs(req, res) {

	var insertUser = "insert into contaact_us  values('" + req.param("name")
			+ "','" + req.param("email") + "','" + req.param("message") + "');";
	console.log("Query is:" + insertUser);

	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			ejs.renderFile('./views/index.ejs', {

				userName : userName
			}, function(err, result) {

				if (!err) {
					res.end(result);
				}
				// render or error
				else {
					res.end('An error occurred');
					console.log(err);
					ejs.renderFile('./views/error.ejs', {
						results : results,
						userName : userName
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
			});

		}
	}, insertUser);
}

function invoice(req, res) {

	var analysis = "select * from chocolate_analysis";
	//var analysis = "select *  from item_counterer;";
	console.log("Query is:" + analysis);
	//userName = req.param("email");
	var graphData =null;
	mysql.fetchData(function(err, results) {
		if (err) {
			throw err;
		} else {
			console.log("insert successful");

			//results = JSON.parse(JSON.stringify(results));
			graphData = results
			res.render('invoice', {

				graphData : graphData,
				userName : userName
				
			});
			console.log("result analysis for pie" + graphData[0]);
			console.log("result analysis" + graphData[1].Apples);
			console.log("result analysis" + results[2].Blueberries);
		}
	}, analysis);

}
exports.invoice=invoice;
exports.histrogramGraph=histrogramGraph;
exports.locationGraph=locationGraph;
exports.pieChart=pieChart;
exports.barGraph=barGraph;
exports.analysis = analysis;
exports.aboutUs = aboutUs;
exports.homePage = homePage;
exports.geographic = geographic;
exports.signIn = signIn;
exports.contacts = contacts;
exports.signUp = signUp;
exports.afterSignIn = afterSignIn;
exports.changeThreshold = changeThreshold;
exports.afterSignUp = afterSignUp;
exports.afterChangeThreshold = afterChangeThreshold;
exports.myGrocery = myGrocery;
exports.signOut = signOut;
exports.dueOrders = dueOrders;
exports.contactUs = contactUs;
exports.addProductForm = addProductForm;
exports.addProduct = addProduct;
exports.realTimeData=realTimeData;