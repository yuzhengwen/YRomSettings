.class Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;
.super Ljava/lang/Object;
.source "XssmWhitelistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f01d8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->access$000(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->onItemClick(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->access$000(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    goto :goto_0
.end method
