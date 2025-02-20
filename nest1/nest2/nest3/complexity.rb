class ComplexExample
  def initialize(data)
    @data = data
  end

  def process
    result = []
    @data.each do |item|
      case item[:type]
      when 'A'
        if item[:value] > 10
          if item[:status] == 'active'
            result << process_type_a(item)
          else
            if item[:flag]
              result << "Flagged: #{item[:id]}"
            end
          end
        else
          result << "Skipped: #{item[:id]}"
        end
      when 'B'
        if item[:category] == 'X'
          if item[:priority] > 5
            result << process_type_b(item)
          else
            result << "Low priority: #{item[:id]}"
          end
        elsif item[:category] == 'Y'
          result << "Different Category: #{item[:id]}"
        else
          if item[:flag]
            result << "Uncategorized but flagged: #{item[:id]}"
          end
        end
      else
        if item[:value] < 5
          if item[:status] == 'inactive'
            if item[:flag]
              result << "Inactive flagged: #{item[:id]}"
            end
          else
            result << "Unknown: #{item[:id]}"
          end
        end
      end
    end
    result
  end

  private

  def process_type_a(item)
    if item[:meta] && item[:meta][:deep] && item[:meta][:deep][:check]
      "Processed A: #{item[:id]} with deep meta"
    else
      "Processed A: #{item[:id]}"
    end
  end

  def process_type_b(item)
    case item[:subtype]
    when 'sub1'
      "Processed B: #{item[:id]} (Sub1)"
    when 'sub2'
      "Processed B: #{item[:id]} (Sub2)"
    else
      "Processed B: #{item[:id]} (Other)"
    end
  end
end
