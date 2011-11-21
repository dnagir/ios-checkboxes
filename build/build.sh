
pushd spec/dummy &&
bundle exec rake assets:clean RAILS_ENV=production &&
bundle exec rake assets:precompile:primary RAILS_ENV=production &&
popd &&
rm -rf build/output/* &&
cp -rf spec/dummy/public/assets build/output
