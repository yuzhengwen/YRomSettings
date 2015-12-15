.class Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;
    }
.end annotation


# instance fields
.field public mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 2

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/phone/DataRoamingSettings;
    .param p2    # Lcom/sonymobile/settings/phone/DataRoamingSettings$1;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    return-void
.end method


# virtual methods
.method public getDataRoaming()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string v1, "data_roaming"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$3100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v4, "DataRoamingSettings.SettingsHelper"

    const-string v5, "getDataRoaming"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataRoaming(Z)V
    .locals 6
    .param p1    # Z

    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$3200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$3300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
