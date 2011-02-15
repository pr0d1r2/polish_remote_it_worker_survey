# coding: utf-8

require 'spec_helper'

describe DemographicQuestionaire do

  let(:the_class) { DemographicQuestionaire }
  let(:the_object) { the_class.new }

  should_belong_to :identity

  its(:title) { should == the_class::TITLE }

  its(:name) { should == the_class::NAME }

  its(:description) { should == the_class::DESCRIPTION }

  describe "#age_options" do
    let(:starting_age) { 1 }
    let(:ending_age) { 2 }
    subject do
      the_object.stub!(:starting_age => starting_age, :ending_age => ending_age)
      the_object.age_options
    end

    it { should == [ [1, 1], [2, 2] ] }
  end

  its(:age_label) { should == the_class::AGE_LABEL }

  describe "#male_options" do
    subject { the_object.male_options }

    it { should == [ [ 'mężczyzna', true ], [ 'kobieta', false ] ] }
  end

  its(:male_label) { should == the_class::MALE_LABEL }

  describe "#married_options" do
    subject { the_object.married_options }

    it { should == [ [ 'w związku małżeńskim', true ], [ 'wolny', false ] ] }
  end

  its(:married_label) { should == the_class::MARRIED_LABEL }

  describe "#children_count_options" do
    let(:starting_children_count) { 1 }
    let(:ending_children_count) { 2 }
    subject do
      the_object.stub!(
        :starting_children_count => starting_children_count,
        :ending_children_count => ending_children_count
      )
      the_object.children_count_options
    end

    it { should == [ [1, 1], [2, 2] ] }
  end

  its(:children_count_label) { should == the_class::CHILDREN_COUNT_LABEL }

  its(:function_label) { should == the_class::FUNCTION_LABEL }

  describe "#years_working_options" do
    let(:starting_years_working) { 1 }
    let(:ending_years_working) { 2 }
    subject do
      the_object.stub!(:starting_years_working => starting_years_working, :ending_years_working => ending_years_working)
      the_object.years_working_options
    end

    it { should == [ [1, 1], [2, 2] ] }
  end

  its(:workplace_label) { should == the_class::WORKPLACE_LABEL }

  describe "#hours_per_week_options" do
    let(:starting_hours_per_week) { 1 }
    let(:ending_hours_per_week) { 2 }
    subject do
      the_object.stub!(
        :starting_hours_per_week => starting_hours_per_week,
        :ending_hours_per_week => ending_hours_per_week
      )
      the_object.hours_per_week_options
    end

    it { should == [ [1, 1], [2, 2] ] }
  end

  its(:hours_per_week_label) { should == the_class::HOURS_PER_WEEK_LABEL }

  its(:starting_age) { should == the_class::STARTING_AGE }

  its(:ending_age) { should == the_class::ENDING_AGE }

  its(:starting_children_count) { should == the_class::STARTING_CHILDREN_COUNT }

  its(:ending_children_count) { should == the_class::ENDING_CHILDREN_COUNT }

  its(:starting_years_working) { should == the_class::STARTING_YEARS_WORKING }

  its(:ending_years_working) { should == the_class::ENDING_YEARS_WORKING }

  its(:starting_hours_per_week) { should == the_class::STARTING_HOURS_PER_WEEK }

  its(:ending_hours_per_week) { should == the_class::ENDING_HOURS_PER_WEEK }

end
