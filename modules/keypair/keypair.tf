resource "aws_key_pair" "webapp-key" {
  key_name = var.keyname
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI9UaXMlDp8UXknpxkj2DDGcBk9Q06I4LPMghD2RON+FG2CGEnksye5UB13XXrXXKPknbVmedZYSONT+jTDSAF7GxlSIN/R7it10JX9xDWAXx/STMqOAe4neBfnHnBSs577QMDNKe6zmbkXvOQr8cmwIExjrxJ16LzspyseBwpDJ+DS7tXsKYDaNcic+SdXcKJIAXRZmnsKYnsKE5yw2jLpXHgeGtsTPpyi6AlpsRo8gC8c5ujAINweUrikBZwRCEc4eK+/nZSMr2RLbWtdNZaqFwBSk+SfqhdOhn+OfxVBdk7AcglU/MeRpKxESDyhlwPx4ty9NBASkoDhPkyQKCC3VS45NQhmbIjQMblI6ToBb4U+irHSWTS2Hx21IJrSXe0iM2mOjiq3Zi0WFTVN2MkmGA+Kn6/597nfNmDK/FSu4XBpzZ2Z6lpV0MYwwaIcgRgvperadt6aBawAbe903LpngptYZwcbKL9wFaYrcAzdchQ28RUBTwHOyAbrDmRA8Jj9f7mvEW9xk/KogESvMO+j4R/brN19d2S4kAo6lGSB6s+jidjgqTuvReA9vBkzfRZa6+kca8d9o+sCb34OQKsLghB9iKaRMyXj4ChbyAI5ztokZr1JYYH5cmKlhS/liRDq6tRmIRhyBpmwXyVE6nK+TzzMnwLRKjLuk9NyYDqNQ== jaggu199@gmail.com"
  public_key = var.publickey
#   tags = {
#     #Name = "webapp-key"
#   }
# }
