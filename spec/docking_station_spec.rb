require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  describe "#release_bike" do
    it 'gets a bike and expects the bike to be working' do
    station = DockingStation.new
    expect(station.release_bike).to be_working
    end
  end   
end




# alter docking station class so release_bike returns a new instance of the bike class