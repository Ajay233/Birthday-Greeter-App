describe Person do
  let(:person) { Person.new("Ajay", Time.new.day, Time.new.strftime("%B")) }
  let(:person2) { Person.new("Ajay", Time.new.day+2, Time.new.strftime("%B")) }

  describe '#birthday_today?' do
    it "can return true if user input matches today's date" do
      expect(person.birthday_today?).to eq TRUE
    end
  end

  describe '#days_to_birthday' do
    it "can return correct number of days if b.day is in the current year" do
      expect(person2.days_to_birthday).to eq 2
    end
  end

  describe '#message' do
    it "can return Happy Birthday if it's the user's birthday" do
      expect(person.message).to eq "Happy Birthday Ajay!!"
    end

    it "can return the number of days to the users birthday" do
      expect(person2.message).to eq "You've got 2 days until your birthday Ajay"
    end

  end
end
