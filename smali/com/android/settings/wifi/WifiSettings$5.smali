.class Lcom/android/settings/wifi/WifiSettings$5;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$202(Lcom/android/settings/wifi/WifiSettings;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;I)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f090367

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$202(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f090364

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$202(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f090365

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$202(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f090362

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$202(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f090366

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$202(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onSucceeded()V
    .locals 0

    return-void
.end method
