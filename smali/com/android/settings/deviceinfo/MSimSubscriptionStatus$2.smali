.class Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    # setter for: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$402(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;I)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$500(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$600(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1    # Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$300(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1    # Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    return-void
.end method
