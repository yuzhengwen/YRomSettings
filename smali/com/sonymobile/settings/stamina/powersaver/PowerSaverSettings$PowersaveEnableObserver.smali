.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;
.super Landroid/database/ContentObserver;
.source "PowerSaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowersaveEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # getter for: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$1100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    # invokes: Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V
    invoke-static {v2, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->access$1200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Z)V

    :cond_0
    return-void
.end method
