# Exercise 5(but really 4) Part 1 (Exception Handling)

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # Could fail if external service is offline
  end
  def do_work
    # Amazing stuff...
  end
end


def audit_sanity(bedtime_mental_state)

  unless bedtime_mental_state.auditable?
    puts "error"
    return false
  end

  begin
    bedtime_mental_state.audit!
    MorningMentalState.new(:ok)
  rescue
    MorningMentalState.new(:not_ok)
  end
end

unless audit_sanity(bedtime_mental_state)
  new_state = audit_sanity(bedtime_mental_state)
end



# Exercise 5(really 4) Part 2 (Don't Return Null / Null Object Pattern)

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

class NullMentalState < MentalState ; end

def audit_sanity(bedtime_mental_state)

  return NullMentalState.new() unless bedtime_mental_state.auditable?

  begin
    bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  rescue
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work



# Exercise 5(na, its 4) Part 3 (Wrapping APIs)

require 'candy_service'

class Machine
  machine = CandyMachine.new
  machine.prepare

  def check_machine_readiness()
    if machine.ready?
      machine.make!
    else
      puts "sadness"
    end
  end
end

machine = Machine.new()
machine.check_machine_readiness()
