as yet unclassified
ohmPExprObject

	^ '{ "matchContentsStrict" : [ { "input" : "foo", "expect" : false, "streamAtEnd" : false },
	                                       { "input" : [], "expect" : false },
		                                 { "input" : [{"x" : 1, "y" : 2}], "expect" : true},
							   { "input" : [{"y" : 2, "x" : 1}], "expect" : true},
							   { "input" : [{"y" : 2}], "expect" : false} ],
		"matchContentsLenient" : [  { "input" : "foo", "expect" : false, "streamAtEnd" : false },
	                                       { "input" : [], "expect" : false },
		                                 { "input" : [{"x" : 1, "y" : 2}], "expect" : true},
							   { "input" : [{"y" : 2, "x" : 1}], "expect" : true},
							   { "input" : [{"y" : 2}], "expect" : false}, 
                                             { "input" : [{"y" : 2, "x" : 1, "z" : 3}], "expect" : true} ],
             "matchStringValue" : [{ "input" : [], "expect" : false },
		                                 { "input" : [{"x" : "foo", "y" : 2}], "expect" : true},
							   { "input" : [{"y" : 2, "x" : "foofoo"}], "expect" : true}, 
                                             { "input" : [{"y" : 2, "x" : "foobar"}], "expect" : false} ],
		"matchIntervalStrict" : [ { "input" : "foo", "expectInterval" : [] },
	                                       { "input" : [], "expectInterval" : [] },
		                                 { "input" : [{"x" : 1, "y" : 2}], "expectInterval" : [[1,1],[1,1]]},
							   { "input" : [{"y" : 2, "x" : 1}], "expectInterval" : [[1,1],[1,1]]},
							   { "input" : [{"y" : 2}], "expectInterval" : []} ],
		"matchIntervalLenient" : [ { "input" : "foo", "expectInterval" : [] },
	                                       { "input" : [], "expectInterval" : [] },
		                                 { "input" : [{"x" : 1, "y" : 2}], "expectInterval" : [[1,1],[1,1],[1,1]]},
							   { "input" : [{"y" : 2, "x" : 1}], "expectInterval" : [[1,1],[1,1],[1,1]]},
							   { "input" : [{"y" : 2, "x" : 1, "z" : 3, "w" : 4}], "expectInterval" : [[1,1],[1,1],[1,1]]},
							   { "input" : [{"y" : 2}], "expectInterval" : []} ],
		"matchTreeStrict" : [  { "input" : [{"x" : 1, "y" : 2}], "expectedTree" : { "ruleName" : "ruleOne", "children" : [ {"ruleName" : "_terminal", "children" : [1] }, {"ruleName" : "_terminal", "children" : [2]} ] } },
							   { "input" : [{"y" : 2, "x" : 1}], "expectedTree" : { "ruleName" : "ruleOne", "children" : [ {"ruleName" : "_terminal", "children" : [1] }, {"ruleName" : "_terminal", "children" : [2]} ] }} ],
		"matchTreeLenient" : [  { "input" : [{"x" : 1, "y" : 2, "z" : 3}], 
									"expectedTree" : { "ruleName" : "ruleOne", 
														"children" : [ {"ruleName" : "_terminal", "children" : [1] }, {"ruleName" : "_terminal", "children" : [2]}, {"ruleName" : "_terminal", "children" : [{"z" : 3}] } ] } },
							      { "input" : [{"y" : 2, "x" : 1, "z" : 3}], 
									"expectedTree" : { "ruleName" : "ruleOne", 
														"children" : [ {"ruleName" : "_terminal", "children" : [1] }, {"ruleName" : "_terminal", "children" : [2]}, {"ruleName" : "_terminal", "children" : [{"z" : 3}] } ] } } ] }'
        