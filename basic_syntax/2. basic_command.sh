# 현재 working directory, staging area 상태 확인
git status

# . 은 모든 수정/추가 사항 add
git add .

# 특정 파일만 add 할 경우(경로까지 포함)
git add testfolder/test1.txt

# commit을 통해 메시지 타이틀과 메시지 내용을 커밋이력으로 생서
git commit -m "메시지 제목" -m "메시지 내용"

# git commit만 입력하고 엔터 시 vi 모드 -> 첫줄 타이틀, 두번째 줄 내용
git commit

# commit 이력 확인(버전 확인)
git log
git log --oneline
# head 하단의 로그만 보이는 것이 아니라 모든 log이력을 조회
# head: 현재 checkout 하고 있는 commitID를 의미
git log --all

# 원격저장소로 업로드
git push origin 브랜치명
# 중복발생 시 충돌 무시하고 로컬 기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force

# 특정 commit ID로의 전환
git checkout 커밋ID
# 특정 브랜치로의 전환환
git checkout 브랜치명

# pull은 원격의 변경사항을 local로 내려받는 것(fetch + merge)
git pull origin main

# fetch는 변경사항을 local로 가져오되 병합은 하지 않는 것
git fetch origin main
# 만약 모든 브랜치의 변경사항을 가져오려면
git fetch --all
# 버전별(commit 간) 비교 명령어
git diff A B
git diff commitID1 commitID2
git diff 브랜지1 브랜치2

# 마지막 commit 취소
git reset HEAD~1
git reset HEAD^

# 이미 push된 commit 사항 되돌리는(완전한 취소 X) commitID 생성
git revert 커밋ID

# 작업중인 사항을 임시저장
git stash

# 마지막으로 저장한 사항을 꺼내서 적용
git stash pop

# 저장한 작업목록 조회
git stash list

# 저장목록 전체 삭제
git stash clear

# tag 관련 명령어
# 가장 최신의 commit에 tag가 명시
git tag 태그버전명(v1.1)

# tag release : 코드의 commit, push와 상관없이 별개로 작업진행
git tag origin 태그버전명

# tag 목록 조회
git tag

# 브랜치 생성
# 현재 checkout 되어있는 브랜치를 기준으로 새로운 브랜치 생성
git branch 브랜치명
# 새로운 작업 시작 시에 main을 최신화 한 후에 main을 기준으로 branch 생성

# 브랜치생성과 전환을 동시에
git checkout -b 브랜치명

# 로컬 브랜치 삭제(원격은 별도 삭제)
git branch -D 브랜치명명