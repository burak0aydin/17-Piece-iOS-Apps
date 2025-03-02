# 01-UIDesignPizzaApp

## Overview
UIDesignPizzaApp focuses on creating a visually appealing and responsive UI for a pizza-themed app. It features a customized navigation bar with specific colors and fonts, dynamic image resizing for various screen resolutions, and multi-language support (English and Turkish), all while supporting dark mode for an optimal user experience.

https://github.com/user-attachments/assets/7fa33a70-2ff4-4c25-8360-a229e82360f3

## Features
- **Custom Navigation Bar:** Styled with a specific background color, custom title font, and dynamic appearance settings.
- **Responsive Layout:** Utilizes stack views and Auto Layout constraints for flexible, adaptive design.
- **Dark Mode Support:** Automatically adjusts UI elements for dark mode.
- **Custom Fonts & Colors:** Integrates Google Fonts and precise hexadecimal color codes for a unique look.
- **Automatic Image Resizing:** Supports 1x, 2x, and 3x images for different device resolutions.
- **Multi-Language Support:** Provides localization for English and Turkish.

## Technologies (Architecture)
- **Swift:** Primary programming language.
- **UIKit:** Framework used to build and customize the UI.
- **Auto Layout & Stack Views:** Employed for creating flexible and adaptive layouts.
- **Dark Mode Integration:** Ensures the UI adapts to the system’s appearance settings.
- **Localization:** Implements multi-language support through localization files.

## Project Structure
- **AppDelegate.swift:** Manages the application lifecycle.
- **SceneDelegate.swift:** Handles window and scene management.
- **ViewController.swift:** Configures the main UI, including navigation bar customization.
- **Contents.txt:** Documents project details such as adding fonts via Google Fonts, using stack views and constraints, dark mode support, application hexadecimal color codes, custom application icon (iconKitchen), importing UI design from Figma, runtime coding of buttons, automatic image resizing (1x, 2x, 3x), and multi-language support.

------------------------------------------------------------------------------------------------------------------------------------------

# 02-WidgetExample

## Overview
WidgetExample, iOS platformunda geliştirilen ve UIKit bileşenlerinin etkileşimli kullanımını sergileyen bir uygulamadır. Uygulama, kullanıcı etkileşimlerine yanıt veren çeşitli UI kontrolleriyle (UILabel, UITextField, UIImageView, UISwitch, UISegmentedControl, UISlider, UIStepper, UIActivityIndicatorView) zenginleştirilmiş bir deneyim sunar.

https://github.com/user-attachments/assets/4903a25d-defb-484e-b574-15b44d897ff2

## Features
- **Interactive Text Update:** Kullanıcının UITextField aracılığıyla girdiği metni, ilgili UILabel’de gösterir.
- **Switch Control:** UISwitch’in durumunu gösteren ve durum değişikliğini etiket üzerinden yansıtan özellik.
- **Segmented Control:** Seçilen segmentin başlığını UILabel üzerinde günceller.
- **Slider & Stepper Controls:** UISlider ve UIStepper ile alınan değerleri etiketlere yansıtarak anlık güncellemeler sağlar.
- **Image Toggle Buttons:** İki ayrı buton aracılığıyla UIImageView’de "happy" ve "sad" görsellerini, farklı tint renkleriyle gösterir.
- **Activity Indicator:** Kullanıcı etkileşimine bağlı olarak UIActivityIndicatorView’ın animasyonunu başlatır ve durdurur.

## Technologies (Architecture)
- **Swift:** Uygulamanın ana programlama dili.
- **UIKit:** Uygulamanın kullanıcı arayüzünü oluşturmak için kullanılan framework.
- **MVC Pattern:** Uygulama mantığı ve UI yönetimi için Model-View-Controller mimarisi kullanılmıştır.

## Project Structure
- **AppDelegate.swift:** Uygulama yaşam döngüsünü yönetir.
- **SceneDelegate.swift:** Uygulama sahnesi ve pencere yönetiminden sorumludur.
- **ViewController.swift:** Ana kullanıcı arayüzü ve etkileşimlerin kodlandığı dosya. Bu dosyada UITextField, UISwitch, UISegmentedControl, UISlider, UIStepper, UIImageView ve UIActivityIndicatorView gibi çeşitli UI kontrollerinin davranışları yer almaktadır.
- **Extensions:** StringProtocol için tanımlanan `firstUppercased` uzantısı ile metinlerde ilk harfi büyük yapma işlemleri desteklenmektedir.

------------------------------------------------------------------------------------------------------------------------------------------

# 03-alertController

## Overview
03-alertController, iOS platformunda geliştirilen ve kullanıcı kayıt sürecinde e-posta ve şifre girişlerinin doğrulamasını gerçekleştiren bir uygulamadır. Uygulama, eksik veya hatalı girişlerde uyarı mesajları göstererek kullanıcıyı bilgilendirir; tüm kontroller doğruysa başarı mesajı sunar.

https://github.com/user-attachments/assets/38e182be-4b61-4b46-8c82-0b14aadb8f26

## Features
- **Input Validation:** E-posta, şifre ve şifre tekrar alanlarının boş veya hatalı olup olmadığını kontrol eder.
- **Alert Presentation:** Gerekli durumlarda, kullanıcıya hata veya başarı mesajları gösterir.
- **User-Friendly Design:** Basit ve anlaşılır uyarı mesajlarıyla kullanıcı deneyimini iyileştirir.

## Technologies (Architecture)
- **Swift:** Uygulamanın temel programlama dili.
- **UIKit:** Kullanıcı arayüzü oluşturma ve yönetme framework'ü.
- **MVC Pattern:** Uygulama mantığı ve UI yönetimi için Model-View-Controller mimarisi benimsenmiştir.

## Project Structure
- **AppDelegate.swift:** Uygulamanın yaşam döngüsünü yönetir.
- **SceneDelegate.swift:** Uygulama sahnesi ve pencere yönetiminden sorumludur.
- **ViewController.swift:** Kullanıcı arayüzü ve giriş doğrulama işlemlerinin kodlandığı dosya; e-posta, şifre ve şifre tekrar alanlarının kontrolü ve uyarı mesajlarının sunulması burada gerçekleştirilir.

------------------------------------------------------------------------------------------------------------------------------------------

# 04-alertExample

## Overview
04-alertExample is an iOS application that demonstrates various alert presentations using UIAlertController. The app showcases the implementation of standard alerts, action sheets, and alerts with text fields, providing a practical guide for handling user interactions and input validation.

https://github.com/user-attachments/assets/d8e7a25f-ca04-47e1-8370-ce5001383f0c

## Features
- **Standard Alert:** Displays an alert with "Okey" and "Close" buttons, logging the selected action.
- **Action Sheet:** Presents an action sheet with "Okey" and "Close" options for a different user experience.
- **Alert with Text Field:** Includes a text field within an alert to capture user input and update a label with the entered data.

## Technologies (Architecture)
- **Swift:** The primary language for building the application.
- **UIKit:** Used for creating and managing the user interface elements.
- **MVC Pattern:** Adopts the Model-View-Controller design pattern for clear separation of concerns.

## Project Structure
- **AppDelegate.swift:** Manages the application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **ViewController.swift:** Contains the implementation of alerts and action sheets along with the logic for capturing and displaying user input.

------------------------------------------------------------------------------------------------------------------------------------------

# 05-calculator

## Overview
05-calculator is an iOS application that performs basic arithmetic operations such as addition, subtraction, multiplication, and division. The app provides a straightforward interface where users can input two numbers and choose an operation to see the result immediately.

https://github.com/user-attachments/assets/8ecf6b41-a74e-4fac-8aa1-a8c86e9d703a

## Features
- **Addition:** Sums two numbers and displays the result.
- **Subtraction:** Calculates the difference between two numbers.
- **Multiplication:** Multiplies two numbers to provide the product.
- **Division:** Divides the first number by the second and shows the quotient.
- **Input Validation:** Checks user input to ensure valid numerical values and displays an error message if the input is invalid.

## Technologies (Architecture)
- **Swift:** The main programming language used for development.
- **UIKit:** Framework for building and managing the user interface.
- **MVC Pattern:** Follows the Model-View-Controller architecture for clear separation of concerns.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles the configuration and management of the app's scenes and windows.
- **ViewController.swift:** Implements the core functionality for arithmetic operations and UI updates based on user input.

------------------------------------------------------------------------------------------------------------------------------------------

# 06-changePages

## Overview
06-changePages is an iOS application that demonstrates navigation between multiple pages along with data passing between view controllers. The app shows how to transition between different screens using segues and navigation controllers, and it leverages a simple data model to transfer information between pages.

https://github.com/user-attachments/assets/3b6a796f-0d5d-4cba-8b1a-069e212400e6

## Features
- **Multi-Page Navigation:** Seamlessly transitions between different pages such as the Main Page, Game Page, and Result Page.
- **Data Passing:** Utilizes a custom data model (`Persons`) to send information (name, age, height, marital status) from the Main Page to the Game Page.
- **Lifecycle Logging:** Demonstrates view controller lifecycle methods (e.g., `viewDidLoad`, `viewWillAppear`, `viewWillDisappear`) with console logging.
- **User Interaction:** Features various buttons that update labels, trigger segues, and close pages, enhancing the interactive experience.

## Technologies (Architecture)
- **Swift:** The primary programming language used for development.
- **UIKit:** Framework used for building and managing the user interface.
- **MVC Pattern:** Implements the Model-View-Controller design pattern to clearly separate data handling, UI, and business logic.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **MainPageVC.swift:** Serves as the landing page; it includes buttons for navigation and demonstrates lifecycle events with console logs.
- **Persons.swift:** Defines the data model for a person, encapsulating attributes such as name, age, height, and marital status, which are used for data passing between pages.
- **GamePageVC.swift:** Receives data from the Main Page, displays the passed information, and offers navigation options to return to the main page or proceed to the result page.
- **ResultPageVC.swift:** Represents the result screen, allowing users to close the page and return to the previous view.

------------------------------------------------------------------------------------------------------------------------------------------

# 07-cityBooklet

## Overview
07-cityBooklet is an iOS application that offers a city booklet experience. It presents a list of cities along with their names and allows users to view detailed information—including the city's region and image—on a separate screen. Additionally, users can remove cities from the list using swipe-to-delete functionality.

https://github.com/user-attachments/assets/932a4a6c-0806-4ec1-a0a2-6ddc2e3b3160

## Features
- **City Listing:** Displays a table view listing the names of various cities.
- **Detail View:** Tapping on a city navigates to a detailed view that shows the city's image, name, and region.
- **Swipe-to-Delete:** Supports deleting cities from the list using standard swipe gestures.
- **Dynamic Data Model:** Uses a custom data model to encapsulate city details for easy management and extension.

## Technologies (Architecture)
- **Swift:** The main programming language for the application.
- **UIKit:** Framework used for constructing and managing the user interface components.
- **MVC Pattern:** Implements the Model-View-Controller architecture to separate data handling, UI, and business logic.

## Project Structure
- **CityDetails.swift:** Defines the `CityDetails` class, which holds information about a city (name, region, and image).
- **ViewController.swift:** Manages the main screen with a table view for listing cities and handles user interactions like selection and deletion.
- **DetailsViewController.swift:** Displays detailed information about the selected city, including its image, name, and region.

------------------------------------------------------------------------------------------------------------------------------------------

# 08-DataTimePicker

## Overview
08-DataTimePicker is an iOS application that demonstrates how to implement date and time selection using UIDatePicker. The app allows users to pick a date and a time via dedicated text fields, providing an intuitive and user-friendly input experience.

https://github.com/user-attachments/assets/911fabcf-4111-45d2-843e-13894a889405

## Features
- **Date Picker:** Displays a wheel-style date picker that formats the selected date as "MM/dd/yyyy" and updates the corresponding text field.
- **Time Picker:** Displays a wheel-style time picker that formats the selected time as "HH:mm" and updates the corresponding text field.
- **Tap to Dismiss:** Implements a tap gesture recognizer to dismiss the pickers when the user taps outside the text fields.
- **Dynamic UI Updates:** Real-time updating of text fields as the user selects a new date or time.

## Technologies (Architecture)
- **Swift:** The primary programming language used for development.
- **UIKit:** The framework used for building and managing the user interface.
- **UIDatePicker:** A control for selecting dates and times.
- **MVC Pattern:** Follows the Model-View-Controller design pattern for organizing code and UI logic.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **ViewController.swift:** Contains the logic for configuring and handling the date and time pickers, updating the text fields with the selected values.

------------------------------------------------------------------------------------------------------------------------------------------

# 09-ımageAndStackView

## Overview
09-ımageAndStackView is an iOS application that demonstrates how to use UIImageView alongside UIStackView to create responsive and visually appealing layouts. The project showcases the effective combination of images and stack views for organizing UI components in a clean and adaptive manner.

https://github.com/user-attachments/assets/d6547368-bd0c-442e-9381-bfc531dccdf2

## Features
- **Image Display:** Utilizes UIImageView to present images within the user interface.
- **Responsive Layout:** Employs UIStackView for arranging multiple UI elements efficiently, ensuring a flexible layout that adapts to various screen sizes and orientations.
- **Clean Design:** Demonstrates best practices in UI design by combining visual elements and organized layouts.

## Technologies (Architecture)
- **Swift:** The primary programming language used for development.
- **UIKit:** Framework for building and managing the application's user interface.
- **UIStackView:** Utilized to create and maintain adaptive, linear layouts.
- **MVC Pattern:** Adheres to the Model-View-Controller design pattern for clear separation of concerns.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **ViewController.swift:** Contains the main view logic where the image display and stack view configuration are implemented. (Additional UI setup is managed through the storyboard.)

------------------------------------------------------------------------------------------------------------------------------------------

# 10-LoyalApp

## Overview
10-LoyalApp is an iOS application designed to simulate a loyalty or membership program interface. The app features a user profile view with segmented navigation to switch between different sections such as Home, Memberships, Memory NFT's, and Rewards. It is built using UIKit and Swift, demonstrating custom UI styling and interactive elements.

https://github.com/user-attachments/assets/d5276909-1690-4811-b4d6-ce596fe084c9

## Features
- **User Profile Display:** Showcases user pictures, name, and a wallet button with custom styling.
- **Segmented Navigation:** Allows switching between different sections of the app (Home, Memberships, Memory NFT's, Rewards) using a segmented control.
- **Memberships List:** Displays available memberships in a table view with custom-designed cells that include membership images, names, and memory counts.
- **Custom UI Styling:** Incorporates shadows, rounded corners, and other visual enhancements for an improved user experience.

## Technologies (Architecture)
- **Swift:** The primary programming language for the app.
- **UIKit:** Framework for building and managing the user interface.
- **MVC Pattern:** Implements a Model-View-Controller architecture for a clean separation of concerns.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **MainPage.swift:** The main view controller that displays the user profile, segmented control, and container views for different sections.
- **memberships.swift:** Manages the memberships section with a table view that lists available memberships.
- **MemoryshipsCell.swift:** Custom table view cell used in the memberships list to display membership details.

------------------------------------------------------------------------------------------------------------------------------------------

# 11-MVVMProject

## Overview
11-MVVMProject is an iOS application that demonstrates the Model-View-ViewModel (MVVM) design pattern integrated with RxSwift for reactive programming. The app serves as a simple calculator performing addition and multiplication, with UI updates that react instantly to user input.

https://github.com/user-attachments/assets/501d1bd7-3ed8-4bf8-9fa1-dced2fa1a203

## Features
- **Reactive UI Updates:** Leverages RxSwift to automatically update the result display when the underlying data changes.
- **Arithmetic Operations:** Supports addition and multiplication of two numbers entered by the user.
- **MVVM Architecture:** Separates the user interface from business logic for cleaner, more maintainable code.
- **User-Friendly Interface:** Provides text fields for input and a label that shows the calculated result in real-time.

## Technologies (Architecture)
- **Swift:** The main programming language used to develop the application.
- **UIKit:** Framework used for building and managing the user interface.
- **RxSwift:** A reactive programming library that handles asynchronous data flows.
- **MVVM Pattern:** Implements a clear separation of concerns between the UI (View), business logic (ViewModel), and data operations (Repository).

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **MainPageViewModel.swift:** Contains the logic for performing arithmetic operations and updating results using reactive streams.
- **Repository.swift:** Implements the core arithmetic operations and feeds the computed results back to the ViewModel.
- **ViewController.swift:** Manages user interactions, captures input, and binds the ViewModel’s output to update the UI accordingly.

------------------------------------------------------------------------------------------------------------------------------------------

# 12-storingSmallData

## Overview
12-storingSmallData is an iOS application that demonstrates how to persistently store and retrieve small amounts of data using UserDefaults. The app provides a simple interface for users to input a note and a time value, save them, and view the saved data upon app launch.

https://github.com/user-attachments/assets/9b0e5081-cef0-4ada-8d21-0f52b5f1cd52

## Features
- **Persistent Data Storage:** Uses UserDefaults to store user-entered note and time data.
- **Data Retrieval:** Automatically retrieves and displays the stored data when the app is launched.
- **Interactive UI:** Features text fields for data input and buttons to save or delete the stored information.
- **Real-Time Feedback:** Updates labels to reflect the current saved note and time, ensuring a user-friendly experience.

## Technologies (Architecture)
- **Swift:** The primary programming language for developing the application.
- **UIKit:** Framework used for building and managing the user interface.
- **UserDefaults:** Utilized for storing small pieces of persistent data.

## Project Structure
- **AppDelegate.swift:** Manages the overall lifecycle of the application.
- **SceneDelegate.swift:** Handles the configuration and management of the app's scenes and windows.
- **ViewController.swift:** Implements the logic for saving, retrieving, and deleting data using UserDefaults, along with managing the user interface components for data entry and display.

------------------------------------------------------------------------------------------------------------------------------------------

# 13-TableView

## Overview
13-TableView is an iOS application that demonstrates the usage of UITableView to display a list of items and navigate to a detail view for additional information. The project showcases core table view functionalities, including populating cells, handling row selection, and implementing swipe-to-delete actions.

https://github.com/user-attachments/assets/5394cdf2-9ed4-4cd8-88f6-e004da3be270

## Features
- **Dynamic List Display:** Presents a list of superhero names in a table view.
- **Detail Navigation:** Selecting a superhero navigates to a detail screen that shows the superhero's name and image.
- **Swipe-to-Delete:** Enables users to delete a superhero from the list using a swipe gesture.
- **Simple Data Handling:** Uses arrays to manage superhero names and corresponding image names for easy data management.

## Technologies (Architecture)
- **Swift:** The primary programming language for the application.
- **UIKit:** Framework used to build and manage the user interface.
- **MVC Pattern:** Implements the Model-View-Controller design pattern for clear separation of concerns.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **ViewController.swift:** Implements the table view, populates the list of superheroes, and manages navigation to the detail view.
- **DetailsViewController.swift:** Displays detailed information (name and image) of the selected superhero.

------------------------------------------------------------------------------------------------------------------------------------------

# 14-Timer

## Overview
14-Timer is an iOS application that demonstrates the use of a Timer to implement a simple countdown feature. When the user taps the start button, the timer starts counting down from a preset value, updating the display every second. Once the countdown reaches zero, the timer stops and the countdown resets.

https://github.com/user-attachments/assets/bca6b8ed-28cb-4efa-99d1-af956035d502

## Features
- **Countdown Functionality:** Initiates a countdown from a preset time value when the start button is tapped.
- **Real-Time Updates:** Updates the countdown label every second to reflect the remaining time.
- **Automatic Reset:** Stops the timer when the countdown reaches zero and resets the time for a new cycle.

## Technologies (Architecture)
- **Swift:** The primary programming language used to develop the application.
- **UIKit:** Framework for building and managing the user interface.
- **Timer:** Utilizes iOS's Timer class to manage the countdown logic.
- **MVC Pattern:** Follows a basic Model-View-Controller architecture to separate UI and logic.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **ViewController.swift:** Implements the countdown timer functionality, including starting the timer, updating the countdown display, and resetting the timer when it reaches zero.

------------------------------------------------------------------------------------------------------------------------------------------

# 15-UITableViewController

## Overview
15-UITableViewController is an iOS application that demonstrates the use of a UITableViewController to create a dynamic, multi-section table view. The project showcases how to structure table view data, handle user interactions such as cell selection and deletion, and present alerts based on user actions.

https://github.com/user-attachments/assets/b19f8ada-2c23-4c13-b322-6a7f9480b8d8

## Features
- **Multi-Section Table View:** Displays data organized in multiple sections.
- **Cell Interaction:** Tapping a cell brings up an alert that shows the selected item's details.
- **Swipe-to-Delete:** Provides an option to delete an item directly from the table view.
- **Dynamic Data Handling:** Updates the table view in real-time based on user actions.

## Technologies (Architecture)
- **Swift:** The primary programming language.
- **UIKit:** Framework for building the user interface.
- **UITableViewController:** Manages the table view and its data source.
- **MVC Pattern:** Follows the Model-View-Controller design pattern for clean separation of concerns.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **InitialTableViewController.swift:** Implements the table view controller, including data source methods, cell configuration, and user interaction handling (e.g., displaying alerts and deleting cells).

------------------------------------------------------------------------------------------------------------------------------------------

# 16-usingTabBar

## Overview
16-usingTabBar is an iOS application that demonstrates how to implement and customize a Tab Bar interface. The app features two main sections—a primary view and a settings view—allowing users to navigate between them seamlessly. The tab bar is enhanced with badge indicators and custom appearance settings to provide a visually appealing and engaging user experience.

https://github.com/user-attachments/assets/d6901e16-a4ae-4596-a1ba-a1d8bb9e1cbe

## Features
- **Tab Bar Navigation:** Offers two main tabs for easy navigation between the primary view and the settings view.
- **Badge Indicators:** Displays badge values on the tab bar items to alert users about new updates or notifications.
- **Custom Appearance:** Utilizes `UITabBarAppearance` to customize background colors, icon colors, title text attributes, and badge colors for both selected and normal states.
- **Responsive Design:** Ensures the tab bar interface adapts well across various iOS devices.

## Technologies (Architecture)
- **Swift:** The primary programming language used to build the application.
- **UIKit:** Framework for constructing and managing the user interface.
- **UITabBarController:** Manages the tab-based navigation system.
- **UITabBarAppearance:** Provides advanced customization of the tab bar's appearance.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles the configuration and management of the app’s scenes and windows.
- **ViewController.swift:** Implements the main view controller, sets badge values for the tab items, and customizes the tab bar's appearance.
- **SettingsVC.swift:** Represents the settings screen within the tab bar interface.

------------------------------------------------------------------------------------------------------------------------------------------

# 17-viewController

## Overview
17-viewController is an iOS application that demonstrates view controller lifecycle events and data passing between view controllers using segues. The app consists of two screens: the first collects user input (a password) and logs lifecycle events, while the second displays the passed password.

https://github.com/user-attachments/assets/43bb64d7-6c87-49c8-843d-1a99cb612186

## Features
- **Lifecycle Logging:** Logs messages during key lifecycle events (viewWillAppear, viewDidAppear, viewWillDisappear, viewDidDisappear) to illustrate when these methods are called.
- **Data Passing:** Captures user input from a text field and passes the entered password to a second view controller via a segue.
- **Simple UI Interaction:** Utilizes basic UI components such as UILabels and UITextFields for data input and display.

## Technologies (Architecture)
- **Swift:** The primary programming language used to develop the application.
- **UIKit:** Framework for building and managing the user interface.
- **MVC Pattern:** Implements the Model-View-Controller design pattern to clearly separate UI logic from data handling.

## Project Structure
- **AppDelegate.swift:** Manages the overall application lifecycle.
- **SceneDelegate.swift:** Handles scene and window management.
- **ViewController.swift:** The main view controller that collects the user's password, logs lifecycle events, and triggers the segue.
- **ViewController2.swift:** Receives the password from the main view controller and displays it.

------------------------------------------------------------------------------------------------------------------------------------------

## Setup
1. Clone the repository:
   ```bash
   git clone <repository-url>

2. Open in Xcode:
- Open the .xcodeproj file in Xcode.

3. Build & Run:
- Build the project and run it on an iOS simulator or a physical device.
