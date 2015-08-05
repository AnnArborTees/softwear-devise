require 'spec_helper'
require 'rails_helper'

describe 'users/new.html.erb', user_spec: true do
  before :each do
    assign(:user, create(:softwear_devise_user))
    render
  end

  it 'should have fields for email and first/last names' do
   # within_form_for SoftwearDevise::User do
     # expect(rendered).to have_field_for :email
     # expect(rendered).to have_field_for :first_name
     # expect(rendered).to have_field_for :last_name
   # end
    expect(rendered).to match "First name"
    expect(rendered).to match "Last name"
    expect(rendered).to match "Email"
  end

  it 'should have password field', pending: "Needs Password + Confirm" do
   # within_form_for SoftwearDevise::User do
   #   expect(rendered).to_not have_field_for :password
   # end
   # expect(rendered).not_to match "Password"
  end
end
