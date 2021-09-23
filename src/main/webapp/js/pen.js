var chart = AmCharts.makeChart("chartdiv", {
  "type": "pie",
  "startDuration": 0,
  "theme": "light",
  "addClassNames": true,
  // "legend": {
  //   "position": "right",
  //   "marginRight": 100,
  //   "autoMargins": false
  // },
  "innerRadius": "60%",
  "defs": {
    "filter": [{
      "id": "shadow",
      "width": "200%",
      "height": "200%",
      "feOffset": {
        "result": "offOut",
        "in": "SourceAlpha",
        "dx": 0,
        "dy": 0
      },
      "feGaussianBlur": {
        "result": "blurOut",
        "in": "offOut",
        "stdDeviation": 5
      },
      "feBlend": {
        "in": "SourceGraphic",
        "in2": "blurOut",
        "mode": "normal"
      }
    }]
  },
  "dataProvider": [{
    "country": "关闭状态",
    "litres": 27
  }, {
    "country": "发生故障",
    "litres": 3
  }, {
    "country": "正常运行",
    "litres": 70
  },
  ],
  "valueField": "litres",
  "titleField": "country",
  "balloon": {
    "fillAlpha": 0,
    "borderAlpha": 0,
    "shadowAlpha": 0,
    "fixedPosition": true
  },
  "listeners": [{
    "event": "changed",
    "method": function(e) {
      console.log(e.type);
    }
  }],
  "chartCursor": {

  },
  "export": {
    "enabled": true
  }
});

chart.addListener("init", handleInit);

chart.addListener("rollOverSlice", function(e) {
  handleRollOver(e);
});

function handleInit() {
  chart.legend.addListener("rollOverItem", handleRollOver);
}

function handleRollOver(e) {

  var chart = e.chart,
    radiusReal = chart.radiusReal,
    innerRadius = parseInt(chart.innerRadius, 10) * 0.01,
    marginTop = radiusReal * innerRadius;

  $('.amcharts-balloon-div').css({
    marginTop: marginTop * -1
  });

  var wedge = e.dataItem.wedge.node;
  wedge.parentNode.appendChild(wedge);
}