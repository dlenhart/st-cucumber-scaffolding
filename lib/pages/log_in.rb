# frozen_string_literal: true

class LoginPage < BasePage

  text_field(:email_id, name: 'emailid')
  button(:submit, name: 'btnLogin')

  def submit_creds(cred)
    email_id = cred
  end

  def click_submit
    submit.click!
  end
end
