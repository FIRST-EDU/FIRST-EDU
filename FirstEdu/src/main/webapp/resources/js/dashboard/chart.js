/* 통계 자료 불러오기 */
let className = $('input[name="className"]');
let classCount = $('input[name="classCount"]');
let female = $('#femaleCount').val();
let male = $('#maleCount').val();
let school = $('input[name="school"]');
let schoolCount = $('input[name="schoolCount"]');
let gradeName = $('input[name="gradeName"]');
let gradeCount = $('input[name="gradeCount"]');

/* 배열 선언 */
let classArray = [];
let schoolArray = [];
let gradeArray = [];

/* 배열에 데이터 입력 */
classArray.push(['강의명', '원생 수']);
for(var i = 0 ; i < className.length ; i++) {
	classArray.push([className.eq(i).val(), parseInt(classCount.eq(i).val())]);
}
schoolArray.push(['학교', '원생 수']);
for(var i = 0 ; i < school.length ; i++) {
	schoolArray.push([school.eq(i).val(), parseInt(schoolCount.eq(i).val())]);
}
gradeArray.push(['학년', '원생 수']);
for(var i = 0 ; i < gradeName.length ; i++) {
	gradeArray.push([gradeName.eq(i).val(), parseInt(gradeCount.eq(i).val())]);
}


/* 차트 로드 */
google.charts.load('current', {'packages':['corechart']});

/* 차트 그리기 */
google.charts.setOnLoadCallback(drawSalesChart);
google.charts.setOnLoadCallback(drawStudentClassChart);
google.charts.setOnLoadCallback(drawStudentGenderChart);
google.charts.setOnLoadCallback(drawStudentSchoolChart);
google.charts.setOnLoadCallback(drawStudentGradeChart);

/* 매출 현황 차트 */
function drawSalesChart() {

}

/* 강의별 학생 현황 차트 */
function drawStudentClassChart() {

	var data = new google.visualization.arrayToDataTable(classArray);
	
    var options = {
      bar: { groupWidth: '50%' },
      chartArea: {height:'100%'},
      legend:  'none',
      colors: ['#39f'],
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
      colors: ['#1b47b1', '#006ccb', '#39f', '#11cdef'],
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
      colors: ['#11cdef', '#39f', '#006ccb'],
      animation:{
        startup : true,
      	duration: 1000,
        easing: 'out'
      },
    };

    var chart = new google.visualization.PieChart(document.getElementById('studentGrade'));
    chart.draw(data, options);
}