.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$2;
.super Ljava/lang/Object;
.source "ManagePackages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method
