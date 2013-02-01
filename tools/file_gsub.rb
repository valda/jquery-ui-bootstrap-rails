#file_gsub.rb----------------------------------------
input_filename = ARGV[0]
output_filename = ARGV[1]
match_words = "url\(images\/"
replace_words = "url\(\/assets\/ui-bootstrap\/"

f=File.open(input_filename,"r")
buffer = f.read();
# p buffer
# gsub
p buffer.scan(match_words).length.to_s + "matched"
buffer.gsub!(match_words ,replace_words);
# p buffer
f=File.open(output_filename,"w")
f.write(buffer)
f.close()
p "Output to:" + output_filename
