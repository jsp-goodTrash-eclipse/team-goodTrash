new Chart(document.getElementById("line-chart"), {
  type: "line",
  data: {
    labels: ["1일", "2일", "3일", "4일", "5일", "6일", "7일", "8일", "9일", "10일"],
    datasets: [
      {
        data: [86, 114, 106, 106, 107, 111, 133, 221, 783, 2478],
        label: "20대사용자",
        borderColor: "#3e95cd",
        fill: false,
      },
      {
        data: [282, 350, 411, 502, 635, 809, 947, 1402, 3700, 5267],
        label: "30대 사용자",
        borderColor: "#8e5ea2",
        fill: false,
      },
      {
        data: [168, 170, 178, 190, 203, 276, 408, 547, 675, 734],
        label: "40대 사용자",
        borderColor: "#3cba9f",
        fill: false,
      },
      {
        data: [40, 20, 10, 16, 24, 38, 74, 167, 508, 784],
        label: "50대 사용자",
        borderColor: "#e8c3b9",
        fill: false,
      },
      {
        data: [6, 3, 2, 2, 7, 26, 82, 172, 312, 433],
        label: "60대 사용자",
        borderColor: "#c45850",
        fill: false,
      },
    ],
  },
  options: {
    title: {
      display: true,
      text: "10월 연령별 사용자 인원 수",
    },
  },
});

// 지역별 사용량
new Chart(document.getElementById("bar-chart"), {
  type: "bar",
  data: {
    labels: ["서초구", "송파구", "강남구", "동작구", "남양주 화도읍"],
    datasets: [
      {
        label: "Population (millions)",
        backgroundColor: ["#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9", "#c45850"],
        data: [2478, 5267, 734, 784, 433],
      },
    ],
  },
  options: {
    legend: { display: false },
    title: {
      display: true,
      text: "10월 지역별 사용량",
    },
  },
});
