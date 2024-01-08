# Services Folder

This folder is designated for services responsible for calling API endpoints related to Flutter pages. Follow the guidelines below when creating a service for a specific page.

## Naming Convention

Name your service using the following convention: `PageNameService`.

For example, if you are creating a service for a page named "HomePage," the service should be named `HomePageService`.

## Service Structure

Ensure that your service includes methods to call the necessary API endpoints for the associated page. Clearly document the purpose of each method, expected input parameters, and the format of the returned data.

```dart
// Example for HomePageService

class HomePageService {
  // Method to fetch data from the API
  Future<Map<String, dynamic>> fetchData() async {
    // Implement the API call logic
    // ...

    // Return the API response
    return {'data': 'example'};
  }

  // Method to send user input to the API
  Future<void> sendData(String userInput) async {
    // Implement the API call logic with user input
    // ...
  }

  // Add more methods as needed for different API interactions
}
