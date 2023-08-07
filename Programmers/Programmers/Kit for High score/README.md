#  고득점 Kit (무지 어렵다🥵)

### 기능개발 

뒤에 있는 기능이 앞에 있는 기능보다 먼저 개발될 수 있고, 이때 뒤에 있는 기능은 앞에 있는 기능이 배포될 때 함께 배포된다. 

`progresses` : 먼저 배포되어야 하는 순서대로 **작업의 진도가 적힌 정수 배열** 

`speeds` : 각 **작업의 개발 속도가 적힌 정수 배열**

제한사항 

- 작업의 개수 ( `progreeses` , `speeds` 배열의 길이 ) 는 100개 이하
- 작업 진도 100미만의 자연수
- 작업 속도 100 이하의 자연수
- 배포는 하루에 한 번만 할 수 있으며,하루의 끝에 이루어짐
    
    ex )  진도율은 95%인 작업,  개발 속도가 하루에 4% 배포는 2일 뒤에 이루어짐.
    

### 이해 포인트

- **작업 진도 100미만**의 자연수
- **작업 속도 100 이하**의 자연수
- **배열의 가장 앞의 작업이 완료된 경우에만 배포**가 가능
- **작업 배열, 개발(작업) 속도를 Queue(선입선출: FIFO)** 생각
    - 먼저 들어온 것이 먼저 나가는 구조
    1. 맨 앞의 작업을 확인 : 해당 작업 완료 후
        
        → 작업 큐와 개발 속도 큐에서 제거 배포된 기능 개수를 증가 
        
    2. 다시 앞에 놓인 작업 확인 : 해당 작업 완료 안되어 있으면 1번  반복  
    3. 작업 배열의 진도 업데이트 
    4. 오늘 배포된 기능 개수가 0이 아니라면, 결과리스트에 추가
