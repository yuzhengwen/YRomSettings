.class Lcom/sonymobile/settings/phone/DataRoamingSettings$1;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 7
    .param p1    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2    # Z

    const v6, 0x16204a98

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isDataRoamingDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V
    invoke-static {v4, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$400(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V

    :goto_1
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    if-nez p2, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showDataRoamingWarning()V
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showNationalDataRoamingWarning(I)V
    invoke-static {v4, v6}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$600(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showInternationalDataRoamingWarning(I)V
    invoke-static {v4, v6}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$700(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showRoamingBlockedNotification()V
    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V
    invoke-static {v4, v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$400(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V

    goto :goto_1
.end method
