.class final Lcom/android/settings/deviceinfo/SimStatus$5;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimStatus;->createOperatorNameUpdateReceiver(Landroid/content/Context;Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->val$cb:Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.sonymobile.provider.Telephony.SPN2_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v7, "plmn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "spn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "showPlmn"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "showSpn"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_1
    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->getOperatorName(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v5, v6, v4, v3}, Lcom/android/settings/deviceinfo/SimStatus;->access$1300(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus$5;->val$cb:Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;

    invoke-interface {v7, v2}, Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;->call(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
