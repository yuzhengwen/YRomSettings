.class public Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;
.super Landroid/app/Fragment;
.source "UltraStaminaMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mUsmNotReadyDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$3;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$3;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->recreateAndShowUsmNotReadyDialog()V

    return-void
.end method

.method private getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 11
    .param p1    # Landroid/content/res/Resources;
    .param p2    # I

    const v10, 0x7f100001

    const/high16 v9, 0x7f100000

    const/4 v8, 0x1

    const/4 v7, 0x0

    div-int/lit8 v1, p2, 0x18

    rem-int/lit8 v3, p2, 0x18

    if-nez v1, :cond_0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    if-nez v3, :cond_1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private isUsmEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private recreateAndShowUsmNotReadyDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    :goto_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method

.method private setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Landroid/view/View;
    .param p3    # I

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimate(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f01b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmStandbyTimeEstimate(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0f01b9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090025

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v8, 0x7f0400d9

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f01d5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v8, 0x7f0f01d4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->isUsmEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f09007f

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    :cond_0
    if-eqz p3, :cond_3

    const-string v8, "usmNotReadyDialogIsShown"

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->recreateAndShowUsmNotReadyDialog()V

    :cond_1
    new-instance v8, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;-><init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;-><init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0f01b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200fc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f080032

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->getColorFromResource(Landroid/content/Context;I)I

    move-result v0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0, v8, v7, v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V

    const v8, 0x7f0f01ba

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v8, 0x7f0f01bb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v8, 0x7f0f01b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    instance-of v8, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_2
    return-object v7

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "usmNotReadyDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
