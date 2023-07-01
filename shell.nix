{ pkgs ? import <nixpkgs> {
    config.android_sdk.accept_license = true;
    config.allowUnfree = true;
  } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    android-studio # The Official IDE for Android (stable channel)
    fdroidserver # Server and tools for F-Droid, the Free Software repository system for Android
    git # Distributed version control system
    yq-go # Portable command-line YAML processor
  ];
  buildInputs= with pkgs; [
    jdk8 # The open-source Java Development Kit
  ];
  ANDROID_HOME="${pkgs.androidenv.androidPkgs_9_0.androidsdk}/libexec/android-sdk";
}
