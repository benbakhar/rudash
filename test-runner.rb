errors = 0

for file in Dir['./test/*.rb']
    status = system('ruby ' + file)
    if (status == false)
        errors += 1
    end
end

exit_code = (errors != 0 ? 1 : 0)
p "------------------------"
p "exited with #{exit_code}"
exit(exit_code)
