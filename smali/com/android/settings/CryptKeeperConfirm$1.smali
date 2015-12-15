.class Lcom/android/settings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v6, v2}, Lcom/android/settings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "somc.intent.action.ACTION_ENCRYPTION_TRIGGERED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_0
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    const-string v6, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "CryptKeeperConfirm"

    const-string v7, "Error storing locale for decryption UI"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
