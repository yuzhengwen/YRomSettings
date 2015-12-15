.class Lcom/sonymobile/settings/phone/DataRoamingSettings$2;
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

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->getEuRoamingWarningState()Z
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->showEuRoamingWarning()V
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1100(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    # invokes: Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingSetting(Z)I
    invoke-static {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1200(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)I

    goto :goto_0
.end method
