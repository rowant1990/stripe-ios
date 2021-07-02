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

 - Note:
 NOTE(mludowise): This abstraction is necessary to avoid displaying
 `STPAnalyticsProtocol` conformance in our jazzy docs. If jazzy ever allows for
 ignoring spi-attributed extensions in docs generation, it can be removed.
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
