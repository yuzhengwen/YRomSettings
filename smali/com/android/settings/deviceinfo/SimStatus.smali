.class public Lcom/android/settings/deviceinfo/SimStatus;
.super Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;,
        Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;
    }
.end annotation


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mOperatorNameReceiver:Landroid/content/BroadcastReceiver;

.field private mOperatorNameUpdatedFilter:Landroid/content/IntentFilter;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1    # Landroid/telephony/SubscriptionInfo;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/SimStatus;->getOperatorName(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1    # Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/SimStatus;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public static createOperatorNameFilter(I)Landroid/content/IntentFilter;
    .locals 2
    .param p0    # I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    if-nez p0, :cond_0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.sonymobile.provider.Telephony.SPN2_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createOperatorNameUpdateReceiver(Landroid/content/Context;Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;

    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$5;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/SimStatus$5;-><init>(Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;)V

    return-object v0
.end method

.method private static getOperatorName(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Ljava/lang/String;

    const v3, 0x7f090083

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "gsm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "edge"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "gprs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v2, "\u200f2G"

    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "lte"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "\u200f4G"

    :cond_3
    const-string v4, "network_type"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updatePhoneInfos()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    const-string v1, "SimStatus"

    const-string v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Lcom/android/settings/deviceinfo/SimStatus$2;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 7

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v6, :cond_0

    const-string v3, "br"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "number"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "imei"

    invoke-direct {p0, v3, v1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imei_sv"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v3, :cond_2

    const-string v3, "latest_area_info"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f09012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f09012d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v3, 0x7f060017

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090111

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    const-string v3, "signal_strength"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    :goto_1
    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    const v3, 0x7f0400bd

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setContentView(I)V

    const v3, 0x1020012

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    const v3, 0x1020013

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/settings/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    new-instance v3, Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;-><init>(Lcom/android/settings/deviceinfo/SimStatus;Lcom/android/settings/deviceinfo/SimStatus$1;)V

    invoke-static {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->createOperatorNameUpdateReceiver(Landroid/content/Context;Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mOperatorNameReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "subscription"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/SimStatus;->createOperatorNameFilter(I)Landroid/content/IntentFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mOperatorNameUpdatedFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mOperatorNameReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcPreferenceActivity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mOperatorNameReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mOperatorNameUpdatedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1    # Landroid/telephony/SignalStrength;

    const/4 v9, 0x1

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eq v9, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const v5, 0x7f090a37

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
