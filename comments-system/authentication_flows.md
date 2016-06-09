Flow for login:

1. A user visits the homepage (not logged in), and sees a login link
2. Clicking the link will display a login form (new page)
3. Submitting the form, will log the user in, and take them back to the homepage and say hi. (see a logout link)

GET "/session/new"  // the login form
POST "/session"     // the controller to handle the login form submission
DELETE "/session"   // the controller to handle logout

GET "/login"
POST "/login"
GET "/logout"

Flow for register:

1. 1. A user visits the homepage (not logged in)
2. Clicks the register link
3. fills in a form
4. is registered and taken to the login page

