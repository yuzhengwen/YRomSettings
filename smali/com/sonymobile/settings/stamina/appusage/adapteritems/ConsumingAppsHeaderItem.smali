.class public Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;
.super Ljava/lang/Object;
.source "ConsumingAppsHeaderItem.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;


# instance fields
.field private mAppsCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;->mAppsCount:I

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;->getViewResourceId()I

    move-result v1

    invoke-virtual {p2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v1, 0x7f0f0036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0f0095

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0f01c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sonymobile/settings/stamina/appusage/adapteritems/ConsumingAppsHeaderItem;->mAppsCount:I

    if-lez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewResourceId()I
    .locals 1

    const v0, 0x7f0400cd

    return v0
.end method

.method public onClick(Landroid/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/app/Fragment;

    return-void
.end method
