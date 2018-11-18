MONTHS = {"January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6,
          "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11,
          "December" => 12}

SECONDS_IN_A_DAY = 86400

class Person
  attr_reader :user_name, :user_day, :user_month, :user_birthday

  def initialize(name, day, month)
    @user_name = name
    @user_day = day.to_s
    @user_month = month
    @user_birthday = Time.mktime(Time.now.year, MONTHS[@user_month], @user_day)
  end

  def birthday_today?
    user_birthday = [@user_day, @user_month]
    user_birthday == Time.now.strftime("%d,%B").split(",")
  end

  def days_to_birthday
    if @user_birthday > Time.now && @user_birthday < end_of_year
      ((@user_birthday - Time.now) / SECONDS_IN_A_DAY).ceil
    else
      birthday = Time.mktime(Time.now.year+1, MONTHS[@user_month], @user_day)
      ((birthday - Time.now) / SECONDS_IN_A_DAY).ceil
    end
  end

  def end_of_year
    Time.mktime(Time.now.year, 12, 31)
  end

  def message
    if birthday_today?
      "Happy Birthday #{@user_name}!!"
    else
      "You've got #{days_to_birthday} days until your birthday #{@user_name}"
    end
  end

end
