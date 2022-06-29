class WeekService < ApplicationService
  def initialize(program, count)
    @program = program
    @count = count
  end

  def call
    @program.weeks.create(
      title: "#{@program.title}: Week #{@count + 1}",
      active: true
    )
  end
end
