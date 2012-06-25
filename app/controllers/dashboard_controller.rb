class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @team_performance = LazyHighCharts::HighChart.new('graph') do |f|
    f.title({ :text=>"Only24hrs Team Performance"})
    f.options[:xAxis][:categories] = ['Work', 'Family', 'Travel', 'Leisure', 'Study']
    f.labels(:items=>[:html=>"Total tasks performed", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ])      
    f.series(:type=> 'column',:name=> 'Jane',:data=> [3, 2, 1, 3, 4])
    f.series(:type=> 'column',:name=> 'John',:data=> [2, 3, 5, 7, 6])
    f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
    f.series(:type=> 'column', :name=> 'Juan',:data=> [4, 5, 3, 9, 2])
    f.series(:type=> 'spline',:name=> 'Average team Agiltec', :data=> [3, 2.67, 3, 6.33, 3.33])
    f.series(:type=> 'pie',:name=> 'Total tasks for team Agiltec', 
      :data=> [
        {:name=> 'Jane', :y=> 13, :color=> 'red'}, 
        {:name=> 'John', :y=> 23,:color=> 'green'},
        {:name=> 'Joe', :y=> 19,:color=> 'blue'},
        {:name=> 'Juan', :y=> 21,:color=> 'yellow'}
      ],
      :center=> [100, 80], :size=> 100, :showInLegend=> false)
    end
    @individual_performance = LazyHighCharts::HighChart.new('graph') do |f|
    f.chart({renderTo: 'container', type: 'bar'})
    f.title({ :text=>"Only24hrs Task Planned by Focuses in Individual My Day"})
    f.options[:xAxis][:categories] = ['Early Morning', 'Morning', 'Noon', 'Anfernoon', 'Night']
    f.labels(:items=>[:html=>"Tasks Schedule", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ])      
    f.series(:type=> 'column',:name=> 'Work',:data=> [3, 5, 4, 3, 0])
    f.series(:type=> 'column',:name=> 'Family',:data=> [2, 0, 0, 0, 6])
    f.series(:type=> 'column', :name=> 'Travel',:data=> [0, 0, 0, 0, 2])
    f.series(:type=> 'column', :name=> 'Leisure',:data=> [1, 0, 0, 0, 1])
    f.series(:type=> 'column', :name=> 'Study',:data=> [1, 0, 0, 2, 2])
    f.legend(:layout => :horizontal)
    f.options[:chart][:defaultSeriesType] = "column"
    f.plot_options({:column=>{:stacking=>"percent", :pointPadding => 0, :groupPadding =>0}})
    end
  end
end
