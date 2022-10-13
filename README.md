# 42SEOUL reset

맥 용량이 꽉 찼다면 아래 파일을 두개 만들고 로그아웃 후 로그인을 하면된다.

touch ~/.reset
touch ~/.reset_library

로그인 후 설정에서 시리는 **꼭** 활성해준다.

## 백업 전에 할 것

VS Code를 사용한다면 setting.json에 설정과 설치한 Extension 목록들.
필요하다면 zshrc 파일 백업

### Extension 목록

- 42 Header
- 42 Norminette Highlighter
- C/C++
- Colonize
- Error Lens
- Git History
- Project Manager
- Todo Tree

## 초기화 후

VS Code 신규 버전이 로그인한 맥 클러스터에 설치되어 있는지 확인. 없으면 자리 옮기기

### 키보드 설정
Apple 로고 선택 -> System Preferences -> Keyboard 선택

#### 기본 선택된 탭인 Keyboard에서 할 것들
Key Repeat는 Fast, Delay Until Repeat는 Short로 설정
Use F1, F2, etc. keys as standard function keys는 체크하기
키보드 언어 한글 추가. 키보드 한영전환 설정

#### Shortcyts
단축키가 F11로 되어있는 Show Desktop 비활성화하기.
-> VS Code에서 디버깅할 때 방해됨.

#### Input Sources
+ 버튼을 눌러 Korean 선택.
2-Set Korean 선택하고 Add 클릭.
##### 옵션
Use the Caps Lock key to switch to and from ABC 체크하기
-> 한/영 전환

### 크롬
자주쓰는 계정을 크롬에 로그인하고 동기화하기
-> 기본 북마크와 확장 프로그램 알아서 불러옴

기본 브라우저 설정 활성화하기
-> 이때 못했다면 Apple 로고 -> General -> Default web browser에 크롬 선택

### Intra
ssh keygen 인트라에 등록

### Slack
슬랙 로그인은 42 이메일 주소로 로그인하고 연결된 이메일로 들어가 인증코드 입력

### VS Code
백업한 텍스트 검색해서 VS Code 확장자 설치
settings.json 파일 내용 복붙하기.

### Iterm
iterm 텍스트 크기 조정
oh-my-zsh 설치

### Brew
필요하다면 brew 설치

### Subject
과제 clone 받기
