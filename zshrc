# francinette를 설치한 경우 1, 2서클에서 사용하길 추천.
# pipex는 첫번째 테스터기만 사용하길 추천
alias francinette=/Users/sunhwang/francinette/tester.sh
alias paco=/Users/sunhwang/francinette/tester.sh

# code 명령어를 사용할 수 있게 설정
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
