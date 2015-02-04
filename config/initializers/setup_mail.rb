ActionMailer::Base.smtp_settings = {
  address:               "smtp.gmail.com",
  port:                  587,
  user_name:             "gebi.roschi@gmail.com",
  password:              "GebiOnline",
  authentication:        "plain",
  enable_starttls_auto:  true
}

