#!/usr/bin/env ruby
$LOAD_PATH << './lib'
require 'ruby_free_chart.rb'
require 'ruby_free_chart/pie_chart.rb'

pie_chart = RubyFreeChart::PieChart.new
pie_chart.title = "Cars by Color"
pie_chart.width = 450
pie_chart.height = 300

pie_chart.add_value("Yellow", 87, "#FFFF00")
pie_chart.add_value("Red", 34, "#FF0000")
pie_chart.add_value("Black", 45, "#000")
pie_chart.add_value("Blue", 60, "#0033CC")
pie_chart.add_value("Green", 14, "#336633")

pie_chart.render_png_to_file("/tmp/test_chart.png")
