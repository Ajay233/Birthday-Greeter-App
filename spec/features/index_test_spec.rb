feature 'Testing happy birthday message' do
  scenario 'can return Happy Birthday Ajay' do
    day = Time.new.day
    month = Time.new.strftime("%B")
    visit ('/')
    fill_in 'name', with: 'Ajay'
    fill_in 'day', with: day
    select month, from: "month"
    click_button 'Submit'
    expect(page).to have_content "Happy Birthday Ajay!!"
  end
end

feature 'Testing number of days until birthday' do
  scenario 'can return number of days until birthday' do
    day = Time.new.day + 2
    month = Time.new.strftime("%B")
    visit ('/')
    fill_in 'name', with: 'Ajay'
    fill_in 'day', with: day
    select month, from: "month"
    click_button 'Submit'
    expect(page).to have_content "You've got 2 days until your birthday Ajay"
  end
end
