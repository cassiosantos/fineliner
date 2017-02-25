#if os(Linux)
import Glibc
#endif
/**
  - author: Cassio Santos <cassioherculano@gmail.com>
 **/
public struct Fineliner {
    public init() {
        #if os(Linux)
        srandom(UInt32(clock()))
        #endif
    }

    public func printShhuffledPens() { 
        var bundle = Bundle.standard12Bundle()
        bundle.shuffle()

        for pen in bundle.getPens() {
            print(pen)
        }
    }
}
