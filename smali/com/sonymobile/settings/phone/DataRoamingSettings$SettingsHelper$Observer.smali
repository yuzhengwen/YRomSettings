.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "DataRoamingSettings.SettingsHelper.Observer"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v1, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const-string v2, "data_roaming"

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi(Ljava/lang/String;I)V
    invoke-static {v1, v2, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2800(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 5

    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v3, v3, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const-string v0, "data_roaming"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v3, v3, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$3400(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$3500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
