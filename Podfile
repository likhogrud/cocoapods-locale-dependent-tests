platform :ios, '10.0'
inhibit_all_warnings!

target 'CocoapodsLocaleDependentTests' do
    project 'CocoapodsLocaleDependentTests'
end

target 'TestsBundle' do
    project 'CocoapodsLocaleDependentTests'
    pod 'LocaleDependentLib', :path => "./LocaleDependentLib", :testspecs => ['Tests']
end

