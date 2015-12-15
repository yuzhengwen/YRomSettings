.class public Lcom/sonymobile/settings/preference/CheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private final mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    return-void
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v2}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->hasResumeActions()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onAttachedToActivity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/CheckBoxPreference;->mTwoStateUtil:Lcom/sonymobile/settings/preference/util/TwoStateUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onResume()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
