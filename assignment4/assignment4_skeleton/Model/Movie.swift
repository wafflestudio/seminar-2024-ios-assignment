import Foundation

struct Movie: Codable {
    let id: Int
    let posterPath: String
    let title: String
    let overview: String
    let reviewCount: Int
    let rating: Double
    // TODO: Add variables if needed
}

struct MovieDto: Decodable {
    let id: Int
    let title: String
    let overview: String
    let poster_path: String?
    let release_date: String
    let vote_count: Int
    let vote_average: Double
}

struct MovieDetailDto: Decodable {
    // TODO: Implement if needed
}

struct MovieListResponseDto: Decodable {
    let page: Int
    let results: [MovieDto]
    let total_pages: Int
    let total_results: Int
}

struct GenreDto: Codable {
    let id: Int
    let name: String
}

// TODO: Add custom types if needed
