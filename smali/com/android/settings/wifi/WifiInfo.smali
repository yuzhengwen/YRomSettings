.class public Lcom/android/settings/wifi/WifiInfo;
.super Landroid/preference/PreferenceActivity;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInfo;->addPreferencesFromResource(I)V

    return-void
.end method
