.class public Lcom/android/settings/voice/VoiceInputSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentKey:Ljava/lang/String;

.field private mHelper:Lcom/android/settings/voice/VoiceInputHelper;

.field private mInteractorSummary:Ljava/lang/CharSequence;

.field private mInteractorWarning:Ljava/lang/CharSequence;

.field private mRecognizerSummary:Ljava/lang/CharSequence;

.field private mServicePreferenceCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/voice/VoiceInputSettings$1;

    invoke-direct {v0}, Lcom/android/settings/voice/VoiceInputSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/voice/VoiceInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initSettings()V
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Lcom/android/settings/voice/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    invoke-virtual {v1}, Lcom/android/settings/voice/VoiceInputHelper;->buildUi()V

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mServicePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentKey:Ljava/lang/String;

    :goto_0
    const/4 v6, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;

    new-instance v0, Lcom/android/settings/voice/VoiceInputPreference;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/voice/VoiceInputSettings;->mInteractorSummary:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/voice/VoiceInputSettings;->mInteractorWarning:Ljava/lang/CharSequence;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/voice/VoiceInputPreference;-><init>(Landroid/content/Context;Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;)V

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mServicePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v7, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;

    new-instance v0, Lcom/android/settings/voice/VoiceInputPreference;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/voice/VoiceInputSettings;->mRecognizerSummary:Ljava/lang/CharSequence;

    move-object v4, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/voice/VoiceInputPreference;-><init>(Landroid/content/Context;Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;)V

    iget-object v1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mServicePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentKey:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputSettings;->addPreferencesFromResource(I)V

    const-string v0, "voice_service_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputSettings;->mServicePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputSettings;->mInteractorSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907cc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputSettings;->mRecognizerSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907cd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputSettings;->mInteractorWarning:Ljava/lang/CharSequence;

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/Preference;

    instance-of v0, p1, Lcom/android/settings/voice/VoiceInputPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/voice/VoiceInputPreference;

    invoke-virtual {p1}, Lcom/android/settings/voice/VoiceInputPreference;->doClick()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/voice/VoiceInputSettings;->initSettings()V

    return-void
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .param p1    # Landroid/widget/Checkable;

    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputSettings;->mCurrentKey:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;

    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_interaction_service"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->settings:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    iget-object v4, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/voice/VoiceInputSettings;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;

    iget-object v2, v1, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_interaction_service"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
