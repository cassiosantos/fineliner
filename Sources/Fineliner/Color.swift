/**
  - author: Cassio Santos <cassioherculano@gmail.com>
 **/
public struct Color {
    let r, g, b: Int
    var name: String?

    init(_ r: Int, _ g: Int, _ b: Int, name: String? = nil) {
       self.r = r
       self.g = g
       self.b = b
       self.name = name
    }

    public mutating func setName(newName: String?) {
        name = newName
    }

    public func getName() -> String? {
        return name
    }
    
}

// MARK: - Equatable

extension Color: Equatable {}

public func ==(l: Color, r: Color) -> Bool {
    return l.r == r.r && l.g == r.g && l.b == r.b
}