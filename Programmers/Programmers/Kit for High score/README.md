#  고득점 Kit (무지 어렵다🥵)
<details>
<summary> 1. 기능개발 </summary>
<div markdown="10">
    뒤에 있는 기능이 앞에 있는 기능보다 먼저 개발될 수 있고, 이때 뒤에 있는 기능은 앞에 있는 기능이 배포될 때 함께 배포된다. 

    `progresses` : 먼저 배포되어야 하는 순서대로 **작업의 진도가 적힌 정수 배열** 

    `speeds` : 각 **작업의 개발 속도가 적힌 정수 배열**

    제한사항 

    - 작업의 개수 ( `progreeses` , `speeds` 배열의 길이 ) 는 100개 이하
    - 작업 진도 100미만의 자연수
    - 작업 속도 100 이하의 자연수
    - 배포는 하루에 한 번만 할 수 있으며,하루의 끝에 이루어짐
        
        ex )  진도율은 95%인 작업,  개발 속도가 하루에 4% 배포는 2일 뒤에 이루어짐.
        

    이해 포인트

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

</div>
</details>


<details>
<summary>2. 모의고사</summary>
- 1번문제 ~ 마지막 문제 정답 순서대로 들은 배열 **answers** 가 주어졌을 때 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하는 solution 

제한조건 

- 시험 최대 10,000 문제
- 문제 정답 1, 2, 3, 4, 5 중 하나
- 가장 높은 점수를 받은 사람이 여럿일 경우, return 하는 값 오름차순 정렬
  ```Swift
  
    print("******[ 접근방식 풀이 증명 ]*******")
    // 정답지 a
    let a = [1, 3, 2, 4, 2]
    // 각각의 학생들이 반복적으로 답을 찍는 유형의 배열 3가지
    let studentA = [1, 2, 3, 4, 5]
    let studentB = [2, 1, 2, 3, 2, 4, 2, 5]
    let studentC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var sum: [Int] = [0, 0, 0]

    for i in 0..<a.count {
        let aIdx = i % studentA.count
        let bIdx = i % studentB.count
        let cIdx = i % studentC.count
        print("정답의 답:\(a[i])")
        if a[i] == studentA[aIdx] {
            sum[0] += 1
            print("학생 A: \(sum[0])")
        }
        if a[i] == studentB[bIdx] {
            sum[1] += 1
            print("학생 B: \(sum[1])")
        }
        if a[i] == studentC[cIdx] {
            sum[2] += 1
            print("학생 C: \(sum[2])")
        }
        print(sum)
    }

  ```
</details>