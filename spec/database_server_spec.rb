require 'spec_helper'

feature 'Can access the given port' do

  it 'access port 3000' do
    visit 'http://localhost:3000/'
    expect(page).to have_content('server is running')
  end
end

feature 'Server stores the variables' do
  before do
    visit '/'
    fill_in 'key', with: 'somekey'
    fill_in 'value', with: 'somevalue'
    click_button 'Submit'
  end
  it 'can set the variables passed' do
    expect(page).to have_content "somekey : somevalue"
  end
  it 'can return the key' do
    visit '/'
    fill_in 'key_name', with: 'somekey'
    click_button 'Find value'
    expect(page).to have_content('The key of somekey returns: somevalue')
  end
end
