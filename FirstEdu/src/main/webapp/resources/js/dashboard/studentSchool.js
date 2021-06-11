google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);

let school = $('input[name="school"]');
let schoolCount = $('input[name="schoolCount"]');

let schoolArray = [];
schoolArray.push(['School', 'Count']);
for(var i = 0 ; i < school.length ; i++) {
	schoolArray.push([school.eq(i).val(), parseInt(schoolCount.eq(i).val())]);
}

function drawChart() {
    var data = google.visualization.arrayToDataTable(schoolArray);
    var options = {

      title: '학교별 분포',
      pieHole: 0.4,
      colors: ['#11cdef', '#39f',  '#1b47b1'],
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentSchool'));
    chart.draw(data, options);
}

