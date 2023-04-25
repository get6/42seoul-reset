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
필요한 extension들이 있다면 미리 무엇을 설치했었는지 확인하자.

내가 쓰던 확장들
- 42 Header
- 42 Norminette Highlighter
- C/C++
- Colonize
- Error Lens
- Git History
- Project Manager
- Todo Tree

#### C/C++ 설치 이후
VS Code에서 `ctrl + ,`을 입력해 settings로 간다.\
인풋창에 cache를 치면 C_Cpp: Intelli Sense Cache Size 항목이 있는데, 5120 -> 512로 바꾼다.\
내 생각엔 이게 용량을 잡아먹는 원인같다.

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
로그인한 PC의 ssh keygen을 인트라에 등록해야 한다.

생성된 key로 GitHub에 등록해서 사용할 수 있다.

1. 터미널에서 `ssh-keygen`을 입력한다.
2. `pbcopy < ~/.ssh/id_rsa.pub`를 사용해서 복사하든 마우스로 긁어서 복사를 한다.
3. [SSH Key](https://profile.intra.42.fr/gitlab_users)로 이동해서 등록하면 된다.

### Slack
슬랙 로그인은 42 이메일 주소로 로그인하고 연결된 이메일로 들어가 인증코드 입력

### VS Code
백업한 텍스트 검색해서 VS Code 확장자 설치

settings.json 파일 내용 복붙하기.

### iTerm2
iTerm2 기본 설정에서 좀 더 사용자 친화적으로 변경

#### iTerm2 텍스트 크기 조정
iTerm2 실행 후 -> 상단 애플 로고 오른쪽 굵은 글씨 iTerm2 클릭 -> Preferences 클릭

-> Profiles -> Text -> Font -> Regular로 선택된 입력창 오른쪽에서 숫자 조정

#### oh-my-zsh 설치
[Install Oh My Zsh](https://ohmyz.sh/#install) 들어가기

해당 명령어를 iTerm2에 복사하고 붙여넣기하고 실행하기

### Brew
필요하다면 brew 설치

Obsidian 같은 프로그램을 설치하는 경우에는 설치 경로를 다르게 해야지 문제없이 사용할 수 있다.

맥에서 설치할 때 권한을 요구하는데 우리는 사용자 계정으로 권한이 약하다.

그렇기 때문에 프로그램을 마음껏 설치할 수 없어서 아래와 같이 경로를 사용자 폴더 밑으로 해야한다.

예) `brew install --cask obsidian --appdir=~/Applications`

### Subject
과제 clone 받기

#### GitHub

개인 SSH를 등록하는 게 개인 저장소, 조직을 클러스터 맥에서 사용하기 편한다.

Intra 항목에서 이미 만들어졌다고 가정하고, [이 링크](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)에서 하라는 대로 하면 된다.

이렇게 하면 clone할 때 URL 방식 대신 SSH 방식을 사용해야 한다.
