# 과제 1 안내
## 간단한 Todo List 앱 만들기
- UITableView + UITableViewCell
- UITextField
- UIStackView
- UINavigationController
- UINavigationItem
- UIAlertController

## Figma
[피그마 링크](https://www.figma.com/design/KIqzrz8a5TtwcrhbDkLRHH/iOS-Seminar-(Design)?node-id=44-200)

## 기본 스펙
### 전체
- Storyboard를 사용하지 않습니다 (LaunchScreen.storyboard 제외)
- 모든 Text, Color, Constraint, Corner Radius 등은 피그마에 주어진 값을 사용합니다

### 스켈레톤 코드
- 스켈레톤 코드만으로는 과제를 해결하실 수 없습니다. 적절한 변수와 함수를 추가해 주세요
- 스켈레톤 코드는 자유롭게 수정 가능하며, 아예 사용하지 않으셔도 괜찮습니다
  - 사용 여부는 과제 채점에 아무런 영향을 미치지 않습니다
 
### Font
- SF Pro / Apple SD Gothic Neo는 Apple의 시스템 폰트이므로 과제 진행 시 size, weight, color만 고려합니다

### UIAlertController
- 별도의 커스텀 디자인이 필요하지 않습니다. 스펙에 맞는 문구만 지정해 주세요

### 홈 화면
- Todo List는 **반드시 UITableView를 이용**하여 구현합니다
- 각 cell을 누르면 완료 여부를 true / false로 전환할 수 있습니다. 전환 시 달라지는 font 색상에 유의합니다
- 초기에는 Todo가 없는 빈 TableView를 보여주며, Todo List의 상태는 앱을 껐다 켜도 유지되도록 합니다 (컬러 및 완료 여부)

### Todo 추가 화면
- “저장” 버튼을 눌렀을 때, Todo의 제목이 비어있는 경우에는 Alert를 띄웁니다
- Todo의 제목이 비어있지 않다면, 새 Todo를 만들고 이전 화면으로 되돌아갑니다
- 이때 홈 화면에는 새로 추가된 Todo가 바로 보여야 합니다


### 기본 스펙만 구현한 경우
https://github.com/user-attachments/assets/651b317b-bd8d-480d-8940-54f15e0e2f6a


## Bonus 스펙 (2개 구현 시 Grace Day +1)
- 환경설정 화면에서 Color Mode에 대한 Switch를 사용할 수 있도록 합니다
    - 초기 상태는 off이고, 이후 Switch의 on/off 여부는 앱을 껐다 켜도 유지
    - Switch가 on인 경우: 홈 화면의 체크 아이콘 색상이 .systemOrange가 됩니다
    - Switch가 off인 경우: 홈 화면의 체크 아이콘 색상이 .black이 됩니다
    - hint: UISwitch
- 완료한 Todo의 제목과 설명에 취소선이 그어지도록 합니다
    - 한 번 완료된 Todo가 다시 미완료 상태로 돌아가면 취소선도 사라져야 합니다
    - hint: NSAttributedString

### 모든 Bonus 스펙을 구현한 경우
https://github.com/user-attachments/assets/81eca1fc-89fc-444b-83a6-8d231bf1674e

