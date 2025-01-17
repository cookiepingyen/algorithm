def binary_search(array, target)
  left = 0
  right = array.length - 1

  while left <= right
    mid = (left + right) / 2

    if array[mid] == target
      return mid # 找到目標值，回傳索引
    elsif array[mid] < target
      left = mid + 1 # 目標在右半部分
    else
      right = mid - 1 # 目標在左半部分
    end
  end

  -1 # 若找不到目標，回傳 -1
end

puts binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5)
