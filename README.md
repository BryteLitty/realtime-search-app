# Real-Time Search Analytics

This project is a real-time search analytics application built with Ruby on Rails and vanilla Javascript. It allows users to perform searches, and the system records and displays search queries in real-time. 

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Make sure you have the following installed on your machine:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#installing-rails)

### Installing

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/RealTimeSearchAnalytics.git
    ```

2. Change into the project directory:

    ```bash
    cd RealTimeSearchAnalytics
    ```

3. Install dependencies:

    ```bash
    bundle install
    ```

4. Set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

5. Install Redis and start the server:

    ```bash
    # Example for Linux
    sudo apt-get install redis-server
    redis-server
    ```

### Running the Application

Start the Rails server:

```bash
rails server
