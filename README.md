# MyArticle (REST API)


> Version: 1.0


## Description
A REST API of fake articles


## Features

- **Create article**
- **Show article**
- **Destroy article**
- **Update article**


## Set up the application
TODO: Instructions here
## Routes

### Articles

**GET** `/articles/` to retrieve all registered articles.

**GET** `/articles/{id}` to retrieve a specific article.

**POST** `/articles/` to register a new article.
```
{
  "title": "The Line of Beauty",
  "body": "Delectus aperiam voluptatem et.",
}
```

* title - Title of the article.
* body - Body of the article.


## Running Tests

You can run some automated tests to check the functionalities by running the command below:

    bundle exec rspec spec
