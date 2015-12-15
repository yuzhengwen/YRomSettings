.class Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;
.super Ljava/lang/Object;
.source "MSimSubscriptionStatus.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorNameUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
    .param p2    # Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;-><init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$OperatorNameUpdater;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    const-string v1, "operator_name"

    # invokes: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$200(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
