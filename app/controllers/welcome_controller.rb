class WelcomeController < ApplicationController
  def home
    some_value = false

    if some_value
      @message = "Welome to my homepage!"
    else 
      @message = "This is false. Have a nice day"
    end

    logger.debug @message
  end

  def features
  end

  def about
  end

  def contact
  end
end
