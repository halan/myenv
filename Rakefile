def say phrase
  puts "\e[0;32m---> #{phrase}\e[0m"
end

namespace :install do
  task :janus do
    say 'Installing Janus'
    `curl -Lo- https://bit.ly/janus-bootstrap | bash`
    Rake::Task['custom:vimrc'].invoke
  end 

  task :'oh-my-zsh' do
    say 'Installing Oh My Zsh'
    `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`
    Rake::Task['custom:zshrc'].invoke
    Rake::Task['custom:theme'].invoke
  end

  task :rvm do
    `curl -L https://get.rvm.io | bash -s stable --ruby`
  end

  task :dependencies do
    `./dependencies`
  end
end

namespace :custom do
  def copy_conf src, dest
    say "Copying #{src} => #{dest}"
    FileUtils.cp File.join(File.dirname(__FILE__), src), File.expand_path("~/#{dest}")
  end

  task :vimrc     do copy_conf 'vimrc',     '.vimrc.before' end
  task :zshrc     do copy_conf 'zshrc',     '.zshrc'        end
  task :gitconfig do copy_conf 'gitconfig', '.gitconfig'    end
  task :theme do
    copy_conf 'zsh/themes/halan.zsh-theme', '.oh-my-zsh/themes/halan.zsh-theme'
  end

  task :all => [:vimrc, :zshrc, :gitconfig]
end

desc 'Install dependencies, janus, oh-my-zsh, rvm and confs'
task :install => [:'install:dependencies', :'install:janus', :'install:oh-my-zsh', :'custom:gitconfig'] do
  puts <<-DOC
    \e[0;32m
    Restart your shell and enjoy it!
    --------------------------------
    \e[0m
  DOC
end
