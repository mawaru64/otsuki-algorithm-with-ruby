def p_judgement(x)
  # some judgement code
end

def binary_search(left, right)
  while right - left > 1
    mid = left + (right - left) / 2
    if p_judgement(mid)
      right = mid
    else
      left = mid
    end
  end

  right
end
