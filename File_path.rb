require "./image_array.rb"
puts "Enter the Image path or leave blank to use a defult Image"
file_path = gets.chomp

if file_path == ''
	file_path = 'sample.jpg'
#open an image array at the given file path
img = ImageArray.new(file_path)


"effect = nil
while true"

puts "What Effect? (bw, Magenta,Photo Negative)"
effect = gets.chomp
if effect == "bw"
	#Code to make Image Array B/W
	img.each do |row|
		row.each do|pixel|
		pixel_grey = (pixel.red + pixel.blue + pixel.green)/3
		pixel.red = pixel_grey
		pixel.blue = pixel_grey
		pixel.green = pixel_grey
		end
	end
elsif effect == "Magenta"
	#Code to make Image Array Inv
	img.each do |row|
		row.each do |pixel|
		pixel.green = img.max_intensity
		pixel.blue = img.max_intensity
		end
	end
elsif effect == "Photo Negative"
	#Code ot make Image Array Blur
	img.each do |row|
		row.each do |pixel|
		pixel.red = pixel.red
		pixel.red = img.max_intensity - pixel.red
		pixel.green = pixel.green
		pixel.green = img.max_intenisty - pixel.green
		pixel.blue = pixel.blue
		pixel.blue = img.max_intensity - pixel.blue
		end
	end
else
	puts "Not a valid effect"
end
#Write the File Back
if effect == "bw"
	img.write("./BW_#{file_path}")
elsif effect == "Magenta"
	img.write("./MG_#{file_path}")
elsif effect == "Photo Negative"
	img.write("./PN_#{filepath}")
end
 


