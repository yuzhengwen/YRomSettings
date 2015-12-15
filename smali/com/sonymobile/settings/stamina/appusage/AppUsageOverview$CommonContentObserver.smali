.class Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;
.super Landroid/database/ContentObserver;
.source "AppUsageOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->startLoading()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;->access$500(Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;)V

    return-void
.end method
