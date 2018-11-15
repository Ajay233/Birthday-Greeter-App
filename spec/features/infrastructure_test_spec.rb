
feature 'Title testing' do
  scenario 'can run app and page contais heading' do
    visit ('/')
    expect(page).to have_content 'Hello there!!'
  end
end

feature 'Testing name input' do
  scenario 'can run app, enter name and name will be returned' do
    visit ('/')
    fill_in 'name', with: 'Ajay'
    click_button 'Submit'
    expect(page).to have_content 'Ajay!!'
  end
end

feature 'Testing name inout' do
  scenario 'can run app enter name and name will be returned' do
    visit ('/')
    fill_in 'name', with: 'Ajay'
    fill_in 'day', with: 23
    select 'April', from: "month"
    click_button 'Submit'
    expect(page).to have_content 'Ajay!! 23 April'
  end
end
