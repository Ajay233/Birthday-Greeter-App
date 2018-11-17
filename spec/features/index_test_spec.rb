feature 'Testing name input' do
  scenario 'can run app, enter name and name will be returned' do
    visit ('/')
    fill_in 'name', with: 'Ajay'
    click_button 'Submit'
    expect(page).to have_content 'Ajay!!'
  end
end

feature 'Testing day and month input' do
  scenario 'can run app enter name and name will be returned' do
    visit ('/')
    fill_in 'name', with: 'Ajay'
    fill_in 'day', with: 23
    select 'April', from: "month"
    click_button 'Submit'
    expect(page).to have_content 'Ajay!! 23 April'
  end
end

feature 'Testing day and month input' do
  scenario 'can return day and month along with name' do
    visit ('/')
    fill_in 'name', with: 'Ajay'
    fill_in 'day', with: 23
    select 'April', from: "month"
    click_button 'Submit'
    expect(page).to have_content 'Ajay!! 23 April'
  end

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


end
