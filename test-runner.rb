for file in Dir['./test/*.rb']
    system('ruby ' + file)
end
