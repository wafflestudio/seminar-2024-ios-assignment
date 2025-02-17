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
- Text, Color, Constraint, Corner Radius 등은 피그마에 주어진 값을 사용합니다
- **MVVM 구조로 구현합니다**
- Clean Architecture를 필수적으로 적용할 필요는 없으나, 제공되는 스켈레톤 코드는 Clean Architecture를 가정합니다
  - 스켈레톤 코드의 사용 여부는 과제 채점에 영향을 미치지 않습니다
  - 스켈레톤 코드는 과제 구현에 최소한의 도움만을 주고 있으므로 자유롭게 수정하여 사용해 주시기 바랍니다
- **Font** : SF Pro / Apple SD Gothic Neo는 Apple의 시스템 폰트이므로 size, weight, color만 고려합니다
- **Alert** : 별도의 디자인이 필요하지 않습니다. 문구와 동작만 알맞게 설정합니다
- **Minimum Deployments** : 17.0 이상 18.0 미만으로 설정합니다
- **Configuration File**: Api Key 및 Access Token을 과제 제출용 Repository에 업로드하지 않습니다 (Configuration File에 저장 후, gitignore)

### 1. 인기 탭
- [사용할 API](https://developer.themoviedb.org/reference/movie-popular-list)
- 평점은 소수점 셋째 자리에서 반올림합니다 (ex. 7.782 -> 7.78)
- 포스터 이미지는 `세로 = 가로 × 1.4`의 비율을 유지한 상태로 화면을 꽉 채웁니다
  - 포스터 이미지가 없는 경우는 고려하지 않습니다
#### 1.1. 영화 상세 화면
- 예매 버튼은 화면 하단에 고정되어 있고, 그 외의 영역은 상하로 스크롤됩니다 (하단 영상 참고)
- 기본 스펙에서는 예매 상태를 저장하지 않습니다. 앱을 종료 후 재시작하는 경우, 언제나 "예매 전" 상태가 됩니다
- 예매 버튼 동작
  - `예매 전` : 버튼을 누르는 경우 alert를 띄우고, “확인”을 선택하면 예매 후 상태의 UI로 전환
  - `예매 후` : disabled (눌러도 아무런 동작을 수행하지 않음)
- 영화 장르 칩 버튼 동작
  - 칩 버튼을 누르면 검색 탭으로 전환되며, "장르:{장르}" 검색어에 대한 검색 결과를 보여줍니다 (ex. `장르:액션`)
  - [사용할 API](https://developer.themoviedb.org/reference/discover-movie)

### 2. 검색 탭
- 접두어 `장르:`가 붙는 경우에는 장르 검색을 수행하고, 그 외의 경우에 대해서는 제목 검색을 수행합니다 (ex. 검색어 `장르:로맨스`은 장르 검색, 검색어 `로맨스`는 제목 검색)
  - [제목 검색을 위한 API](https://developer.themoviedb.org/reference/search-movie)
  - [장르 검색을 위한 API](https://developer.themoviedb.org/reference/discover-movie)
- Cell의 디자인 스펙은 **인기 탭**에서와 동일합니다
  - 단, Cell을 터치하더라도 상세 페이지로 이동하지 않습니다

### 3. 예매 내역 탭
- 기본 스펙은 예매 내역 탭을 생성하는 것까지만 포함합니다 (피그마 내 `MyPage_Empty` 프레임 참고)

---
## 보너스 스펙
### 1. 인기 탭
#### 1.1. 영화 상세 화면
- 영화의 예매 여부를 저장하여, 각 영화의 예매 상태에 알맞게 View를 보여줍니다
- 예매 버튼 동작
  - `예매 전` : 버튼을 누르는 경우 alert를 띄우고, “확인”을 선택하면 예매 후 상태로 전환
  - `예매 후` : disabled (눌러도 아무런 동작을 수행하지 않음)
  - 예매가 한번 완료되면, 예매 내역에서 삭제되기 전까지는 예매 후 상태를 유지합니다

### 3. 예매 내역 탭
- 예매된 영화 목록을 보여줍니다. 앱을 껐다가 다시 실행하더라도 목록은 유지됩니다
- 평점은 소수점 셋째 자리에서 반올림합니다 (ex. 7.782 -> 7.78)
- 포스터 이미지는 `가로: 90 / 세로: 135`로 고정합니다
  - 포스터 이미지가 없는 경우는 고려하지 않습니다
