class Person
  attr_reader :user_name, :user_day, :user_month
  # MONTHS = {"January" => 1, "February" => 2, "March" => 3, "April" => 4, "May" => 5, "June" => 6,
  #           "July" => 7, "August" => 8, "September" => 9, "October" => 10, "November" => 11,
  #           "December" => 12}

  def initialize(name, day, month)
    @user_name = name
    @user_day = day.to_s
    @user_month = month
  end

  def birthday_today?
    user_birthday = [@user_day, @user_month]
    today = Time.new.strftime("%d,%B").split(",")
    user_birthday == today
  end

  def message
    if birthday_today?
      "Happy Birthday #{@user_name}!!"
    else
      "#{@user_name}!! #{@user_day} #{@user_month}"
    end
  end


end
