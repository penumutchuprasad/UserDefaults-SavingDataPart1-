import UIKit

//For Profile Information
struct Profile {
    
    var name: String
    var email: String
    var mobileNumber: Int
    var isPremiumMember: Bool
    var avatar: Data
    var age: Int
    var blog: URL?
    var weight: Double
}

enum ProfileInfo: String {
    
    case name
    case email
    case mobileNumber
    case isPremiumMember
    case avatar
    case age
    case blog
    case weight
    
    var key: String {
        return self.rawValue
    }
}

let userDefaults = UserDefaults.standard
let myProfile = Profile(name: "Leela Krishna", email: "abcdef@gmail.com", mobileNumber: 34325464654, isPremiumMember: false, avatar: Data(), age: 27, blog: URL(string: "https://medium.com/@pleelaprasad")!, weight: 70.35)

print("Before Storing to Defaults")
print("_______________________________________")
print(myProfile)
print("****************************************************")

//Storing

userDefaults.set(myProfile.name, forKey: ProfileInfo.name.key)
userDefaults.set(myProfile.email, forKey: ProfileInfo.email.key)
userDefaults.set(myProfile.mobileNumber, forKey: ProfileInfo.mobileNumber.key)
userDefaults.set(myProfile.isPremiumMember, forKey: ProfileInfo.isPremiumMember.key)
userDefaults.set(myProfile.avatar, forKey: ProfileInfo.avatar.key)
userDefaults.set(myProfile.age, forKey: ProfileInfo.age.key)
userDefaults.set(myProfile.blog, forKey: ProfileInfo.blog.key)
userDefaults.set(myProfile.weight, forKey: ProfileInfo.weight.key)

//Retrieving

var name = userDefaults.value(forKey: ProfileInfo.name.key) as! String
var email = userDefaults.value(forKey: ProfileInfo.email.key) as! String
var mobile = userDefaults.integer(forKey: ProfileInfo.mobileNumber.key)
var isPremiumMember = userDefaults.bool(forKey: ProfileInfo.isPremiumMember.key)
var avatar = userDefaults.value(forKey: ProfileInfo.avatar.key) as! Data
var age = userDefaults.integer(forKey: ProfileInfo.age.key)
var blog = userDefaults.url(forKey: ProfileInfo.blog.key)
var weight = userDefaults.double(forKey: ProfileInfo.weight.key)

print("After Retrieving from Defaults")
print("_______________________________________")
let retrievedProfile = Profile(name: name, email: email, mobileNumber: mobile, isPremiumMember: isPremiumMember, avatar: avatar, age: age, blog: blog, weight: weight)
print(retrievedProfile)
print("****************************************************")

//Changing Values

isPremiumMember = true
userDefaults.set(isPremiumMember, forKey: ProfileInfo.isPremiumMember.key)

//Removal

userDefaults.removeObject(forKey: ProfileInfo.blog.key)

// Now the profile
var name1 = userDefaults.value(forKey: ProfileInfo.name.key) as! String
var email1 = userDefaults.value(forKey: ProfileInfo.email.key) as! String
var mobile1 = userDefaults.integer(forKey: ProfileInfo.mobileNumber.key)
var isPremiumMember1 = userDefaults.bool(forKey: ProfileInfo.isPremiumMember.key)
var avatar1 = userDefaults.value(forKey: ProfileInfo.avatar.key) as! Data
var age1 = userDefaults.integer(forKey: ProfileInfo.age.key)
var blog1 = userDefaults.url(forKey: ProfileInfo.blog.key)
var weight1 = userDefaults.double(forKey: ProfileInfo.weight.key)

print("After Retrieving from Defaults")
print("_______________________________________")
let changedProfile = Profile(name: name1, email: email1, mobileNumber: mobile1, isPremiumMember: isPremiumMember1, avatar: avatar1, age: age1, blog: blog1, weight: weight1)
print(changedProfile)
print("****************************************************")
