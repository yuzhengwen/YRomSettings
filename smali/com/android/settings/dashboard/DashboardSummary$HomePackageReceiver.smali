.class Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p2    # Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # invokes: Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$100(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method
