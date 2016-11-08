/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import RestKit

/** A warning generated by Personality Insights service. */
public struct Warning: JSONDecodable {
    
    /// The unique identifier for warning message
    public let warning_id: String
    
    /// The message associated with the ID.
    public let message: String
    
    public init(json: JSON) throws {
        warning_id = try json.getString(at: "warning_id")
        message = try json.getString(at: "message")
    }
}
