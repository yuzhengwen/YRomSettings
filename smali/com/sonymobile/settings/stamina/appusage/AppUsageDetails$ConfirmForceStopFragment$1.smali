.class Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;
.super Ljava/lang/Object;
.source "AppUsageDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->forceStopPackage()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->access$200(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V

    return-void
.end method
