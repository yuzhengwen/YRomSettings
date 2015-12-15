.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
.super Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
.source "PackageDisplayInfo.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabelString:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;-><init>()V

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    instance-of v1, p1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3
    .param p1    # Landroid/view/View;

    const v1, 0x7f0f01d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f01d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method protected getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected bridge synthetic getLabel()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .param p3    # Landroid/view/View;

    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;)V

    const v1, 0x7f0f00cf

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->removePackageFromWhitelist(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->removeItemFromList(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)V

    return-void
.end method
