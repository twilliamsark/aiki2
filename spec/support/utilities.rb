def valid_signin(user, options={})
  if options[:no_capybara]
    remember_token = User.new_remember_token
    cookies[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
  else
    visit signin_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end

def fake_video_with_applied_technique(options={})
  options.reverse_merge!(visible: true,
                         primary: true,
                         for_demo: false,
                         format: 'Tiado')

  FactoryGirl.create(:video,
        visible: options[:visible],
        primary: options[:primary],
        for_demo: options[:for_demo],
        applied_technique: fake_applied_technique(options))
end

def fake_applied_technique(options={})
  options.reverse_merge!(format: 'Tiado')

  FactoryGirl.create(:applied_technique,
                     technique: FactoryGirl.create(:technique),
                     format: FactoryGirl.create(:format, name: options[:format]),
                     rank: FactoryGirl.create(:rank))
end

#Michael Hartl. Ruby on Rails Tutorial
RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end