import Foundation
import wiringPi

public enum WiringErrors : Error {
    case setupGpioErr
}

@inlinable public func wiringSetupGpio(){
    wiringPiSetupGpio()
}

public class LED {
    let pin: Int32

    public init(forPin number: Int32) {
        self.pin = number
        pinMode(self.pin, OUTPUT)
    }

    public func on() {
        digitalWrite(self.pin, HIGH)
    }

    public func off() {
        digitalWrite(self.pin, LOW)
    }
}

public class Button {
        let pin: Int32

        public init(forPin number: Int32) {
            self.pin = number
            pinMode(self.pin, INPUT)
            pullUpDnControl(self.pin, PUD_UP)
        }

        public func onPress() -> Bool {
            let val = digitalRead(self.pin)
            return val == LOW
        }

        public func onRelease() -> Bool {
            let val = digitalRead(self.pin)
            return val == HIGH
        }



}


