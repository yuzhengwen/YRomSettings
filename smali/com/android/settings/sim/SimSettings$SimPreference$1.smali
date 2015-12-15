.class Lcom/android/settings/sim/SimSettings$SimPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$dialogLayout:Landroid/view/View;

    const v4, 0x7f0f00ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$1300(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$1300(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    int-to-long v4, v2

    # invokes: Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    invoke-static {v3, v4, v5}, Lcom/android/settings/sim/SimSettings;->access$1400(Lcom/android/settings/sim/SimSettings;J)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    int-to-long v4, v2

    # invokes: Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubscriptionInfo;
    invoke-static {v3, v4, v5}, Lcom/android/settings/sim/SimSettings;->access$1400(Lcom/android/settings/sim/SimSettings;J)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v3, v3, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$800(Lcom/android/settings/sim/SimSettings;)V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    return-void
.end method
