# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bed.delete_all
Booking.delete_all

# Seed the beds for all rooms in the hostel

	$i = 1
	$beds_in_A = 20

	while $i <= $beds_in_A  do
		Bed.create(:room => "A",
		:number => $i,
		:bed_label => "A " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_B = 20

	while $i <= $beds_in_B  do
		Bed.create(:room => "B",
		:number => $i,
		:bed_label => "B " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_C = 16

	while $i <= $beds_in_C  do
		Bed.create(:room => "C",
		:number => $i,
		:bed_label => "C " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_D = 10

	while $i <= $beds_in_D  do
		Bed.create(:room => "D",
		:number => $i,
		:bed_label => "D " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_E = 6

	while $i <= $beds_in_E  do
		Bed.create(:room => "E",
		:number => $i,
		:bed_label => "E " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_F = 16

	while $i <= $beds_in_F  do
		Bed.create(:room => "F",
		:number => $i,
		:bed_label => "F " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_G = 16

	while $i <= $beds_in_G  do
		Bed.create(:room => "G",
		:number => $i,
		:bed_label => "G " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_H = 18

	while $i <= $beds_in_H  do
		Bed.create(:room => "H",
		:number => $i,
		:bed_label => "H " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_L1 = 8

	while $i <= $beds_in_L1  do
		Bed.create(:room => "L1",
		:number => $i,
		:bed_label => "L1 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_L2 = 4

	while $i <= $beds_in_L2  do
		Bed.create(:room => "L2",
		:number => $i,
		:bed_label => "L2 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_M1 = 6

	while $i <= $beds_in_M1  do
		Bed.create(:room => "M1",
		:number => $i,
		:bed_label => "M1 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_M2 = 6

	while $i <= $beds_in_M2  do
		Bed.create(:room => "M2",
		:number => $i,
		:bed_label => "M2 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_R1 = 6

	while $i <= $beds_in_R1  do
		Bed.create(:room => "R1",
		:number => $i,
		:bed_label => "R1 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_R2 = 4

	while $i <= $beds_in_R2  do
		Bed.create(:room => "R2",
		:number => $i,
		:bed_label => "R2 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_Green = 1

	while $i <= $beds_in_Green  do
		Bed.create(:room => "Green",
		:number => $i,
		:bed_label => "Green " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_Black = 1

	while $i <= $beds_in_Black  do
		Bed.create(:room => "Black",
		:number => $i,
		:bed_label => "Black " + $i.to_s,
		)
		$i +=1
	end

#... Create Guests ... ... ... ...

require 'random_data'

Guest.delete_all

	$i = 1
	$gests_ammount = 20
	while $i <= $gests_ammount do
		name = Random.firstname + " " + Random.lastname
		Guest.create(:name => name,
		:locker => rand(1..15),
		:nights => rand(1..4),
		:price => rand(20..100),
		:deposit => [10,20].sample,
		)
		$i +=1
	end
