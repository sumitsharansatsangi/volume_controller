
group = "com.kurenai7968.volume_controller"
version = "1.0-SNAPSHOT"

repositories {
        google()
        mavenCentral()
    }

plugins {
    id("com.android.library")
}

android {
    namespace = "com.kurenai7968.volume_controller"

    compileSdk = 37
     
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_21
        targetCompatibility = JavaVersion.VERSION_21
    }
    defaultConfig {
        minSdk = 24
    }
}

