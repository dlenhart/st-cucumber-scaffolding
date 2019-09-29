# frozen_string_literal: true

class BasePage
  include PageObject

  def navigate
    @browser.goto Nenv.url
  end
end
