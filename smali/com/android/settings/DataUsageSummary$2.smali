.class Lcom/android/settings/DataUsageSummary$2;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1    # [Ljava/lang/Void;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    # setter for: Lcom/android/settings/DataUsageSummary;->mBackgroundDataRestricted:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary;Z)Z

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1    # Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)V

    :cond_0
    return-void
.end method
