require "spec_helper"

describe "Sign Up" do
  it "Success" do
    wait_for(menu_button)
    click(menu_button)
    click(sign_in_link)
    click(sign_up_link)

    wait_for(signup_user)
    send_keys(signup_user, Faker::Internet.email)
    send_keys(signup_pass, 'password')
    click(signup_submit)

    wait_for(menu_button)
    click(menu_button)

    expect { locate(sign_out_link) }.to_not raise_exception
  end

  it "Failure" do
    wait_for(menu_button)
    click(menu_button)
    click(sign_in_link)
    click(sign_up_link)

    wait_for(signup_user)
    send_keys(signup_user, 'user@example.com')
    send_keys(signup_pass, 'password')
    click(signup_submit)

    click(menu_button)

    expect { locate(sign_in_link) }.to_not raise_exception
  end
end
