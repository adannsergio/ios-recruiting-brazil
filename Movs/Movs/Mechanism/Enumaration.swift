//
//  Enumaration.swift
//  Movs
//
//  Created by Adann Simões on 14/11/18.
//  Copyright © 2018 SAS. All rights reserved.
//

import Foundation

enum Behavior {
    case PopularMovies,
    EmptySearch,
    GenericError,
    LoadingView
}

enum APIRoute: String {
    case Base = "https://api.themoviedb.org/3/"
    case PopularMovie = "movie/popular"
    case Genre = "genre/movie/list"
}

enum ErrorInformation: String, Error {
    case InvalidFormat = "Formato Inválido"
}

enum APIKey: String {
    case Key = "a6d13c5f45d8dfa6cf3ff4334863c9a1"
}

enum Language: String {
    case Portuguese = "pt-BR"
}
