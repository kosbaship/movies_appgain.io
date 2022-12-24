# movies_appgain_io

##Mobile Dev Engineer Test Task   APPGAIN.io

Design an app to deliver the flowing requirements for A flutter or Native  project (depending on the job requirements )  that work on both platform (Android, IOS):
·   	Display Splash screen
·   	Display a list of movies
·   	Display a movie details page that can be opened from a movie item or a deep link
·   	Make a deep-link to open your app, also to open the detail screen for a specific movie
o   Ex: movieapptask://open, movieapptask://details_screen/movie_id
o   Use Native Deep links and don’t use Firebase or any other plugins  
·   	Add Push Notification feature using Firebase Cloud notification
·   	Log Movies API headers, responses only in debug mode
·   	Log messages when your deep link opened only in debug mode

·   	Assets
o   https://developers.themoviedb.org/3/movies/get-popular-movies
o   https://developers.themoviedb.org/3/movies/get-movie-details
o   https://www.themoviedb.org/faq/account
o   https://developers.themoviedb.org/3/getting-started/introduction


Task submission
·   	Send your GitHub project
·   	Send Examples for deep links
·   	Send Release APK, debug APK
·   	Add access to sdk@appgain.io  to your firebase console project
·   	Please write clean code and use expressive method names
Deadline: 4  days

## API Key (v3 auth)
## 622100ab57409eb1136e8113fc8c10ea

## Example API Request
## https://api.themoviedb.org/3/movie/550?api_key=622100ab57409eb1136e8113fc8c10ea

## API Read Access Token (v4 auth)
## eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MjIxMDBhYjU3NDA5ZWIxMTM2ZTgxMTNmYzhjMTBlYSIsInN1YiI6IjYzYTZlMjczZDdkY2QyMDBkNTgzN2U2NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Ejlk6F5-qHWTC5xNAN-uP9509fYpCpD_GHKJZIcbO_s


## build 
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs