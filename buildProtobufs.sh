#!/bin/sh
protoc-nanopb  --nanopb_out=autopilot\ \(AVR\ code\)/autopilot/ communicationProtocol.proto
protoc --objc_out=Drone\ Control\ \(OSX\)/Drone\ Control/ communicationProtocol.proto
protoc --objc_out=ProtoBufToCSV\ \(ObjC\)/ProtoBufToCSV/ communicationProtocol.proto
protoc --objc_out=Drone\ Viewer\ \(iOS\)/Drone\ Viewer/ communicationProtocol.proto
#protoc --java_out=TelemetryViewer/src/ communicationProtocol.proto
protoc --java_out=DroneComms/src/ communicationProtocol.proto
