.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;
.super Ljava/lang/Object;
.source "ManagePackages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->onClick(Landroid/app/Fragment;)V

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->isIgnored()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mPackageListAdapter:Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$100(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/PackageListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # invokes: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->updateRemoveButton()V
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$200(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    # getter for: Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->mUidsToIgnore:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->access$000(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
