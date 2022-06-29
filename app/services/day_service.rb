class DayService < ApplicationService
  def initialize(week, count)
    @week = week
    @count = count
  end 

  def call
    day = @week.days.create(
      title: "#{@week.title}: Day #{@count + 1}",
      active: true
    )
  end
end 