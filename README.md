# 42SEOUL reset

맥 용량이 꽉 찼거나, VS Code를 실행할때마다 캐시 초기화를 해야하는 경우라면 아래 두개의 파일을 만들고 로그아웃 후 맥 클러스터에 로그인을 다시하면 초기화된다.

```bash
touch ~/.reset
touch ~/.reset_library
```

로그인 후 설정에서 시리는 **꼭** 활성해준다.

## 백업 전에 할 것

VS Code를 사용한다면 setting.json에 설정과 설치한 Extension 목록들.

필요하다면 .zshrc 파일 백업

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

VS Code 신규 버전이 로그인한 맥 클러스터에 설치되어 있는지 확인.

없다면 자리를 옮기는게 낫다.

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
\+ 버튼을 눌러 Korean 선택.

2-Set Korean 선택하고 Add 클릭.

##### 옵션
Use the Caps Lock key to switch to and from ABC 체크하기

-> 한/영 전환

### 크롬
자주 사용하는 구글 계정을 크롬에 로그인하고 동기화하기

-> 기본 북마크와 확장 프로그램 알아서 불러옴

기본 브라우저 설정 활성화하기

-> 브라우저 설정하라고 제안했을 때 못했다면, Apple 로고 -> General -> Default web browser에 크롬 선택

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

Obsidian 같은 프로그램을 설치하는 경우에는 설치 경로를 다르게 해야지 문제없이 사용할 수 있다.

맥에서 설치할 때 권한을 요구하는데 우리는 사용자 계정으로 권한이 약하다.

그렇기 때문에 프로그램을 마음껏 설치할 수 없어서 아래와 같이 경로를 사용자 폴더 밑으로 해야한다.

예) `brew install --cask obsidian --appdir=~/Applications`

### Subject
과제 clone 받기

#### GitHub
만약 개인 GitHub에 있는 Private 저장소를 URL 방식으로 내려받으려고 하면 username과 password를 입력받으라고 할 수 있다.

그런 경우에는 GitHub PAT(Personal Access Token)를 생성해야 한다.

Settings -> Developer settings -> Personal access tokens를 선택한다.
Generate new token을 선택하고 repo를 체크한다.

생성된 PAT는 Private 저장소를 내려받을 때 username과 password를 입력할 때 password 입력 단계에서 사용하면 된다.
