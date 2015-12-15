.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;
.super Ljava/lang/Object;
.source "IgnorePackageItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# instance fields
.field private mIgnored:Z

.field private mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;)V
    .locals 1
    .param p1    # Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getUid()I

    move-result v2

    check-cast p1, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;

    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->getViewResourceId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v3, 0x7f0f000d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0f0035

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0f0096

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getViewResourceId()I
    .locals 1

    const v0, 0x7f0400ca

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mPackageInfo:Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public isIgnored()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 3
    .param p1    # Landroid/app/Fragment;

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/IgnorePackageItem;->mIgnored:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
