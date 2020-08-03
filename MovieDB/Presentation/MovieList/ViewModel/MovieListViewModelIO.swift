//
//  MovieListViewModelIO.swift
//  MovieDB
//
//  Created by William on 03/08/20.
//  Copyright © 2020 William. All rights reserved.
//

import Foundation

protocol MovieListViewModelInput: class {}

protocol MovieListViewModelOutput: class {}

protocol MovieListViewModel: MovieListViewModelInput, MovieListViewModelOutput {}
