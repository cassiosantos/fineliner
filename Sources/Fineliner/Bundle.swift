import FisherYates

/**
  - author: Cassio Santos <cassioherculano@gmail.com>
 **/
public struct Bundle {
    fileprivate var fineliners: [Pen]

    public static func standard3Bundle() -> Bundle {
        let pens: [Pen] = [
            Pen(Color(255,   0,   0, name: "Red")),
            Pen(Color(  0, 128,   0, name: "Green")),
            Pen(Color(  0,   0, 128, name: "Blue")),
        ]
        return Bundle(pens)
    }

    public static func standard6Bundle() -> Bundle {
        var pens: [Pen] = self.standard3Bundle().getPens()
        pens.append(Pen(Color(255, 255,   0, name: "Yellow")))
        pens.append(Pen(Color(128,   0, 128, name: "Purple")))
        pens.append(Pen(Color(255,  69,   0, name: "Orange")))
        return Bundle(pens)
    }

    public static func standard12Bundle() -> Bundle {
        var pens: [Pen] = self.standard6Bundle().getPens()
        pens.append(Pen(Color(  0,   0,   0, name: "Black")))
        pens.append(Pen(Color(173, 216, 230, name: "Light Blue")))
        pens.append(Pen(Color(128,   0,   0, name: "Brown")))
        pens.append(Pen(Color(144, 238, 144, name: "Light Green")))
        pens.append(Pen(Color(255,  20, 147, name: "Pink")))
        pens.append(Pen(Color(255, 182, 193, name: "Light Pink")))
        return Bundle(pens)
    }

    public init(_ fineliners: [Pen]) {
        self.fineliners = fineliners
    }

    public mutating func append(_ pen: Pen) {
        fineliners.append(pen)
    }

    public mutating func shuffle() {
        fineliners.shuffle()
    }

    public func count() -> Int {
        return fineliners.count
    }

    public mutating func deal() -> Pen? {
        guard !fineliners.isEmpty else { return nil }
        return fineliners.removeLast()
    }

    public func getPens() -> [Pen] {
        return fineliners
    }
 }

// MARK: - ExpressibleByArrayLiteral
extension Bundle : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Pen...) {
        self.init(elements)
    }
}

// MARK: - Equatable
extension Bundle : Equatable {}

public func ==(lhs: Bundle, rhs: Bundle) -> Bool {
    return lhs.fineliners == rhs.fineliners
}
