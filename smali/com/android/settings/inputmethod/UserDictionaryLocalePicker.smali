.class public Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# instance fields
.field private mKillThisFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 1
    .param p1    # Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->mKillThisFragment:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
