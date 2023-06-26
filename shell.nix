{ pkgs ? import <nixpkgs> {
    config.android_sdk.accept_license = true;
    config.allowUnfree = true;
  } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    android-studio
    fdroidserver
  ];
  buildInputs = [ pkgs.jdk8 ];
  ANDROID_HOME="${pkgs.androidenv.androidPkgs_9_0.androidsdk}/libexec/android-sdk";
}
