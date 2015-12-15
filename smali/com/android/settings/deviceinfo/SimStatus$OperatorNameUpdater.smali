.class Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/SimStatus$OperatorNameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorNameUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;Lcom/android/settings/deviceinfo/SimStatus$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p2    # Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus$OperatorNameUpdater;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    const-string v1, "operator_name"

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/settings/deviceinfo/SimStatus;->access$300(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
