# Models Folder

This folder is dedicated to storing models that control inputs for Flutter pages. Follow the guidelines below when creating a model for a specific page.

## Naming Convention

Name your model using the following convention: `PageNameModel`.

For example, if you are creating a model for a page named "HomePage," the model should be named `HomePageModel`.

## Model Structure

Ensure that your model includes necessary attributes to control inputs for the associated page. This could include variables for form fields, validation flags, or any other input-related properties.

```dart
// Example for HomePageModel

class HomePageModel {
  String username = '';
  String password = '';
  bool isUsernameValid = false;
  bool isPasswordValid = false;
  // Add more attributes as needed

  // Print function to display object representation
  void printModel() {
    print('HomePageModel:');
    print('  Username: $username');
    print('  Password: $password');
    print('  IsUsernameValid: $isUsernameValid');
    print('  IsPasswordValid: $isPasswordValid');
    // Print additional attributes
  }
}
