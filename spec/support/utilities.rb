def valid_signin(user, options={})
  if options[:no_capybara]
    remember_token = User.new_token
    cookies[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
  else
    visit signin_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end

def fake_video_with_waza_format(options={})
  options.reverse_merge!(visible: true,
                         primary: true,
                         for_demo: false)

  video = FactoryGirl.create(:video,
        visible: options[:visible],
        primary: options[:primary],
        for_demo: options[:for_demo])

  wf = fake_waza_format
  wf.videos << video
  video
end

def fake_waza_format(options={})
  options.reverse_merge!(format: FactoryGirl.create(:format),
                         rank: FactoryGirl.create(:rank))

  FactoryGirl.create(:waza_format,
                     waza: fake_waza,
                     format: options[:format],
                     rank: options[:rank])
end

def fake_waza
  FactoryGirl.create(:waza,
                     technique: FactoryGirl.create(:technique))
end

#Michael Hartl. Ruby on Rails Tutorial
RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end
