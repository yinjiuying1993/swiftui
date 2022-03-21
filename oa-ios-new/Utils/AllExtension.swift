//
//  AllExtension.swift
//  oa-ios-new
//
//  Created by yinjiuying on 2022/3/16.
//

import Foundation
import CommonCrypto
public extension String {
    var md5: String {
           let str = self.cString(using: String.Encoding.utf8)
           let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
           let digestLen = Int(CC_MD5_DIGEST_LENGTH)
           let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
           CC_MD5(str!, strLen, result)

           let hash = NSMutableString()

           for i in 0..<digestLen {
               hash.appendFormat("%02x", result[i])
           }

           result.deallocate()
           return hash as String
       }
}
