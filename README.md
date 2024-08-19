# Turbo Rails Demo

This repository showcases the power of Rails with Turbo and Morphing to achieve a Single Page Application (SPA) feel without writing any JavaScript.

## Overview

This demo application demonstrates how to utilize Rails' Turbo and Morphing features to create a smooth, fast user experience typically associated with SPAs, while leveraging the simplicity and convention of Rails.

## Features

- SPA-like navigation without page reloads
- Real-time updates using Turbo Streams
- Smooth transitions with Turbo Morphing
- All features implemented without custom JavaScript

## Setup

1. Clone the repository:
  - `git clone https://github.com/telljo/turbo-demo.git`
  - `cd turbo-demo`
2. Install dependencies:
  - `bundle install`
3. Set up the database:
  - `rails db:create db:migrate`
4. Start the Rails server:
  - `bin/dev`
5. Visit `http://localhost:3000` in your browser to see the demo in action.

## Usage

The main branch showcases various features such as turbo streams, turbo frames, turbo moprhing etc. If you want to see a basic version which functions like a regular rails app with the added feature of turbo morphing then checkout the branch `basic-version`

## Technologies Used

- Ruby on Rails
- Turbo
- Stimulus (if used)
- [Any other relevant technologies]

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Additional Resources

- [Turbo Rails Documentation](https://github.com/hotwired/turbo-rails)
- [Hotwire](https://hotwired.dev/)
- [Rails Guides](https://guides.rubyonrails.org/)