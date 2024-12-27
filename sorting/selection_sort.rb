def selection_sort(array)
  # 陣列長度
  n = array.length

  # 外層迴圈：代表已排序部分的邊界
  (0...n).each do |i|
    # 假設當前位置的數字是最小值
    min_idx = i

    # 內層迴圈：在未排序部分找最小值
    (i + 1...n).each do |j|
      # 如果找到更小的數字，更新 min_idx
      min_idx = j if array[j] < array[min_idx]
    end

    # 如果最小值不是當前位置，則交換
    if min_idx != i
      array[i], array[min_idx] = array[min_idx], array[i]
    end

    # 印出每一步的排序過程
    puts "第 #{i + 1} 輪排序後：#{array.join(', ')}"
  end

  array
end

# 測試
array = [64, 34, 25, 12, 22, 11, 90]
puts "原始陣列：#{array.join(', ')}"
puts "開始排序..."
selection_sort(array)
puts "最終結果：#{array.join(', ')}"
