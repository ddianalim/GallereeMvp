//
//  Post.swift
//  GallereeMvp
//
//  Created by Diana Lim on 7/15/16.
//  Copyright © 2016 dianalimnos. All rights reserved.
//


import Foundation

/*import Bond
import ConvenienceKit
import Parse

class Post : PFObject, PFSubclassing {
    
    static var imageCache: NSCacheSwift<String, UIImage>!
    
    var image: Observable<UIImage?> = Observable(nil)
    var photoUploadTask: UIBackgroundTaskIdentifier?
    var likes: Observable<[PFUser]?> = Observable(nil)
    
    @NSManaged var imageFile: PFFile?
    @NSManaged var user: PFUser?
    
    
    //MARK: PFSubclassing Protocol
    
    static func parseClassName() -> String {
        return "Post"
    }
    
    override init () {
        super.init()
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
            Post.imageCache = NSCacheSwift<String, UIImage>()
        }
    }
    
    
    func uploadPost() {
        
        if let image = image.value {
            
            photoUploadTask = UIApplication.sharedApplication().beginBackgroundTaskWithExpirationHandler {
                () -> Void in
                UIApplication.sharedApplication().endBackgroundTask(self.photoUploadTask!)
            }
            
            let imageData = UIImageJPEGRepresentation(image, 0.8)
            guard let imageFile = PFFile(data: imageData!) else {return}
            imageFile.saveInBackgroundWithBlock(ErrorHandling.errorHandlingCallback)
            
            user = PFUser.currentUser()
            self.imageFile = imageFile
            saveInBackgroundWithBlock {
                (success: Bool, error: NSError?) -> Void in
                UIApplication.sharedApplication().endBackgroundTask(self.photoUploadTask!)
            }
        }
    }
    
    func downloadImage() {
        
        image.value = Post.imageCache[self.imageFile!.name]
        
        // if image is not downloaded yet, get it
        if (image.value == nil) {
            
            imageFile?.getDataInBackgroundWithBlock { (data: NSData?, error: NSError?) -> Void in
                if let error = error {
                    ErrorHandling.defaultErrorHandler(error)
                }
                if let data = data {
                    let image = UIImage(data: data, scale:1.0)!
                    self.image.value = image
                    // 2
                    Post.imageCache[self.imageFile!.name] = image
                }
            }
        }
    }
}*/