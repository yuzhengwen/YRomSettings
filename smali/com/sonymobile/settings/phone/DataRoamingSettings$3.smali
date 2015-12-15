.class Lcom/sonymobile/settings/phone/DataRoamingSettings$3;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const v2, 0x16204a9a

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showInternationalDataRoamingWarning(I)V
    invoke-static {v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$700(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$300(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # getter for: Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const v2, 0x16204a99

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showNationalDataRoamingWarning(I)V
    invoke-static {v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$600(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V
    invoke-static {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1300(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDatatRoamingPreferenceSetting(I)I
    invoke-static {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1400(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)I

    goto :goto_0
.end method
