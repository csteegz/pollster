class Option < ActiveRecord::Base

  def self.mass_create(csv_options, poll_id)
    csv_options.split("\n").map do |option|
      create(
        text: option,
        poll_id: poll_id,
        vote_count: 0,
      )
    end
  end

end
