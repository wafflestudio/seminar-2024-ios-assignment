# 과제 3 안내
## SwiftUI를 이용한 Todo List 앱 만들기
- @State, @Binding, @Environment
- NavigationView / NavigationLink
- UserDefaults

## Figma
[피그마 링크](https://www.figma.com/design/KIqzrz8a5TtwcrhbDkLRHH/iOS-Seminar-(Design)?node-id=1087-447)

## 기본 스펙
### 전체
- UI 구현은 SwiftUI만 사용합니다
- 아직 강의 자료 15페이지에서의 “Model data”의 변경사항 관찰에 대한 내용을 다루지 않아 완전한 MVVM 구조를 짜기 어렵습니다. 미리 관련한 내용을 공부하고 MVVM 구조로 짜도 좋습니다 

  ( 관련 키워드 : @ObservableObject @ObservedObject @StateObject @Published )

- Text, Color, Constraint, Corner Radius 등은 피그마에 주어진 값을 사용하며, 누락된 부분이 있다면 슬랙에서 질문 부탁드립니다

### Font
- SF Pro / Apple SD Gothic Neo는 Apple의 시스템 폰트이므로 과제 진행 시 size, weight, color만 고려합니다

### Alert
- 별도의 디자인이 필요하지 않습니다. 문구와 동작만 알맞게 설정합니다

### 홈 화면 (기본 모드)
- 앱에 처음 진입하는 경우에는 언제나 기본 모드를 보여줍니다
- 추가/삭제된 Todo의 목록과 각 Todo의 완료 여부는 앱을 종료 후 다시 실행하더라도 유지됩니다
- Todo 목록의 상태에 따라 상단 문구를 알맞게 보여줍니다
  - NavigationBar Title이 아닌, Custom View입니다
- 체크 아이콘을 탭하면 Todo의 완료 여부를 전환합니다
  - 구현에 따라 Cell 영역 어디든 탭해도 Todo의 완료 여부가 전환되도록 해도 괜찮습니다
  - 완료된 Todo는 취소선을 보여줍니다. 달라지는 Text 색상에 유의합니다

### 홈 화면 (편집 모드)
- 기본 모드에서 “편집” 버튼을 누르면 편집 모드로 전환됩니다
- Cell을 탭하면 배경 색상이 바뀌며 Cell이 선택됩니다
  - 이미 선택된 Cell을 다시 탭하면 배경이 투명해지며 미선택 상태로 돌아갑니다
- 삭제 버튼
  - 선택된 Cell이 없는 경우에는 삭제 버튼을 탭해도 아무런 동작을 수행하지 않습니다
  - 선택된 Cell이 하나 이상인 경우에는 Alert를 띄웁니다
  - 두 상태에 따라 다른 배경 색상에 유의합니다
- 취소 버튼을 누르면 선택 내역을 초기화하고 기본 모드로 돌아갑니다
- Alert
  - “삭제” 누르면 선택했던 Todo를 삭제합니다
  - “취소”를 누르면 편집 화면으로 되돌아갑니다. 선택했던 Todo 목록이 초기화되지 않습니다

### Todo 추가 화면
- 저장하지 않고 화면을 나가는 경우에는 작성 중이던 Todo가 초기화됩니다
- 입력 중에는 X 버튼이 뜨도록 합니다
- 자동으로 첫 글자를 대문자로 만드는 기능을 비활성화합니다
- Alert
  - “저장” 버튼을 눌렀을 때, Todo의 제목이 비어있는 경우에는 Alert를 띄웁니다
    - Todo의 제목이 비어있지 않다면, 새 Todo를 만들고 이전 화면으로 되돌아갑니다
    - 홈 화면에는 새로 추가된 Todo가 바로 보여야 합니다

### 구현 예시 영상
https://github.com/user-attachments/assets/4aa95aa4-80b7-4322-ae17-88de2d26dded

