/* breadcrumb 변경 */
$(function(){
	$('#firstUnicode').remove();
	$('#parentMenu').remove();
	$('#nowMenu').text('대시보드');
})

/* 통계 자료 불러오기 */
let className = $('input[name="className"]');
let classCount = $('input[name="classCount"]');
let female = $('#femaleCount').val();
let male = $('#maleCount').val();
let school = $('input[name="school"]');
let schoolCount = $('input[name="schoolCount"]');
let gradeName = $('input[name="gradeName"]');
let gradeCount = $('input[name="gradeCount"]');
let monthList = $('input[name="sales-month"]');
let salesList = $('input[name="sales"]');
let salaryList = $('input[name="salary"]');

/* 배열 선언 */
let classArray = [];
let schoolArray = [];
let gradeArray = [];
let salesArray = [];
let salaryRatioArray = [];

let donutColorArray = [];
donutColorArray.push('#39f');
donutColorArray.push('#11cdef');
donutColorArray.push('#1b47b1');
donutColorArray.push('#006ccb');
donutColorArray.push('#00bee4');
donutColorArray.push('#825ee4');
donutColorArray.push('#4d32b1');


/* 배열에 데이터 입력 */
classArray.push(['강의명', '원생 수']);
for(var i = 0 ; i < className.length ; i++) {
	classArray.push( [className.eq(i).val(), parseInt(classCount.eq(i).val())] );
}
schoolArray.push(['학교', '원생 수']);
for(var i = 0 ; i < school.length ; i++) {
	schoolArray.push( [school.eq(i).val(), parseInt(schoolCount.eq(i).val()) ]);
}
gradeArray.push(['학년', '원생 수']);
for(var i = 0 ; i < gradeName.length ; i++) {
	gradeArray.push([ gradeName.eq(i).val(), parseInt(gradeCount.eq(i).val()) ]);
}
salesArray.push(['월', '매출', '인건비']);
salaryRatioArray.push(['월', '매출 대비 인건비']);
for(var i = 12 ; i > 0 ; i--) {
	let month = monthList.eq(i).val();
	let sales = parseInt(salesList.eq(i).val());
	let salary = parseInt(salaryList.eq(i).val());
	let ratio = (salary / sales);
	
	salesArray.push([ month, sales, salary ]);
	salaryRatioArray.push([ month, ratio ]);
}


/* 차트 로드 */
google.charts.load('current', {'packages':['corechart']});

/* 차트 그리기 */
$(function() {
	setTimeout(function(){
		google.charts.setOnLoadCallback(drawSalesChart);
		google.charts.setOnLoadCallback(drawSalaryRatioChart);
		google.charts.setOnLoadCallback(drawStudentClassChart);
		google.charts.setOnLoadCallback(drawStudentGenderChart);
		google.charts.setOnLoadCallback(drawStudentSchoolChart);
		google.charts.setOnLoadCallback(drawStudentGradeChart);
	}, 200);
});

/* 매출 현황 차트 */
function drawSalesChart() {

	var data = new google.visualization.arrayToDataTable(salesArray);
    
    var options = {
        curveType: 'function',
        legend: { position: 'bottom' },
        colors: ['#5e72e4', '#825ee4'],
        animation:{
	        startup: true,
	      	duration: 1000,
	        easing: 'out'
        }
    };

    var chart = new google.visualization.ColumnChart(document.getElementById('sales'));

    chart.draw(data, options);
}

/* 매출 대비 인건비 차트 */
function drawSalaryRatioChart() {

	var data = new google.visualization.arrayToDataTable(salaryRatioArray);
    
    var options = {
        curveType: 'function',
        legend: { position: 'bottom' },
        colors: ['#ff7089'],
        animation:{
	        startup: true,
	      	duration: 1000,
	        easing: 'out'
        },
    };

    var chart = new google.visualization.LineChart(document.getElementById('salaryRatio'));

    chart.draw(data, options);
}

/* 강의별 학생 현황 차트 */
function drawStudentClassChart() {

	var data = new google.visualization.arrayToDataTable(classArray);
	
    var options = {
      bar: { groupWidth: '50%' },
      chartArea: { width: '200', height:'100%'},
      legend:  'none',
      colors: ['#fbb140'],
      animation:{
        startup: true,
      	duration: 1000,
        easing: 'out'
      },
      annotations: {
      	
      },
    };
	
	var chart = new google.visualization.BarChart(document.getElementById('studentClass'));
	chart.draw(data, options);
}

/* 학생 성별 분포 */
function drawStudentGenderChart() {

    var data = google.visualization.arrayToDataTable([
      ['성별', '원생 수'],
      ['여', parseInt(female)],
      ['남', parseInt(male)]
    ]);

    var options = {
      pieHole: 0.3,
      chartArea: {left:10, top:10, width:'100%', height:'100%'},
      colors: ['#39f', '#11cdef'],
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentGender'));
    chart.draw(data, options);
}

/* 학교별 학생 분포 */
function drawStudentSchoolChart() {
    var data = google.visualization.arrayToDataTable(schoolArray);
    var options = {
      pieHole: 0.3,
      chartArea:{left:10, top:10, width:'100%', height:'100%'},
      colors: donutColorArray,
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentSchool'));
    chart.draw(data, options);
}

/* 학년별 학생 분포 */
function drawStudentGradeChart() {
    var data = google.visualization.arrayToDataTable(gradeArray);
    var options = {
      pieHole: 0.3,
      chartArea:{left:10, top:10, width:'100%', height:'100%'},
      colors: donutColorArray,
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentGrade'));
    chart.draw(data, options);
}