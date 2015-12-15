.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;
.super Ljava/lang/Object;
.source "XssmSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1    # Landroid/widget/Switch;
    .param p2    # Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isRuntimeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->registerStaminaCanceledObserver()V
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$000(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)V

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->toggleStamina(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # setter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z
    invoke-static {v1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$202(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonymobile.intent.action.STAMINA_NOTHING_SET_DIALOG"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ActivatedFromXssmSettings"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mActivatedByNothingSetDialog:Z
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$100(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # setter for: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->mUserPressedStaminaSwitch:Z
    invoke-static {v1, p2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$202(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)Z

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$4;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmSettings;

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->isStaminaEnabled()Z
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$300(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;)Z

    move-result v2

    # invokes: Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->setUiEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettings;->access$400(Lcom/sonymobile/settings/stamina/xssm/XssmSettings;Z)V

    goto :goto_1
.end method
