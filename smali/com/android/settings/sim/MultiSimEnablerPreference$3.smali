.class Lcom/android/settings/sim/MultiSimEnablerPreference$3;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/MultiSimEnablerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "_id"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "columnName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "intContent"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_SUBINFO_CONTENT_CHANGE on subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$400(Lcom/android/settings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mCmdInProgress:Z
    invoke-static {v4}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$500(Lcom/android/settings/sim/MultiSimEnablerPreference;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    const-string v4, "sub_state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$600(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, v3, :cond_2

    if-ne v2, v7, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v4}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$700(Lcom/android/settings/sim/MultiSimEnablerPreference;)Z

    move-result v4

    if-eq v4, v7, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v4}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$700(Lcom/android/settings/sim/MultiSimEnablerPreference;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings/sim/MultiSimEnablerPreference;->processSetUiccDone()V
    invoke-static {v4}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$800(Lcom/android/settings/sim/MultiSimEnablerPreference;)V

    :cond_2
    return-void
.end method
