# 과제 0 안내
## 간단한 로그인 View 구현
- Storyboard 없이, Auto Layout을 이용하여 View를 구현하는 것에 익숙해지기
- UITextField 사용
- UIButton 사용 및 UI 커스텀
- UIStackView
- UINavigationController 사용 및 커스텀

## Figma
[피그마 링크](https://www.figma.com/design/KIqzrz8a5TtwcrhbDkLRHH/iOS-Seminar-(Design)?node-id=0-1&t=jyKFG1GDHwTM8tej-1)

## 기본 스펙
### 전체
- Storyboard를 사용하지 않습니다 (LaunchScreen.storyboard 제외)
- 모든 Text, Color, Constraint, Corner Radius 등은 피그마에 주어진 값을 사용합니다

### 스켈레톤 코드
- 스켈레톤 코드만으로는 과제를 해결하실 수 없습니다. 적절한 변수와 함수를 추가해 주세요
- 스켈레톤 코드는 자유롭게 수정 가능하며, 아예 사용하지 않으셔도 괜찮습니다
  - 사용 여부는 과제 채점에 아무런 영향을 미치지 않습니다
 
### Font
- Figma에 표시되는 폰트명 SF Pro / Apple SD Gothic Neo는 Apple의 시스템 폰트이므로 과제를 진행할 때는 폰트의 size, weight, color만 고려합니다

### UITextField
- 모든 UITextField의 height는 기본값을 사용합니다 (따로 설정 필요X)
- 모든 UITextField는 입력하는 동안 오른쪽에 x 버튼이 뜨도록 합니다
- 비밀번호를 입력하는 UITextField는 입력값이 ●로 마스킹되도록 설정합니다

### UIButton
- 로그인: id가 조건을 만족하고 password가 비어 있지 않은 경우에만 다음 화면으로 넘어갑니다
- 로그아웃: 버튼을 눌러 첫 화면으로 되돌아올 때, 모든 상태가 초기화되도록 합니다
  - (아이디 및 비밀번호 UITextField 입력값 등)


### 기본 스펙만 구현한 경우
https://github.com/user-attachments/assets/3836b745-f122-4d17-a1a3-244e9654041a


## Bonus 스펙 (2개 구현 시 Grace Day +1)
- 아이디를 입력하는 UITextField에 영어를 입력하면 자동으로 첫 글자가 대문자가 됩니다. 어떻게 해결할 수 있을까요?
- 마지막으로 로그인할 때 사용했던 아이디는 다음으로 앱을 켤 때 자동으로 아이디 UITextField에 채워져 있도록 해봅시다.
  - hint: UserDefaults

### 모든 Bonus 스펙을 구현한 경우
https://github.com/user-attachments/assets/81565baa-d9bd-435e-8738-269267cd974d


