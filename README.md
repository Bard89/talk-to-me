# Talk-to-me
Vision -> Rails app that should serve as an alternative to [Speechify](https://speechify.com/). Reads text / pdf / link and plays it back. Also supports mp3 download (for long texts).

## Instructions
### Run locally
#### Setup

Before running the project, make sure you have Ruby, Rails, and Node.js installed. This project uses Tailwind CSS, which requires Node.js for installation and updates.

To start the project, run these commands:

1. `gem install bundler` - Installs Bundler to manage Ruby gems.
2. `bundle install` - Installs all the Ruby gems required by the project.
3. `yarn install` - Installs all necessary Node.js packages, including Tailwind CSS.
4. `rails db:create` - Creates the database.
5. `rails db:migrate` - Runs database migrations.
6. `rails db:seed` - Seeds the database with initial data.

#### Running the Development Server
To properly use Tailwind CSS in development, you need to start two processes:

1. `bundle exec rails tailwindcss:watch` - Starts the Tailwind CLI to watch for changes in your CSS and rebuilds the styles. This is necessary for seeing style changes in real-time during development.
2. `rails s` - Starts the Rails server.

#### Troubleshooting
If you encounter issues where styles are not being applied, ensure the Tailwind CLI is actively watching your files. In some cases, you may need to restart the Tailwind process or clear your browser cache.
