.class Lcom/sonymobile/settings/stamina/appusage/PackageList$3;
.super Ljava/lang/Object;
.source "PackageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/PackageList;->startLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->access$100(Lcom/sonymobile/settings/stamina/appusage/PackageList;)Landroid/os/Bundle;

    move-result-object v1

    # invokes: Lcom/sonymobile/settings/stamina/appusage/PackageList;->updateList(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->access$200(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/settings/stamina/appusage/PackageList;->mBundle:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->access$102(Lcom/sonymobile/settings/stamina/appusage/PackageList;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/settings/stamina/appusage/PackageList;->mLoaded:Z
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/PackageList;->access$302(Lcom/sonymobile/settings/stamina/appusage/PackageList;Z)Z

    return-void
.end method
