# Modified version of a code named: Mangler
# Modified by: Devon Ceccacci
# Modified date: Oct-9-2023


@name = "Johanna Jackson"

def reverse_name_order(fullName)
  splitName = fullName.split
  reversedSplitName = splitName.reverse
  combinedReversedName = reversedSplitName.join(' ')
  return combinedReversedName
end

def add_borg_to_name(fullName)
  fullName << " Borg"
  return fullName
end

def print_name_reverse_order(name)
  puts "New name: #{reverse_name_order(@name)}"
end

def print_name_with_borg(name)
  puts "New borg name: #{add_borg_to_name(@name)}"
end

# --- Printing Statements Below ----
print_name_reverse_order(@name)
print_name_with_borg(@name)
