.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RadioInfo$23;,
        Lcom/android/settings/RadioInfo$CellInfoListRateHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    new-instance v0, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TD-SCDMA and WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TD-SCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TD-SCDMA and GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TD-SCDMA,GSM and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TD-SCDMA, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TD-SCDMA, WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TD-SCDMA, GSM/WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TD-SCDMA, GSM/WCDMA, CDMA and EvDo"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TD-SCDMA, LTE, CDMA, EvDo GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/settings/RadioInfo;)I
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->getStoredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isDisableDataIn2gEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/settings/RadioInfo;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->storeIsMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/settings/RadioInfo;)Z
    .locals 1
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->wasDataPreviouslyEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Landroid/telephony/CellLocation;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p0    # Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private getStoredNetworkMode()I
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getStoredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    goto :goto_0
.end method

.method private httpClientTest()V
    .locals 6

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :goto_1
    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isDisableDataIn2gEnabled()Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "disable_data_when_2g_only"

    const-string v4, "bool"

    const-string v5, "com.android.phone"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isImsRegRequired()Z
    .locals 2

    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final pingHostname()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    :try_start_0
    const-string v1, "74.125.47.104"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method private storeIsMobileDataEnabled(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mobile_data_prev_enabled_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCellInfoListRate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/android/settings/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateDataState()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const v3, 0x7f090133

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v3, 0x7f090132

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v3, 0x7f090131

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v3, 0x7f090134

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v6

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    const v3, 0x7f090136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1    # Landroid/telephony/DataConnectionRealTimeInfo;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 13
    .param p1    # Landroid/telephony/CellLocation;

    const/4 v12, -0x1

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    instance-of v9, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_2

    move-object v4, p1

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iget-object v10, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f09013a

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v2, v12, :cond_0

    const-string v9, "unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v11, 0x7f09013b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v1, v12, :cond_1

    const-string v9, "unknown"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    instance-of v9, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v9, :cond_8

    move-object v4, p1

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    iget-object v10, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v0, v12, :cond_3

    const-string v9, "unknown"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "SID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v8, v12, :cond_4

    const-string v9, "unknown"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "NID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v6, v12, :cond_5

    const-string v9, "unknown"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LAT = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v3, v12, :cond_6

    const-string v9, "unknown"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LONG = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v5, v12, :cond_7

    const-string v9, "unknown"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_8
    iget-object v9, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v10, "unknown"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090123

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f090122

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "gsm.network.type"

    const v3, 0x7f090135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/settings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const v3, 0x7f09012e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v3, 0x7f09012f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v3, 0x7f090130

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    const v6, 0x7f090135

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/settings/RadioInfo$3;

    invoke-direct {v4, p0}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;)V

    new-instance v3, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePowerState()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09011b

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    const v3, 0x7f090135

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateServiceState()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090135

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f09012c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const v4, 0x7f090128

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v4, 0x7f09012a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v4, 0x7f09012b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f09012d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

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

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSmsOverImsState()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f09011c

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private wasDataPreviouslyEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mobile_data_prev_enabled_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f04009c

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    :goto_0
    const v4, 0x7f0f0144

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    const v4, 0x7f0f00ec

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    const v4, 0x7f0f0155

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    const v4, 0x7f0f0145

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    const v4, 0x7f0f014f

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v4, 0x7f0f0150

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    const v4, 0x7f0f0151

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    const v4, 0x7f0f0152

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->network:Landroid/widget/TextView;

    const v4, 0x7f0f014a

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    const v4, 0x7f0f0153

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    const v4, 0x7f0f0154

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    const v4, 0x7f0f014b

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const v4, 0x7f0f014c

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    const v4, 0x7f0f014d

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    const v4, 0x7f0f014e

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    const v4, 0x7f0f0156

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->resets:Landroid/widget/TextView;

    const v4, 0x7f0f0157

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->attempts:Landroid/widget/TextView;

    const v4, 0x7f0f0158

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->successes:Landroid/widget/TextView;

    const v4, 0x7f0f0159

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    const v4, 0x7f0f015c

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    const v4, 0x7f0f015a

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    const v4, 0x7f0f015b

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    const v4, 0x7f0f0167

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    const v4, 0x7f0f0169

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    const v4, 0x7f0f0147

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    const v4, 0x7f0f0148

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    const v4, 0x7f0f0149

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    const v4, 0x7f0f015d

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v4, 0x7f0f015e

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f015f

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/settings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0160

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0162

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0163

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0146

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0165

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0166

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0168

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f016a

    invoke-virtual {p0, v4}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mCellInfoValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0901da

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const v0, 0x7f090124

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f090125

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f090126

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v1, 0x7f090127

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return v3
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x1

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isDisableDataIn2gEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->getStoredNetworkMode()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v4

    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSignalStrength()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateServiceState()V

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePowerState()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCellInfoListRate()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsRegRequiredState()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSmsOverImsState()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateLteRamDumpState()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateProperties()V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x24dc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
