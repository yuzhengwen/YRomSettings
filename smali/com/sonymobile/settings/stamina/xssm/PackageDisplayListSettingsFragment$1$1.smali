.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$1;
.super Ljava/lang/Object;
.source "PackageDisplayListSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$1;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1$1;->this$1:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    iget-object v0, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;->mAdapterApps:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-virtual {v0, p3}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->toggleTemporaryWhitelist(I)V

    return-void
.end method
