# Jest test 실행의 병렬성을 확인하기 위한 프로젝트.

* 결론: 파일 단위로는 병렬로 실행되고, 파일 안에 테스트는 순차적으로 실행된다.

- 그리고 각각의 xxx.test.js 는 별도의 process로 돌기 때문에 같은 모듈을 사용해도 상태를 공유하지 않고 각각 처리한다.
(incNum 이라는 상태 값을 sumsub.test와 muldiv.test가 코드적으로는 공유하지만 각각 별도의 메모리 값으로 증가시킨다.)

- 테스트 순서는 앞의 테스트가 끝나야 다음 테스트가 실행된다.

- describe() 로 묶어도 나오는 순서대로 테스트가 실행된다.