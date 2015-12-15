.class Lcom/android/settings/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1    # Landroid/widget/AdapterView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->getStoredNetworkMode()I
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$4600(Lcom/android/settings/RadioInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$4400(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-gt p3, v2, :cond_0

    if-eq v1, p3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->isDisableDataIn2gEnabled()Z
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$4700(Lcom/android/settings/RadioInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p3, v5, :cond_2

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v3, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataEnabled()Z

    move-result v3

    # invokes: Lcom/android/settings/RadioInfo;->storeIsMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;Z)V

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4, p3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->wasDataPreviouslyEnabled()Z
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$4900(Lcom/android/settings/RadioInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->storeIsMobileDataEnabled(Z)V
    invoke-static {v2, v4}, Lcom/android/settings/RadioInfo;->access$4800(Lcom/android/settings/RadioInfo;Z)V

    iget-object v2, p0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;

    return-void
.end method
