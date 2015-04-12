describe Peep do

  context 'Demonstration of how datamapper works' do

    it 'should be created and then retrieved from the db' do
      expect(Peep.count).to eq(0)
      Peep.create(content: 'Makers Academy')
      expect(Peep.count).to eq(1)
      Peep = Peep.first
      expect(Peep.content).to eq('Makers Academy')
      Peep.destroy
      expect(Peep.count).to eq(0)
    end

  end

end