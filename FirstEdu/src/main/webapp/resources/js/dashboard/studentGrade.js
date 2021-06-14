google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);

let gradeName = $('input[name="gradeName"]');
let gradeCount = $('input[name="gradeCount"]');

let gradeArray = [];
gradeArray.push(['Grade', 'Count']);
for(var i = 0 ; i < gradeName.length ; i++) {
	gradeArray.push([gradeName.eq(i).val(), parseInt(gradeCount.eq(i).val())]);
}

function drawChart() {
    var data = google.visualization.arrayToDataTable(gradeArray);
    var options = {
      legend:  { position : 'top' },
      pieHole: 0.4,
      colors: ['#11cdef', '#39f'],
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentGrade'));
    chart.draw(data, options);
}