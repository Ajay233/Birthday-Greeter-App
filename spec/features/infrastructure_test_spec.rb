
feature 'Title testing' do
  scenario 'can run app and page contais heading' do
    visit ('/')
    expect(page).to have_content 'Hello there!!'
  end
end
