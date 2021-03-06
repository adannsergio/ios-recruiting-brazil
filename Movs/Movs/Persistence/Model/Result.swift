//
//  Results.swift
//  Movs
//
//  Created by Adann Simões on 16/11/18.
//  Copyright © 2018 SAS. All rights reserved.
//

import Foundation

struct Result {
    let voteCount: Int?
    let id: Int?
    let video: Bool?
    let voteAverage: Double?
    let title: String?
    let popularity: Double?
    let posterPath: String?
    let originalLanguage: String?
    let originalTitle: String?
    let genres: [Int]?
    let backdropPath: String?
    let adult: Bool?
    let overview: String?
    let releaseDate: Date?
}

extension Result: Codable {
	enum CodingKeys: String, CodingKey {
		case voteCount = "vote_count"
		case id = "id"
		case video = "video"
		case voteAverage = "vote_average"
		case title = "title"
		case popularity = "popularity"
		case posterPath = "poster_path"
		case originalLanguage = "original_language"
		case originalTitle = "original_title"
		case genres = "genre_ids"
		case backdropPath = "backdrop_path"
		case adult = "adult"
		case overview = "overview"
		case releaseDate = "release_date"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		voteCount = try values.decodeIfPresent(Int.self, forKey: .voteCount)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		video = try values.decodeIfPresent(Bool.self, forKey: .video)
		voteAverage = try values.decodeIfPresent(Double.self, forKey: .voteAverage)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		popularity = try values.decodeIfPresent(Double.self, forKey: .popularity)
        posterPath = try values.decodeIfPresent(String.self, forKey: .posterPath)
		originalLanguage = try values.decodeIfPresent(String.self, forKey: .originalLanguage)
		originalTitle = try values.decodeIfPresent(String.self, forKey: .originalTitle)
		genres = try values.decodeIfPresent([Int].self, forKey: .genres)
        backdropPath = try values.decodeIfPresent(String.self, forKey: .backdropPath)
		adult = try values.decodeIfPresent(Bool.self, forKey: .adult)
		overview = try values.decodeIfPresent(String.self, forKey: .overview)
        
		let releaseDateString = try values.decodeIfPresent(String.self, forKey: .releaseDate)
        releaseDate = releaseDateString?.dateISO8601()
        
	}

}
