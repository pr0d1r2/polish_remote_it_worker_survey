require 'spec_helper'

describe EasDAdultQuestionaire do

  let(:the_class) { EasDAdultQuestionaire }
  let(:number_of_fields) { 20 }
  let(:table_name) { "eas_d_adult_questionaires" }

  it_should_behave_like "questionaire"

end
