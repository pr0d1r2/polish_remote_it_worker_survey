shared_examples_for "questionaire" do

  describe "FIELDS" do
    subject { the_class::FIELDS }

    its(:size) { should == number_of_fields }
  end

  describe "TITLE" do
    subject { the_class::TITLE }

    its(:size) { should > 0 }
  end

  describe "NAME" do
    subject { the_class::NAME }

    its(:size) { should > 0 }
  end

  describe "DESCRIPTION" do
    subject { the_class::DESCRIPTION }

    its(:size) { should > 0 }
  end

  describe "class ancestors" do
    subject { the_class.ancestors }

    it { should include Questionaire }
  end

  describe "class" do
    subject { the_class }

    its(:table_name) { should == table_name }
  end

end
