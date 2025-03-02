# UIDesignPizzaApp

UIDesignPizzaApp is an iOS application that demonstrates advanced UI customization for a pizza-themed design. It leverages custom fonts, stack views, Auto Layout constraints, dark mode support, and localization to deliver a polished, modern user interface inspired by Figma designs.

## Overview
UIDesignPizzaApp focuses on creating a visually appealing and responsive UI for a pizza-themed app. It features a customized navigation bar with specific colors and fonts, dynamic image resizing for various screen resolutions, and multi-language support (English and Turkish), all while supporting dark mode for an optimal user experience.

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

# WidgetExample

## Overview
WidgetExample, iOS platformunda geliştirilen ve UIKit bileşenlerinin etkileşimli kullanımını sergileyen bir uygulamadır. Uygulama, kullanıcı etkileşimlerine yanıt veren çeşitli UI kontrolleriyle (UILabel, UITextField, UIImageView, UISwitch, UISegmentedControl, UISlider, UIStepper, UIActivityIndicatorView) zenginleştirilmiş bir deneyim sunar.

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

