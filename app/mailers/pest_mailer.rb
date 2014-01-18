class PestMailer < ActionMailer::Base
  default from: "agripakmailer@gmail.com"

  def warn(user, count)
  	@count = count
  	mail(:to => "#{user.name} <#{user.email}>", :subject => "The land is too damn dry!!!") do |format|
  		format.text { render "/pest_mailer/pest_text" }
  	end
  end
end
