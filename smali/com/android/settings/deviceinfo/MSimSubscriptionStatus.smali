.class public Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDataState:I

.field private mOperatorNameUpdateFilter:Landroid/content/IntentFilter;

.field private mOperatorNameUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShowLatestAreaInfo:Z

.field private mSigStrength:Landroid/preference/Preference;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)I
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1    # I

    new-instance v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)V

    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setIMEISummaryText(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "imei"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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
    .locals 5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v4, "network_type"

    invoke-direct {p0, v4, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateServiceState()V
    .locals 8

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

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

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f09012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f09012d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v8, 0x7f060019

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "subscription"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnCreate phoneId ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v10, 0x141

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f090111

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sUnknown:Ljava/lang/String;

    const-string v8, "signal_strength"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_6

    aget-object v4, v0, v2

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "ro.config.multimode_cdma"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const-string v8, "prl_version"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "esn_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "meid_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "min_number"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "min_number"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const v9, 0x7f090483

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    :cond_2
    const-string v8, "imei_sv"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    if-ne v8, v12, :cond_8

    const-string v8, "icc_id"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setIMEISummaryText(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v8, "number"

    invoke-direct {p0, v8, v1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mShowLatestAreaInfo:Z

    if-nez v8, :cond_5

    const-string v8, "latest_area_info"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_5
    new-instance v8, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;)V

    invoke-static {p0, v8}, Lcom/android/settings/deviceinfo/SimStatus;->createOperatorNameUpdateReceiver(Landroid/content/Context;Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mOperatorNameUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/SimStatus;->createOperatorNameFilter(I)Landroid/content/IntentFilter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mOperatorNameUpdateFilter:Landroid/content/IntentFilter;

    :cond_6
    return-void

    :cond_7
    const-string v8, "prl_version"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v8, "imei"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v8, "icc_id"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setIMEISummaryText(Ljava/lang/String;)V

    const-string v8, "imei_sv"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "esn_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v8, "meid_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v8, "min_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v8, "icc_id"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v8, "br"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-boolean v12, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mShowLatestAreaInfo:Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mOperatorNameUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateDataState()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mOperatorNameUpdateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mOperatorNameUpdateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSigStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090138

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090139

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
