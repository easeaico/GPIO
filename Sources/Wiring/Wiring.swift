import Foundation
import wiringPi

public enum WiringErrors : Error {
    case openChipErr
    case getLineErr
}

public class Wiring {

    public init() throws {
        wiringPiSetupGpio()
    }

}


