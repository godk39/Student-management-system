
let labels1 = ['Java', 'JavaScript', '.Net', 'Node.js', 'PHP', 'C/C++'];
let data1 = [1482, 1404, 1307, 1279, 1272, 1182];
let colors1 = ['#49A9EA', '#36CAAB', '#34495E', '#B370CF'];
let myChart1 = document.getElementById("myChart1").getContext('2d');
let chart1 = new Chart(myChart1, {
    type: 'bar',
    data: {
        labels: labels1,
        datasets: [ {
            data: data1,
            backgroundColor: colors1
        }]
    },
    options: {
        title: {
            text: "Salary according to dev's skill in 2019 (Dollar)",
            display: true
        },
        legend: {
          display: false
        }
    }
});


let labels2 = ['DBS', 'SS1', 'SE1', 'SAD', 'WPR'];
let myChart2 = document.getElementById("myChart2").getContext('2d');

let chart2 = new Chart(myChart2, {
    type: 'radar',
    data: {
        labels: labels2,
        datasets: [
          {
            label: '7c18',
            fill: true,
            backgroundColor: "rgba(179, 181, 198, 0.2)",
            borderColor: "rgba(179, 181, 198, 1)",
            pointBorderColor: "#fff",
            pointBackgroundColor: "rgba(179, 181, 198, 1)",
            data: [9, 7, 6, 8, 10]
          },
          {
            label: '2c18',
            fill: true,
            backgroundColor: "rgba(255, 99, 132, 0.2)",
            borderColor: "rgba(255, 99, 132, 1)",
            pointBorderColor: "#fff",
            pointBackgroundColor: "rgba(255, 99, 132, 1)",
            data: [8, 10, 5, 6, 8]
          }
        ]
    },
    options: {
        title: {
            text: "Skills",
            display: true
        }
    }
});

let labels3 = ['JavaScript', 'Java', 'Python', 'C/C++', 'PHP', 'Others'];
let data3 = [30, 20, 18, 14, 13, 5];
let colors3 = ['#49A9EA', '#36CAAB', '#34495E', '#B370CF', '#AC5353', '#CFD4D8'];

let myChart3 = document.getElementById("myChart3").getContext('2d');

let chart4 = new Chart(myChart3, {
    type: 'pie',
    data: {
        labels: labels3,
        datasets: [ {
            data: data3,
            backgroundColor: colors3
        }]
    },
    options: {
        title: {
            text: "Most in-demand programing language in 2020 (in percent)",
            display: true
        }
    }
});
