/**
 * Copyright (c) 2015-present, Parse, LLC.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import <Foundation/Foundation.h>

#import <TMGParseCore/PFPolygon.h>

@class PFPolygon;

@interface PFPolygon (Private)

// Internal commands

/*
 Gets the encoded format for a Polygon.
 */
- (NSDictionary *)encodeIntoDictionary:(NSError **)error;

/**
 Creates a Polygon from its encoded format.
 */
+ (instancetype)polygonWithDictionary:(NSDictionary *)dictionary;

@end
