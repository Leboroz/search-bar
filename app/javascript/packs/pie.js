// TODO append pie chart to the analytics page
// import * as d3 from "d3";

// export function createPie(data) {
//   const svg = d3.select("#chart")
//     .append("svg")
//     .attr("width", 500)
//     .attr("height", 500);

//   const pie = d3.pie()
//     .padAngle(0.021)
//     .value((d) => d.value);

//   const arc = d3.arc()
//     .innerRadius(0)
//     .outerRadius(200);

//   const slices = pie(data);

//   svg.selectAll("path")
//     .data(slices)
//     .enter()
//     .append("path")
//     .attr("d", arc)
//     .attr("fill", (d, i) => ["#f00", "#f90", "#ff0", "#0f0", "#00f"][i])
//     .attr("stroke", "white")
//     .attr("stroke-width", 1);

//   svg.selectAll("text")
//     .data(slices)
//     .enter()
//     .append("text")
//     .attr("text-anchor", "middle")
//     .attr("transform", (d) => `translate(${arc.centroid(d)})`)
//     .text((d) => d.data.name);
// }
