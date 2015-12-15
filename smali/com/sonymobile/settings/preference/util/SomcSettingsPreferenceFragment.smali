.class public Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SomcSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/PreferencesAdder;


# instance fields
.field private mResumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected customizeOnResume()V
    .locals 3

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected customizePreferences()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->hasListView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    new-instance v1, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;-><init>(Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v0}, Lcom/sonymobile/settings/preference/util/DependOn;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->mResumeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizePreferences()V

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->customizeOnResume()V

    return-void
.end method
