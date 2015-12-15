.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;
.super Landroid/database/ContentObserver;
.source "ManagePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->updateRemoveButton()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$200(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$CommonContentObserver;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->startLoading()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$700(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    return-void
.end method
