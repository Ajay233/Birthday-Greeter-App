describe Person do
  let(:person) { Person.new("Ajay", Time.new.day, Time.new.strftime("%B")) }

  describe '#birthday_today?' do
    it "can return true if user input matches today's date" do
      expect(person.birthday_today?).to eq TRUE
    end
  end
end
