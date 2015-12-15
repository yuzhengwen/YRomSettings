.class public Lcom/sonymobile/settings/stamina/EstimationPreference;
.super Landroid/preference/Preference;
.source "EstimationPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0400c5

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setLayoutResource(I)V

    return-void
.end method

.method private setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Landroid/view/View;
    .param p3    # I

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimate(Landroid/content/Context;)I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f01b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v4, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmStandbyTimeEstimate(Landroid/content/Context;)I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0f01b9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090025

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStandbyTimeEstimate(Landroid/content/Context;Z)I

    move-result v2

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/16 v6, 0x8

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200fc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080032

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getColorFromResource(Landroid/content/Context;I)I

    move-result v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2, p1, v0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V

    invoke-direct {p0, v2, p1}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0f01ba

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0f01bb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateEstimates()V
    .locals 0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->notifyChanged()V

    return-void
.end method
