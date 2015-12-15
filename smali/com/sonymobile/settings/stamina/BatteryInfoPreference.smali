.class public Lcom/sonymobile/settings/stamina/BatteryInfoPreference;
.super Landroid/preference/Preference;
.source "BatteryInfoPreference.java"


# instance fields
.field private mBatteryText:Ljava/lang/String;

.field private mBatteryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const v0, 0x7f0400c3

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0f01b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateBatteryText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryInfoPreference;->mBatteryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
