.class public Lcom/android/settings/yrom/YRom_About;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "YRom_About.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/android/settings/yrom/YRom_About;->addPreferencesFromResource(I)V

    return-void
.end method
