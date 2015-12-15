.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mNumSlots:I

.field private static mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataDisableToastDisplayed:Z

.field private inActivity:Z

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mNumSims:I

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPreferredDataSubscription:J

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecommMgr:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/sim/SimSettings$4;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/sim/SimSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$5;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataPreference()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimSettings;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findPhoneAccountHandleBySubId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mTelecommMgr:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/sim/SimSettings;J)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)J
    .locals 2
    .param p0    # Lcom/android/settings/sim/SimSettings;

    iget-wide v0, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/settings/sim/SimSettings;J)J
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/sim/SimSettings;I)I
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/settings/sim/SimSettings;)I
    .locals 2
    .param p0    # Lcom/android/settings/sim/SimSettings;

    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings;)[I
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method private createPreferences()V
    .locals 9

    const/4 v8, 0x1

    const v4, 0x7f06003a

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    const-string v4, "select_primary_sub"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v4, "sim_cards"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    new-instance v4, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-le v4, v8, :cond_1

    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    new-instance v5, Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v6, v3, v7, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Landroid/os/Handler;I)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private findPhoneAccountHandleBySubId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 7
    .param p1    # I

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mTelecommMgr:Landroid/telecom/TelecomManager;

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, p1, :cond_0

    move-object v0, v2

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1    # I

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    .locals 7
    .param p1    # J

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1    # I
    .param p2    # I

    move v0, p1

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1    # I

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v2, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isCallStateIdle()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private listen()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    aget v3, v1, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v4, v1, v5

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    aput v4, v3, v0

    aget v3, v1, v5

    invoke-direct {p0, v0, v3}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimEnablers()V

    return-void
.end method

.method private updateCallValues()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    :cond_0
    iget v6, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method private updateCellularDataPreference()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f090210

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    :cond_0
    if-ne v0, v3, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method private updateCellularDataValues()V
    .locals 4

    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataPreference()V

    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v4, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    :cond_0
    iget v6, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v6

    int-to-long v2, v6

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
    .locals 12
    .param p1    # Lcom/android/settings/notification/DropDownPreference;

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v10, "sim_calls"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "sim_sms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v9, "SimSettings"

    const-string v10, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    if-eqz v8, :cond_3

    iget v10, v8, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v11, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-ne v10, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-le v4, v9, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090a3b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_7

    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    new-instance v9, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v9, p0, v5}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V

    invoke-virtual {v5, v9}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto :goto_1
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "SimSettings"

    const-string v3, "on onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mTelecommMgr:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    sput v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->listen()V

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/settings/sim/SimSettings;->mPreferredDataSubscription:J

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->unRegisterPhoneStateListener()V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->dataDisableToastDisplayed:Z

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->cleanUp()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    instance-of v0, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->inActivity:Z

    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initLTEPreference()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method
