# Web Token Gem for simplification of JWT

## Step 1
	gem install webtoken

## Step 2

	 require 'webtoken'
	 
## Step 3
 
   data = WebToken::MakeToken.new( user_id )

    data.web_token  

###  Response
   
    #sample = {"eyJhbGciOiJub25lIn0.eyJkYXRhIjp7InVzZXJpZCI6ImpodiIsImRhdGUiOiIyMDE4LTA1LTI1IiwidGltZSI6IjIwMTgtMDUtMjUgMTI6Mzk6MzIgKzA1MzAifX0."}


## Step 3

    validate_token = WebToken::WebtokenValidate.new

    validate_token.validate( 'your token' )

###    Response
		{"userid" : "userid", date: "date", time: "time"}  #access token valid

		false  #access token invalid
