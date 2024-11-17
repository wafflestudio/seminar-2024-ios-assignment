import Foundation

struct NetworkConfiguration {
    static let apiKey: String = Bundle.main.infoDictionary?["API_KEY"] as! String
    static let accessToken: String = Bundle.main.infoDictionary?["ACCESS_TOKEN"] as! String
    static let baseURL = "https://api.themoviedb.org/3"
    static let imageBaseURL = "https://image.tmdb.org/t/p/original"
}
