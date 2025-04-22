n = int(input())
A = list(map(int, input().split()))

def calculate_total_distance(A, meeting_point):
  """
  특정 집을 회의 장소로 정했을 때, 모든 사람들의 이동 거리의 합을 계산하는 함수

  Args:
    A: 각 집에 사는 사람의 수를 담은 리스트
    meeting_point: 회의 장소가 될 집의 인덱스 (0부터 시작)

  Returns:
    모든 사람들의 이동 거리의 합
  """
  total_distance = 0
  for i in range(n):
    distance = abs(i - meeting_point)
    total_distance += distance * A[i]
  return total_distance

# 모든 가능한 회의 장소에 대해 이동 거리의 합 계산
min_distance = None
for i in range(n):
  distance = calculate_total_distance(A, i)
  if min_distance is None or distance < min_distance:
    min_distance = distance

print(min_distance)