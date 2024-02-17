IMAGE_PATH = "./images"

def main
  images = Dir.glob("#{IMAGE_PATH}/*.*")
  file1 = File.read(images[0]).unpack1('H*')
  file2 = File.read(images[1]).unpack1('H*')

  if file1 == file2
    puts 'ファイルは完全に一致しています。'
  else
    puts <<~TEXT
      ---------- file1の内容 ----------
      #{file1}
      \n
      ---------- file2の内容 ----------
      #{file2}
    TEXT
    puts 'ファイルは一致していません。'
  end
end

main
