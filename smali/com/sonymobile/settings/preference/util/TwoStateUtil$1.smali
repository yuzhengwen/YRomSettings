.class Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "TwoStateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/util/TwoStateUtil;->createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    # getter for: Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$000(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    # getter for: Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;
    invoke-static {v4}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroid/preference/TwoStatePreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    # getter for: Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;
    invoke-static {v2}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v2, "com.sonymobile.settings.preference.SUMMARY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;->this$0:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    # getter for: Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;
    invoke-static {v2}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    const-string v3, "com.sonymobile.settings.preference.SUMMARY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
