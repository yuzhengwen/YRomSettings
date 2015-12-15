.class public Lcom/sonymobile/settings/stamina/StaminaSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StaminaSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

.field private mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

.field private mQueueBgData:Landroid/preference/SwitchPreference;

.field private mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$3;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$3;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$2;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/StaminaSettings;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->updateBatteryLevel(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/EstimationPreference;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    return-object v0
.end method

.method private isQueueBgDataUiEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showNothingSetDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.intent.action.STAMINA_NOTHING_SET_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateBatteryLevel(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->updateBatteryText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f09000b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f060056

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->addPreferencesFromResource(I)V

    const-string v3, "estimation"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/EstimationPreference;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v3, v5}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setSelectable(Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isQueuingAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "queue_bg_data"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isQueueBgDataUiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    invoke-direct {v3, p0, v2}, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    invoke-static {v0, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :goto_1
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "powersave"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "usm"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.sonymobile.intent.extra.POWER_INTENT_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "show-useless-dialog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->showNothingSetDialog()V

    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    invoke-virtual {v3, v5}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->setShouldDisableView(Z)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    invoke-virtual {v3, v5}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->setEnabled(Z)V

    :goto_2
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->areConsumingAppsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "battery_usage"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonymobile/settings/stamina/FeedbackPreference;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    return-void

    :cond_5
    const-string v3, "queue_bg_data"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    :cond_6
    const-string v3, "stamina"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    goto :goto_1

    :cond_7
    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isQueueBgDataUiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgDataListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isQueuingEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSelectable(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryLevelPreference:Lcom/sonymobile/settings/stamina/BatteryInfoPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/EstimationPreference;->updateEstimates()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mQueueBgData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSelectable(Z)V

    goto :goto_0
.end method
