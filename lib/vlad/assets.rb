set :shared_paths, {'assets' => 'public/assets'}.merge(shared_paths)

namespace :vlad do
  namespace :assets do
    desc 'Remove compiled assets'
    remote_task :clean do
      run "cd #{current_path} && RAILS_ENV=#{rails_env} #{rake_cmd} assets:clean"
    end

    desc 'Compile all the configured assets'
    remote_task :precompile do
      run "mkdir -p #{shared_path}/assets"
      run "cd #{current_path} && RAILS_ENV=#{rails_env} #{rake_cmd} assets:precompile"
    end
  end
end
