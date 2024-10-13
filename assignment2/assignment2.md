# 과제 2 안내
## 간단한 영화 예매 앱 만들기
- Package Manager
  - Alamofire
  - Kingfisher
- UITabBarController
- UITableView + UITableViewCell
- UINavigationController
- UserDefaults
- UIAlertController

## Figma
[피그마 링크](https://www.figma.com/design/KIqzrz8a5TtwcrhbDkLRHH/iOS-Seminar-(Design)?node-id=660-504)

## 기본 스펙
### 전체
- Storyboard를 사용하지 않습니다 (LaunchScreen.storyboard 제외)
- 모든 Text, Color, Constraint, Corner Radius 등은 피그마에 주어진 값을 사용합니다
- Appearance를 Dark Mode로 강제합니다 (스켈레톤 코드 참고)

### 스켈레톤 코드
- 스켈레톤 코드만으로는 과제를 해결하실 수 없습니다. 적절한 변수와 함수를 추가해 주세요
- 스켈레톤 코드는 자유롭게 수정 가능하며, 아예 사용하지 않으셔도 괜찮습니다
  - 사용 여부는 과제 채점에 아무런 영향을 미치지 않습니다
 
### Font
- SF Pro / Apple SD Gothic Neo는 Apple의 시스템 폰트이므로 과제 진행 시 size, weight, color만 고려합니다

### Build Configuration File
- 개별로 발급받은 API key와 Access Token은 **절대로** Github에 올리지 않습니다. Build Configuration File을 이용하고, 세미나장에게 슬랙 DM을 통해 별도로 파일을 전송합니다.

### UIAlertController
- 별도의 커스텀 디자인이 필요하지 않습니다. 스펙에 맞는 문구만 지정해 주세요

### 영화 탭
- 영화 목록은 반드시 UITableView를 이용하여 보여줍니다
  - 포스터 이미지는 가로 120, 세로 180으로 고정합니다
  - 포스터 이미지가 없는 경우는 고려하지 않습니다(별도 처리X)
  - 영화의 개요는 최대 3줄까지만 보여줍니다
  - 영화의 평점은 별도의 조작 없이 API response값 그대로 보여줍니다
- Figma에는 편의상 영화 3개만을 보여주고 있으나, 실제로는 무한 scroll이 가능하도록 합니다
  - Pagination 이용
- [사용할 API](https://developer.themoviedb.org/reference/movie-popular-list)

### 영화 상세 화면
- 포스터 이미지의 가로는 디바이스의 너비와 동일해야 하고, 세로는 360으로 고정합니다
- 예매 버튼은 화면 아래에 고정하고, 그 외 정보는 스크롤뷰로 보여줍니다
  - 자세한 동작은 과제 Demo 영상 참고
  - hint: [UIScrollView](https://developer.apple.com/documentation/uikit/uiscrollview)
- 이미 예매한 영화라면 예매 버튼을 비활성화합니다
  - 비활성화 상태의 버튼 문구와 색상에 유의합니다
  - 자세한 동작은 과제 Demo 영상 참고
- [사용할 API](https://developer.themoviedb.org/reference/movie-details)

### 예매 내역 탭
- 영화 목록은 반드시 UITableView를 이용하여 보여줍니다
  - cell의 스펙은 “영화” 탭과 동일
- cell을 누르면, UIAlertController를 띄워 예매 내역을 지울지 확인합니다
- 예매 내역은 앱을 종료 후 다시 실행하는 경우에도 유지됩니다
  - hint: UserDefaults

### 기본 스펙만 구현한 경우
https://github.com/user-attachments/assets/2363043b-1920-4028-9926-745ce1118512


## Bonus 스펙 (2개 구현 시 Grace Day +1)
- 영화 상세 화면의 포스터 이미지에 그라데이션을 추가합니다
- 영화의 출연진 정보를 추가합니다
  - Figma에는 일부 출연진만을 보여주고 있지만, 실제로는 모든 출연진을 보여줍니다
  - 출연진은 반드시 UICollectionView를 이용하여 보여줍니다
  - cell의 width: 디바이스 크기에 따라 변합니다
    cell의 height: 편의상 232로 고정하고, 텍스트가 길어서 넘치는 경우는 고려하지 않습니다
  - 출연진 프로필 이미지는 가로 100, 세로 150으로 고정합니다
    - 이미지가 없는 경우에는 Figma에 있는 이미지(􁣕)를 보여줍니다
  - [사용할 API](https://developer.themoviedb.org/reference/movie-credits)

### 모든 Bonus 스펙을 구현한 경우
https://github.com/user-attachments/assets/595a63bd-0236-4918-a437-e0a50a1beed8


