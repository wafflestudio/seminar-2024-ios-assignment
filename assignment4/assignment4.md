# 과제 4 안내
## 영화 예매 앱 만들기 (업그레이드)
- @Observable
- ObservableObject / @Published / @ObservedObject
- NavigationStack / NavigationLink / NavigationView
- UserDefaults

## Figma
[피그마 링크](https://www.figma.com/design/KIqzrz8a5TtwcrhbDkLRHH/iOS-Seminar-(Design)?node-id=1821-125)

## 기본 스펙
### 전체
- Text, Color, Constraint, Corner Radius 등은 피그마에 주어진 값을 사용하며, 누락된 부분이 있다면 슬랙에서 질문 부탁드립니다
- 상세 디자인 스펙은 피그마에 텍스트로 작성되어 있습니다
- **MVVM 구조로 구현합니다**
- Clean Architecture를 필수적으로 적용할 필요는 없으나, 제공되는 스켈레톤 코드는 Clean Architecture를 가정합니다
  - 스켈레톤 코드의 사용 여부는 과제 채점에 영향을 미치지 않습니다
  - 스켈레톤 코드는 과제 구현에 최소한의 도움만을 주고 있으므로 자유롭게 수정하여 사용해 주시기 바랍니다

### Font
- SF Pro / Apple SD Gothic Neo는 Apple의 시스템 폰트이므로 과제 진행 시 size, weight, color만 고려합니다

### Alert
- 별도의 디자인이 필요하지 않습니다. 문구와 동작만 알맞게 설정합니다

### 예매 내역 탭
- 과제 4 기본 스펙은 “예매 내역” 탭을 생성하고, 올바른 제목을 설정하는 것까지만 포함합니다

### 영화 상세 화면
- 기본 스펙에서의 예매 버튼 동작
  - 진입 시 항상 예매 전 상태 (.mainGreen)
  - 버튼을 누르는 경우 alert를 띄우고, “확인”을 선택하면 예매 후 상태로 전환

## 보너스 스펙
### 예매 내역 탭
- 과제 2에서처럼 영화의 예매 여부를 저장하여 "예매 내역" 탭에서 보여주고, 앱을 껐다가 다시 실행하는 경우에도 유지되도록 합니다
  - 보너스 스펙에서 `MovieDetailView`의 예매 버튼 동작
    - 진입 시 예매 여부에 따라 다른 상태로 보여줍니다
    - 예매가 한번 완료되면 예매 내역에서 삭제되기 전까지는 “예매 후 상태”를 유지합니다
