.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;
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

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->newInstance(Ljava/util/ArrayList;)Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ignore"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
