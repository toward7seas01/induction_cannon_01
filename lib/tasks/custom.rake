task :gs1 do
  system("git instaweb --httpd=webrick --port=8626")
end

task :gs2 do
  system("git instaweb --httpd=webrick --stop")
end