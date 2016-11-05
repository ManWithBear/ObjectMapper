//
//  SetTransform.swift
//  ObjectMapper
//
//  Created by Denis Bogomolov on 05/11/2016.
//  Copyright © 2016 hearst. All rights reserved.
//

import Foundation

open class SetTransform<T:Hashable>: TransformType {
	public typealias Object = Set<T>
	public typealias JSON = Array<T>

	public init() {}

	open func transformFromJSON(_ value: Any?) -> Set<T>? {
		guard let array = value as? Array<T> else {
			return nil
		}
		return Set<T>(array)
	}

	open func transformToJSON(_ value: Set<T>?) -> Array<T>? {
		guard let set = value else{
			return nil
		}
		return Array<T>(set)
	}
}
