public class Resources {

    static let bundle: Bundle = {
        let parentBundle = Bundle(for: LocaleDependentLib.Resources.self)
        if let bundleUrl = parentBundle.resourceURL?.appendingPathComponent("LocaleDependentLib.bundle") {
            return Bundle(url: bundleUrl)!
        } else {
            return parentBundle
        }
    }()

    public enum Strings {
        public static let someString = NSLocalizedString("SomeKey", bundle: Resources.bundle, comment: "Some Localized String")
    }
}
