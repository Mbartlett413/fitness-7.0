class ProgramService < ApplicationService
    def initialize(program_id, num_weeks,days_per_week)
        @program_id = program_id
        @num_weeks = num_weeks
        @days_per_week = days_per_week
    end 

    def call
      # R&D one service to create week or day. Same format for both.
      program = Program.find(@program_id)
      count = 0
      while count < @num_weeks
       week = WeekService.call(program, count)
       count += 1

       day_count = 0
         while day_count < @days_per_week
           DayService.call(week, day_count)
           day_count += 1
         end
      end 
    end
end 