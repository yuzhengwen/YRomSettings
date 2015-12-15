.class Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;
.super Ljava/lang/Object;
.source "UltraStaminaMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->toggleUsm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    # invokes: Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->recreateAndShowUsmNotReadyDialog()V
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->access$000(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    :cond_0
    return-void
.end method
