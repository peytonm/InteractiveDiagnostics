function scatterplot() {
	var margin = {top: 20, right: 20, bottom: 30, left: 40},
		width = 600 - margin.left - margin.right,
		height = 600 - margin.top - margin.bottom,
		xScale = d3.scale.linear().range([0, width]),
		yScale = d3.scale.linear().range([height, 0]),
		xAxis = d3.svg.axis().scale(xScale).orient("bottom"),
		yAxis = d3.svg.axis().scale(yScale).orient("left");

	function chart(selection) {
		selection.each(function(data) {
			xScale.domain(d3.extent(data, function(d) { return d.x; }));
			yScale.domain(d3.extent(data, function(d) { return d.y; }));

			d3.select(this).select("svg").remove();

			var svg = d3.select(this).append("svg");

			svg.attr("width", width + margin.left + margin.right)
				.attr("height", height + margin.top + margin.bottom)
				.append("g")
				.attr("transform", "translate(" + margin.left + "," + margin.top + ")");

			svg.append("g")
				.attr("class", "x axis")
				.attr("transform", "translate(0," + height + ")")
				.call(xAxis);

			svg.append("g")
				.attr("class", "y axis")
				.call(yAxis);

			svg.selectAll(".dot").data(data).enter().append("circle")
				.attr("class", "dot")
				.attr("r", 2.5)
				.attr("cx", function(d) { return xScale(d.x); })
				.attr("cy", function(d) { return yScale(d.y); });
		});
	}

	return chart;
}