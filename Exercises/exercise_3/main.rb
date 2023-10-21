class Student

  attr_accessor :schedule, :MAX_COURSES

  def initialize(schedule)
    @schedule = schedule
    @MAX_COURSES = 5
  end

  def remove_from_schedule(course, quarter_id)
    @schedule.remove_course_from_quarter(quarter_id, course)
  end

  def add_to_schedule(course, quarter_id)
    @schedule.add_course_to_quarter(quarter_id, course)
  end

end


class Schedule

  attr_accessor :quarter

  def initialize
    @quarter = [Quarter.new, Quarter.new, Quarter.new, Quarter.new]
  end

  def add_course_to_quarter(quarter_id, course)
    @quarter[quarter_id].add_course(course)
  end

  def remove_course_from_quarter(quarter_id, course)
    @quarter[quarter_id].remove_course(course)
  end

end


class Quarter

  attr_accessor :courses

  def initialize
    @courses = [Course.new, Course.new]
    @MAX_COURSES = 5
  end

  def add_course(course)
    if len(courses) < @MAX_COURSES
      @courses.append(course)
    end
  end

  def remove_course(course)
    @courses.delete(course)
  end

  # Probably has other functions that do cool things
end

class Course
  # Imagine so many amazing functions and variables
end