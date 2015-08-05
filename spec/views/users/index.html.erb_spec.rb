require 'spec_helper'
require 'rails_helper'

describe 'users/index.html.erb', user_spec: true do
  before :each do
    assign(:users, [
      create(:softwear_devise_user, 
        first_name: 'first1', last_name: 'last1', 
        email: 'test1@example.com'),
      create(:softwear_devise_user, 
        first_name: 'first2', last_name: 'last2',
        email: 'test2@example.com')
    ])
  end

  it 'displays the first_name and last_name of all users' do
    render
    expect(rendered).to match 'first1'
    expect(rendered).to match 'first2'
  end

  it 'displays the emails of all users' do
    render
    expect(rendered).to match 'test1@example.com'
    expect(rendered).to match 'test2@example.com'
  end

  it 'has a "new user" button' do
    render
    expect(rendered).to match "/users/new"
  end

  it 'has an edit button for each user' do
    render
    expect(rendered).to match '/users/1/edit'
    expect(rendered).to match '/users/2/edit'
  end

  it 'has a delete button for each user' do
    render
    expect(rendered).to match 'a[data-method=delete]'
  end
end
