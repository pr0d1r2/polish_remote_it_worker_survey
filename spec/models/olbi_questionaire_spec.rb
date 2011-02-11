require 'spec_helper'

describe OlbiQuestionaire do

  let(:the_class) { OlbiQuestionaire }
  let(:number_of_fields) { 16 }
  let(:table_name) { "olbi_questionaires" }

  it_should_behave_like "questionaire"

end
