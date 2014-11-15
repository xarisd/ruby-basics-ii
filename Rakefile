task default: %w[clean build show]

task :clean do
    `rm -rf presentation/slides`
end

task :build do
    `slideshow build presentation/ruby-basics.md -o presentation/slides -t reveal`
      `cp presentation/ruby-basics.css presentation/slides/`
end

task :show do
    `open presentation/slides/ruby-basics.html`
end

