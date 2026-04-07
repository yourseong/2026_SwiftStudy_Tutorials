## [Swift] Data modeling
### CH1. Custom types and Swift Testing : Model data with custom types
https://developer.apple.com/tutorials/develop-in-swift/model-data-with-custom-types
- `String`, `Int`, `Array` 데이터 타입 다루기
- 나만의 `struct`type을 defining해 app의 state를 data로 modeling
- Protocol Syntax 사용해보기
    **❓Identifiable protocol**
    - Swift 및 SwiftUI에서 데이터 항목에 안정적이고 고유한 식별자(id)를 부여하는 프로토콜.
    - Hashable을 준수하는 id 프로퍼티를 필수로 구현해야 하며, 이를 통해 List나 ForEach에서 데이터를 고유하게 식별하고 UI 변경사항을 자동으로 반영함.
- UUID (Universally Unique IDentifier)
    - 전 우주에서 유일한 식별자. (아주 복잡한 문자열 형태임)
    - `UUID()`와 같은 형태로 호출할때마다 매번 완전히 새로운, 중복될 확률이 거의 0에 가까운 고유값 생성.
    - Identifiable protocol을 사용할 때 활용할 수 있음.
- `Grid`, `GridRow`를 활용한 grid 레이아웃 생성
