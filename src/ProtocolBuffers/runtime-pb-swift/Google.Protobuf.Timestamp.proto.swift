// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file timestamp.proto

import Foundation

public extension Google.Protobuf{}

public func == (lhs: Google.Protobuf.Timestamp, rhs: Google.Protobuf.Timestamp) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasSeconds == rhs.hasSeconds) && (!lhs.hasSeconds || lhs.seconds == rhs.seconds)
  fieldCheck = fieldCheck && (lhs.hasNanos == rhs.hasNanos) && (!lhs.hasNanos || lhs.nanos == rhs.nanos)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

public extension Google.Protobuf {
  public struct TimestampRoot {
    public static var sharedInstance : TimestampRoot {
     struct Static {
         static let instance : TimestampRoot = TimestampRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Google.Protobuf.SwiftDescriptorRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class Timestamp : GeneratedMessage, GeneratedMessageProtocol, Hashable {
    public private(set) var hasSeconds:Bool = false
    public private(set) var seconds:Int64 = Int64(0)

    public private(set) var hasNanos:Bool = false
    public private(set) var nanos:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasSeconds {
        output.writeInt64(1, value:seconds)
      }
      if hasNanos {
        output.writeInt32(2, value:nanos)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasSeconds {
        serialize_size += seconds.computeInt64Size(1)
      }
      if hasNanos {
        serialize_size += nanos.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseFromData(data:NSData) -> Google.Protobuf.Timestamp {
      return Google.Protobuf.Timestamp.Builder().mergeFromData(data, extensionRegistry:Google.Protobuf.TimestampRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Timestamp {
      return Google.Protobuf.Timestamp.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) -> Google.Protobuf.Timestamp {
      return Google.Protobuf.Timestamp.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Timestamp {
      return Google.Protobuf.Timestamp.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) -> Google.Protobuf.Timestamp {
      return Google.Protobuf.Timestamp.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Timestamp {
      return Google.Protobuf.Timestamp.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Google.Protobuf.Timestamp.Builder {
      return Google.Protobuf.Timestamp.classBuilder() as! Google.Protobuf.Timestamp.Builder
    }
    public func getBuilder() -> Google.Protobuf.Timestamp.Builder {
      return classBuilder() as! Google.Protobuf.Timestamp.Builder
    }
    public override class func classBuilder() -> MessageBuilder {
      return Google.Protobuf.Timestamp.Builder()
    }
    public override func classBuilder() -> MessageBuilder {
      return Google.Protobuf.Timestamp.Builder()
    }
    public func toBuilder() -> Google.Protobuf.Timestamp.Builder {
      return Google.Protobuf.Timestamp.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Google.Protobuf.Timestamp) -> Google.Protobuf.Timestamp.Builder {
      return Google.Protobuf.Timestamp.Builder().mergeFrom(prototype)
    }
    override public func writeDescriptionTo(inout output:String, indent:String) {
      if hasSeconds {
        output += "\(indent) seconds: \(seconds) \n"
      }
      if hasNanos {
        output += "\(indent) nanos: \(nanos) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasSeconds {
               hashCode = (hashCode &* 31) &+ seconds.hashValue
            }
            if hasNanos {
               hashCode = (hashCode &* 31) &+ nanos.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Google.Protobuf.Timestamp"
    }
    override public func className() -> String {
        return "Google.Protobuf.Timestamp"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Google.Protobuf.Timestamp.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Google.Protobuf.Timestamp = Google.Protobuf.Timestamp()
      public func getMessage() -> Google.Protobuf.Timestamp {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasSeconds:Bool {
           get {
                return builderResult.hasSeconds
           }
      }
      public var seconds:Int64 {
           get {
                return builderResult.seconds
           }
           set (value) {
               builderResult.hasSeconds = true
               builderResult.seconds = value
           }
      }
      public func setSeconds(value:Int64) -> Google.Protobuf.Timestamp.Builder {
        self.seconds = value
        return self
      }
      public func clearSeconds() -> Google.Protobuf.Timestamp.Builder{
           builderResult.hasSeconds = false
           builderResult.seconds = Int64(0)
           return self
      }
      public var hasNanos:Bool {
           get {
                return builderResult.hasNanos
           }
      }
      public var nanos:Int32 {
           get {
                return builderResult.nanos
           }
           set (value) {
               builderResult.hasNanos = true
               builderResult.nanos = value
           }
      }
      public func setNanos(value:Int32) -> Google.Protobuf.Timestamp.Builder {
        self.nanos = value
        return self
      }
      public func clearNanos() -> Google.Protobuf.Timestamp.Builder{
           builderResult.hasNanos = false
           builderResult.nanos = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> Google.Protobuf.Timestamp.Builder {
        builderResult = Google.Protobuf.Timestamp()
        return self
      }
      public override func clone() -> Google.Protobuf.Timestamp.Builder {
        return Google.Protobuf.Timestamp.builderWithPrototype(builderResult)
      }
      public override func build() -> Google.Protobuf.Timestamp {
           checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Google.Protobuf.Timestamp {
        var returnMe:Google.Protobuf.Timestamp = builderResult
        return returnMe
      }
      public func mergeFrom(other:Google.Protobuf.Timestamp) -> Google.Protobuf.Timestamp.Builder {
        if other == Google.Protobuf.Timestamp() {
         return self
        }
        if other.hasSeconds {
             seconds = other.seconds
        }
        if other.hasNanos {
             nanos = other.nanos
        }
        mergeUnknownFields(other.unknownFields)
        return self
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream) -> Google.Protobuf.Timestamp.Builder {
           return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Timestamp.Builder {
        var unknownFieldsBuilder:UnknownFieldSet.Builder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          var tag = input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = unknownFieldsBuilder.build()
            return self

          case 8 :
            seconds = input.readInt64()

          case 16 :
            nanos = input.readInt32()

          default:
            if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
               unknownFields = unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
