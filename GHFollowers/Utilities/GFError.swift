//
//  GFError.swift
//  GHFollowers
//
//  Created by Saurabh Jaiswal on 29/11/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUserName = "This username created invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case inavlidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "This user is already in your favorites list."
}
