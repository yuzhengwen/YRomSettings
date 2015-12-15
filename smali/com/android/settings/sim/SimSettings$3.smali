.class Lcom/android/settings/sim/SimSettings$3;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$simPref:Lcom/android/settings/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v1, v2

    :goto_0
    const-string v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling setCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sim_cellular_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    :cond_0
    :goto_1
    return v6

    :cond_1
    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sim_calls"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v2

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->findPhoneAccountHandleBySubId(I)Landroid/telecom/PhoneAccountHandle;
    invoke-static {v2, v1}, Lcom/android/settings/sim/SimSettings;->access$1100(Lcom/android/settings/sim/SimSettings;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mTelecommMgr:Landroid/telecom/TelecomManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$3;->val$simPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sim_sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto/16 :goto_1
.end method
