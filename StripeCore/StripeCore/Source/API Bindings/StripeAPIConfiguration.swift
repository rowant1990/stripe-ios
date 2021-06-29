//
//  StripeAPIConfiguration.swift
//  StripeCore
//
//  Created by Mel Ludowise on 6/22/21.
//

import Foundation

/// Shared configurations across all Stripe frameworks.
@_spi(STP) public struct StripeAPIConfiguration {

    public static let sharedUrlSessionConfiguration = URLSessionConfiguration.default

}
