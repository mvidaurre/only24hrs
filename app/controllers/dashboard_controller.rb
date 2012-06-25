class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @h = LazyHighCharts::HighChart.new('graph') do |f|
    f.title({ :text=>"Only24hrs Performance"})
    f.options[:xAxis][:categories] = ['Work', 'Family', 'Travel', 'Leisure', 'Study']
    f.labels(:items=>[:html=>"Total tasks performed", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ])      
    f.series(:type=> 'column',:name=> 'Jane',:data=> [3, 2, 1, 3, 4])
    f.series(:type=> 'column',:name=> 'John',:data=> [2, 3, 5, 7, 6])
    f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
    f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
    f.series(:type=> 'spline',:name=> 'Average', :data=> [3, 2.67, 3, 6.33, 3.33])
    f.series(:type=> 'pie',:name=> 'Total tasks for team Agiltec', 
      :data=> [
        {:name=> 'Jane', :y=> 13, :color=> 'red'}, 
        {:name=> 'John', :y=> 23,:color=> 'green'},
        {:name=> 'Joe', :y=> 19,:color=> 'blue'}
      ],
      :center=> [100, 80], :size=> 100, :showInLegend=> false)
    end
  end
end
