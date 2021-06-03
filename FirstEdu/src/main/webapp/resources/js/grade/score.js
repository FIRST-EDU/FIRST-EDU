function showScoreList() {
	console.log("test");
	$.ajax({
		url: "/firstedu/grade/score/list",
		type: "get",
		success: function(data) {
			console.table(data);
			const $table = $("#scoreInfo tbody");
			$table.html("");
			
			for(var index in data) {
				$tr = $("<tr>");
				$noTd = $("<td>").text(parseInt(index)+1);
				$studentNoTd = $("<td>").text(data[index].studentNo);
				$scoreTd = $("<td>").text(data[index].score);
				
				$tr.append($noTd);
				$tr.append($studentNoTd);
				$tr.append($scoreTd);
				
				$table.append($tr);
			}
		},
		error: function(error) {
			console.log(error);
		}
	});
}
