.class Lcom/android/settings/sim/SimSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;II)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    iput p3, p0, Lcom/android/settings/sim/SimSettings$2;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mCallState:[I
    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$900(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$2;->val$i:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateCellularDataPreference()V
    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1000(Lcom/android/settings/sim/SimSettings;)V

    return-void
.end method
