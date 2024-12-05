Blog with Authentication in Ruby on Rails

Description
A blog built with Ruby on Rails, implementing user authentication, content posting, and dynamic comments using Action Cable. This project was developed as part of a selection process.

Installation
Requirements
Ruby 3.3.6
Rails 8.x
Node.js and Yarn (for assets)
SQLite or PostgreSQL (depending on your environment setup)
Git (optional, for version control)

Installation Steps
1. Clone this repository:
git clone https://github.com/your-username/blog-rails.git
cd blog-rails
2. Install dependencies:
bundle install
yarn install
3. Set up the database:
rails db:setup
4. Start the server:
rails server
5. Access the system at http://localhost:3000.

Features
Basic Features
User sign-up, login, and logout with Devise.
Listing of blog posts.
Creation, editing, and deletion of posts.
Dynamic comments using Action Cable for real-time updates.
Access restrictions: only authenticated users can create, edit, or delete posts and comments.
Additional Improvements
Interface translated into Portuguese (I18n).
Friendly error messages.
Responsive layout.

Project Structure
Controllers: Manage user actions and business logic.
Models: Contain business rules and database interactions.
Views: Present information to the user.
Channels: Used by Action Cable for real-time updates.

Routes
Main Routes
GET /posts -> List posts
POST /posts -> Create a new post
GET /posts/:id -> Show post details
PATCH /posts/:id -> Update a post
DELETE /posts/:id -> Delete a post
POST /posts/:post_id/comments -> Create a comment
DELETE /posts/:post_id/comments/:id -> Delete a comment
GET /users/sign_in -> Login
GET /users/sign_up -> Register
DELETE /users/sign_out -> Logout

Use rails routes for more details.

Tests
Run the tests (if implemented) with the following command:
rails test

Known Issues
Input validation: Could be more robust.
Design: Still not fully styled.

Credits
Developed by: Gabriel Rodrigues
Email: gabriel.rfroes@gmail.com
GitHub: https://github.com/GRFroes

Future Improvements
Implementation of automated tests to ensure code quality.
Improvement in the interface design.

References
Official Rails Documentation
Devise GitHub
Action Cable
