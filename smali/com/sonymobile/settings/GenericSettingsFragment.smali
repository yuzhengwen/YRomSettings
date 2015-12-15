.class public Lcom/sonymobile/settings/GenericSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GenericSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mHelpResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonymobile/settings/GenericSettingsFragment$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/GenericSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/GenericSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    iget v0, p0, Lcom/sonymobile/settings/GenericSettingsFragment;->mHelpResource:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v6, "extra_fragment_preference_xml"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    const-string v6, "xml"

    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_1
    if-eqz v0, :cond_0

    const-string v6, "extra_fragment_help_resource"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v5, "string"

    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_1
    iput v5, p0, Lcom/sonymobile/settings/GenericSettingsFragment;->mHelpResource:I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/GenericSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/GenericSettingsFragment;->customizePreferences()V

    :goto_2
    return-void

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    const-string v5, "GenericSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing valid extra_fragment_preference_xml="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
