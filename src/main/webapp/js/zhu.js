am4core.useTheme(am4themes_animated);

// Create chart instance
var chart = am4core.create("chartdivzhu", am4charts.XYChart);

// Add data
chart.data = [{
  "category": "上半年",
  "value1": 1,
  "value2": 3,
  "value3": 3,
  "value4": 0,
  "value5": 2,
  "value6": 1
}, {
  "category": "下半年",
  "value1": 4,
  "value2": 0,
  "value3": 0,
  "value4": 2,
  "value5": 3,
  "value6": 1
}];

// Create axes
var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.dataFields.category = "category";
categoryAxis.renderer.grid.template.location = 0;
//categoryAxis.renderer.minGridDistance = 30;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

// Modify chart's colors
chart.colors.list = [
  am4core.color("#845EC2"),
  am4core.color("#D65DB1"),
  am4core.color("#FF6F91"),
  am4core.color("#FF9671"),
  am4core.color("#FFC75F"),
  am4core.color("#F9F871"),
];

// Create series
function createSeries(field) {
  var series = chart.series.push(new am4charts.ColumnSeries());
  series.dataFields.valueY = field;
  series.dataFields.categoryX = "category";
  return series;
}

createSeries("value1");
createSeries("value2");
createSeries("value3");
createSeries("value4");
createSeries("value5");
createSeries("value6");