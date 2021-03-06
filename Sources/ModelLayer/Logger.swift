//
//  Logger.swift
//  App
//
//  Created by Stefano Mondino on 17/07/18.
//  Copyright © 2018 Synesthesia. All rights reserved.
//

import Foundation
//import RainbowSwift

public enum LogLevel: Int {
    case verbose = 1
    case warning = 10
    case network = 20
    case error = 100
    case none = 1000
    //currently RainbowSwift is unsupported by XCode logger
    func colorize(string: String) -> String {
        switch self {
        case .verbose : return string
        case .warning : return string
        case .network : return string
        case .error: return string
        default : return string
        }
    }
    fileprivate var symbol: String {
        switch self {
        case .verbose: return "💬"
        case .network: return "🌐"
        case .warning: return "⚠️"
        case .error : return "⛔️"
        default : return ""
        }
    }
}

public final class Logger {
    
    public static var logLevel: LogLevel = .network
    public static func log(_ message: String, level: LogLevel = .error, tag: String? = nil) {
        if (self.logLevel.rawValue > level.rawValue) { return }
        
        let string =
        """
        \([
        [level.symbol, tag].compactMap {$0}.joined(separator: " "),
        level.colorize(string: message)].compactMap { $0 }.joined(separator: ": ")
        )
        """
        print (string)
        
    }
}
