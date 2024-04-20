//
//  Errors.swift
//  SwiftUIChallenge
//
//  Created by Zorin Dmitrii on 11.04.2024.
//

import Foundation

enum CustomError: Error {
    case invalidPath
    case network
    case json
    case value
    case key
}

extension CustomError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
            case .network: return "Что-то пошло не так при попытке загрузить данные. Пожалуйста, проверьте URL и убедитесь, что он написан правильно."
            case .json: return "К сожалению, мы не получили никаких данных от сервера. Возможно, произошла временная ошибка. Попробуйте повторить запрос позже."
            case .value: return "Извините, данные, которые мы получили, не выглядят так, как ожидалось. Пожалуйста, обратитесь к администратору за помощью."
            case .invalidPath: return "Не верный путь, пожалуйста напишите в нашу поддержку."
            case .key: return "Мы не смогли найти данные, которые нам нужны для продолжения. Пожалуйста, обратитесь к администратору для помощи."
        }
    }
}
