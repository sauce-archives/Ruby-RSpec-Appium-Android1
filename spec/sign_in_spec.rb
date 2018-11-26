require "spec_helper"

describe "Sign In" do
  it "Success" do
    wait_for(menu_button)
    click(menu_button)
    click(sign_in_link)

    wait_for(signin_user)
    send_keys(signin_user, 'user@example.com')
    send_keys(signin_pass, 'password')
    click(signin_submit)

    wait_for(menu_button)
    click(menu_button)

    expect { locate(sign_out_link) }.to_not raise_exception
  end

  it "Failure" do
    wait_for(menu_button)
    click(menu_button)
    click(sign_in_link)

    wait_for(signin_user)
    send_keys(signin_user, Faker::Internet.email)
    send_keys(signin_pass, 'password')
    click(signin_submit)

    click(menu_button)
    expect { locate(sign_in_link) }.to_not raise_exception
  end
end
