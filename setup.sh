cd src
wget https://raw.githubusercontent.com/ethz-asl/rotors_simulator/master/rotors_hil.rosinstall
wstool merge rotors_hil.rosinstall
wstool update
touch rotors_simulator/rotors_hil_interface/CATKIN_IGNORE
cd ..

