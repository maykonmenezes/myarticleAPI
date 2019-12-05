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

**GET** `api/v1/articles/` to retrieve all registered articles.

**GET** `api/v1/articles/{id}` to retrieve a specific article.

**POST** `api/v1/articles/` to register a new article.
```
{
  "title": "The Line of Beauty",
  "body": "Delectus aperiam voluptatem et.",
}
```

* title - Title of the article.
* body - Body of the article.

**UPDATE** `api/v1/articles/{id}` to update a specific article.
```
{
  "id": "1"
  "title": "The Line of Beauty",
  "body": "Delectus aperiam voluptatem et.",
}
```

**DELETE** `api/v1/articles/{id}` to delete a specific article.


## Running Tests

You can run some automated tests to check the functionalities by running the command below:

    bundle exec rspec spec
