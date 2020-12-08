# StashProject

#### Overview
Attached below is the Stash demo app. The demo app is written in Swift 5.0 utilizing MVVM and the views are entirely written in SwiftUI, without utilizing Storyboard or Xib files. The app loads achievements.json locally, fetches images via URLs and is displayed in a list view.

#### Structure:
How the app is structed:
	• Model: Struct object that implements Codable. Uses camelCase with JSON snakecase conversion.
	• Service: Class for resource & API endpoint calls.
	• Views: AchievementCardView, List view (Content View).
	• ViewModel: Used by view with property wrapper @StateObject, and when the observed property is changed, the view will automatically update based on changes due to @Published

The ContentView displays the list of achievements. The ContentView uses a @StateObject characterListViewModel, whenever the achievements property inside the achievementsListViewModel changes or updates, using @Published the view is observing the field and automatically updates when the achievements array is updated. 

I am fetching and caching the images using KingFisher library. It is imported using Swift Package Manager (SPM). This is a cleaner approach compared to CocoaPods.


I chose to go this way because SwiftUI is clean simple syntax, reduces compile time, easier to resolve merge conflicts. Testable going with MVVM approach and mockable ViewModels.
With @Published when the property value changes, the view automatically updates!