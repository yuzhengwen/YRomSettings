.class Lcom/android/settings/wifi/WpsDialog$WpsListener;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field private mSavedReason:I

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 4
    .param p1    # I

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-nez v2, :cond_0

    iput p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const v2, 0x7f090363

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v3, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f090365

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    const v2, 0x7f090367

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    const v2, 0x7f090364

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    const v2, 0x7f090366

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_5
    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const v3, 0x7f09035f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const v3, 0x7f09035e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    # getter for: Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const v3, 0x7f090360

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWpsDialog(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 2
    .param p1    # Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog$WpsListener;->onFailed(I)V

    iput v1, p0, Lcom/android/settings/wifi/WpsDialog$WpsListener;->mSavedReason:I

    :cond_0
    return-void
.end method
