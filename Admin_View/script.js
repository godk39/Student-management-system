
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
            display: false
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
                label: '1c18',
                fill: true,
                backgroundColor: "rgba(5, 64, 242, 0.2)",
                borderColor: "rgb(5,64,242)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(255, 99, 132, 1)",
                data: [8, 10, 9, 6, 8]
              },
              {
                label: '2c18',
                fill: true,
                backgroundColor: "rgba(2,115,42, 0.2)",
                borderColor: "rgba(2,115,42, 1)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(2,115,42, 1)",
                data: [8, 7, 4, 8, 6.5]
              },
              {
                label: '3c18',
                fill: true,
                backgroundColor: "rgba(255, 0, 0, 0.2)",
                borderColor: "rgba(255, 0, 0, 1)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(255, 0, 0, 1)",
                data: [6.5, 7.5, 4, 8, 10]
              },
              {
                label: '4c18',
                fill: true,
                backgroundColor: "rgba(255, 165, 0, 0.2)",
                borderColor: "rgba(255, 165, 0, 1)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(255, 165, 0, 1)",
                data: [9, 7, 4, 8, 10]
              },
              {
                label: '5c18',
                fill: true,
                backgroundColor: "rgba(255, 255, 0, 0.2)",
                borderColor: "rgba(255, 255, 0, 1)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(255, 255, 0, 1)",
                data: [4.5, 6.5, 6, 8.5, 10]
              },
              {
                label: '6c18',
                fill: true,
                backgroundColor: "rgba(75, 0, 130, 0.2)",
                borderColor: "rgba(75, 0, 130, 1)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(75, 0, 130, 1)",
                data: [3.5, 5.5, 4.5, 7.5, 6.5]
              },
            {
                label: '7c18',
                fill: true,
                backgroundColor: "rgba(238,130, 238, 0.2)",
                borderColor: "rgba(238, 130, 238, 1)",
                pointBorderColor: "#fff",
                pointBackgroundColor: "rgba(238, 130, 238, 1)",
                data: [9, 7, 4, 8, 10]
            }
          
        ]
    },
    options: {
        title: {
            text: "Skills",
            display: false
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
            display: false
        }
    }
});
