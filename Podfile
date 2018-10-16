# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

def model_pods
    shared_pods
    pod 'Alamofire'
    pod 'Moya/RxSwift'
    pod 'Gloss'
    pod 'AlamofireImage'
end

def app_pods
    shared_pods
    pod 'Fabric'
    pod 'Crashlytics'
    pod 'SnapKit'
    pod 'IHKeyboardAvoiding', :git => 'https://github.com/Kirow/IHKeyboardAvoiding.git', :branch => 'swift-4.2'
    pod 'MXParallaxHeader'
    pod 'Hero'
    pod 'MZFormSheetPresentationController'
    pod 'TTTAttributedLabel'
    pod 'Tabman'
    pod 'pop'
    pod 'BonMot'
    pod 'MBProgressHUD'
    pod 'SpinKit'
end

def testing_pods
    inherit! :search_paths
    pod 'Quick'
    pod 'Nimble'
    pod 'RxBlocking'
    
end

def shared_pods
    use_frameworks!
    inhibit_all_warnings!
    pod 'Boomerang', :git => "https://github.com/synesthesia-it/Boomerang.git", :branch => "master"
    pod 'Localize-Swift'
    pod 'DateToolsSwift'
    pod 'RxSwift'
    pod 'RxCocoa'
    pod 'SwiftLint'
    pod 'Action'
end

target 'ModelLayer' do
    model_pods
    target 'ModelLayerTests' do
        testing_pods
    end
end

#Add each app target to this array
['App'].each do |t|
    
    target t do
        use_frameworks!
        app_pods
        target t + "Tests" do
            testing_pods
        end
    end
end

