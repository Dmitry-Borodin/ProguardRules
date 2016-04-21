# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\programs\android_SDK/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

#retrofit 2
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions
-dontwarn okio.**

#Picasso
-dontwarn com.squareup.okhttp.**

# Needed for Parcelable/SafeParcelable Creators to not get stripped
-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

#Gson specific classes
-keep class sun.misc.Unsafe { *; }
#for GSON to convert - keep models
#-keep class com.krenvpravo.swelp.models.api_objects.** { *; } //address of converted models

#Retrolambda
-dontwarn java.lang.invoke.*

#Coordinator layout and design support lib
-keep public class * extends android.support.design.widget.CoordinatorLayout$Behavior { *; }

#Realm requirements. Not used right now
-keep class io.realm.annotations.RealmModule
-keep @io.realm.annotations.RealmModule class *
-keep class io.realm.internal.Keep
-keep @io.realm.internal.Keep class * { *; }
-dontwarn javax.**
-dontwarn io.realm.**

#ButterKnife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }
-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}
-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

#Fabric.io crashlytics
#-keep class com.crashlytics.** { *; } - needed only for speed up?
#-keep class com.crashlytics.android.**
-keepattributes SourceFile,LineNumberTable
-keepattributes *Annotation*
-keep public class * extends java.lang.Exception
-printmapping mapping.txt

# RxJava
-dontwarn rx.internal.util.unsafe.**
-keep class rx.schedulers.Schedulers {
    public static <methods>;
}
-keep class rx.schedulers.ImmediateScheduler {
    public <methods>;
}
-keep class rx.schedulers.TestScheduler {
    public <methods>;
}
-keep class rx.schedulers.Schedulers {
    public static ** test();
}

# Android Support Library
-keep class android.support.** { *; }
-keep class android.databinding.** { *; }

