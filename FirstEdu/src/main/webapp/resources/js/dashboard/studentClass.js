google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);

let className = $('input[name="className"]');
let classCount = $('input[name="classCount"]');

let classArray = [];
classArray.push(['Class', 'Count']);
for(var i = 0 ; i < className.length ; i++) {
	classArray.push([className.eq(i).val(), parseInt(classCount.eq(i).val())]);
}

function drawChart() {
    var data = google.visualization.arrayToDataTable(classArray);
    var options = {

      title: '강의별 원생 수',
      legend:  'none',
      bar: { groupWidth: '50%' },
      colors: ['#11cdef', '#39f',  '#1b47b1'],
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.BarChart(document.getElementById('studentClass'));
    chart.draw(data, options);
}

