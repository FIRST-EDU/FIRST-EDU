        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        let array = [];
        array.push(['Month', 'Sales', 'Expenses']);
        for(var i = 1 ; i < 13 ; i++) {
            array.push([i, 10*i, 50-10*i]);
            
        }
        
        function drawChart() {
            var data = google.visualization.arrayToDataTable(array);
                // ['Month', 'Sales', 'Expenses'],
                // ['1월', 1000, 400],
                // ['2월', 1170, 460],
                // ['3월', 660, 1120],
                // ['4월', 1030, 540],
                // ['5월', 1030, 540],
                // ['6월', 1030, 540],
                // ['7월', 1030, 540],
                // ['8월', 1030, 540],
                // ['9월', 1030, 540],
                // ['10월', 1030, 540],
                // ['11월', 1030, 540],
                // ['12월', 1030, 540]
           

            var options = {
                title: '매출',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('sales'));

            chart.draw(data, options);
        }