//
//  STPAnalyticsProtocol.swift
//  StripeiOS
//
//  Created by Mel Ludowise on 5/26/21.
//  Copyright © 2021 Stripe, Inc. All rights reserved.
//

import Foundation
@_spi(STP) import StripeCore

/**
 Internal `StripeCore` implementation of `STPAnalyticsProtocolInternal`.
 Swift doesn't allow public classes to conform to SPI-public protocols, so
 we've created an internal protocol wrapper to make the compiler happy.
 */
protocol STPAnalyticsProtocol: STPAnalyticsProtocolInternal {
    static var stp_analyticsIdentifier: String { get }
}

extension STPAnalyticsProtocol {
    /// :nodoc:
    @_spi(STP) public static var stp_analyticsIdentifierInternal: String {
        return stp_analyticsIdentifier
    }
}
