# bar_chart_demo

Demo Bar chart using fl_chart package

![Bar Chart](https://github.com/rosera/bar_chart_demo/blob/main/screenshots/bar_chart_demo.png "Mobile App")

## Getting Started

The developer is required to include the CustomBarChart widget.
The method requires a List of double values to be passed from the calling method:

```
  // Create some data
  List<double> effortTracker = [
    90.5,
    60.2,
    40.2,
    30.3,
    90.9,
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
            height: 400,
            child: CustomBarChart(effortTracker: effortTracker))),
    );
  }
}
```

Developers will require two files to be included as outlined below:

| File | Description |
|------|-------------|
| custom_bar_chart.dart | Bar Chart Widget and display values |
| custom_bar_chart_data.dart | Bar Chart data to be displayed |

