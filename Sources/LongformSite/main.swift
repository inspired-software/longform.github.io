import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct LongformSite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://longform.dev")!
    var name = "Longform"
    var description = "A longform documentation generator for Swift. This project is in early development."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try LongformSite().publish(
    withTheme: .foundation,
    additionalSteps: [
        .copyFile(at: "CNAME"),
    ]
)
