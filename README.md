# github_issues: An app to serve github users

A simple project that builds upon the original [Github Issues App](https://github.com/stivo-m/github_issues_app).

### Rationale:

The rationale for doing this was to somewhat document my learning progress. With the initial [Github Issues App](https://github.com/stivo-m/github_issues_app), I had limited knowledge about various flutter state management techniques, folder structures, and architectural design.

This redo of the app reflects upon what I have learned in a few months.

### Architecture

Having read the book [The Pragmatic Programmer: From Journeyman to Master - Andrew Hunt & David Thomas](https://www.amazon.com/Pragmatic-Programmer-Journeyman-Master/dp/020161622X), I decided to utilize the **Domain Driven Design (DDD)** architecture within this flutter application. This serves the basis for having reusable code, with most parts of the software following the **SOLID** principles.

### Technologies

Other than Flutter and Dart, I have utilized Redux (_Specifically Async redux_) to properly manage the application's state. The original approach was to use basic Redux, which was somewhat difficult. Firebase is used, along with Github OAuth authentication methods to provide access to github repositories in the application.

### Screenshots

![Screenshot_1634978026](https://user-images.githubusercontent.com/52053291/138549306-cf9c90e2-027b-4711-b975-587a16582895.png)
