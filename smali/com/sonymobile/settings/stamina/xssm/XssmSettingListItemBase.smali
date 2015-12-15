.class abstract Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
.super Ljava/lang/Object;
.source "XssmSettingListItemBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;
.end method

.method protected abstract getApplicationIcon()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getLabel()Ljava/lang/CharSequence;
.end method

.method protected initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .param p3    # Landroid/view/View;

    const v4, 0x7f0f00cf

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0f0035

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->getActionIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0f01d6

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected onIconClick(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    return-void
.end method

.method protected onItemClick(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    return-void
.end method
