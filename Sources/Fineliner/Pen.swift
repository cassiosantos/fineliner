/**
  - author: Cassio Santos <cassioherculano@gmail.com>
 **/
public struct Pen {
    let color: Color

    init(_ color: Color) {
       self.color = color
    }
}

// MARK: - Equatable

extension Pen: Equatable {}

public func ==(l: Pen, r: Pen) -> Bool {
    return l.color == r.color
}