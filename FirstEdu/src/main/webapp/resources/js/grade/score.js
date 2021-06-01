function showScoreList() {
	console.log("test");
	$.ajax({
		url: "/firstedu/grade/score/list",
		type: "get",
		success: function(data) {
			console.table(data);
		},
		error: function(error) {
			console.log(error);
		}
	});
}
