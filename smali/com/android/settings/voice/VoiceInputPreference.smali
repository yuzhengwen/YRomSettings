.class public final Lcom/android/settings/voice/VoiceInputPreference;
.super Landroid/preference/Preference;
.source "VoiceInputPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;
    }
.end annotation


# instance fields
.field private final mAlertText:Ljava/lang/CharSequence;

.field private final mAppLabel:Ljava/lang/CharSequence;

.field private final mLabel:Ljava/lang/CharSequence;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSettingsComponent:Landroid/content/ComponentName;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # Ljava/lang/CharSequence;
    .param p5    # Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/voice/VoiceInputPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/voice/VoiceInputPreference$1;-><init>(Lcom/android/settings/voice/VoiceInputPreference;)V

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputPreference;->setLayoutResource(I)V

    iput-object p5, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    iget-object v0, p2, Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;->appLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mAppLabel:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mAlertText:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    iget-object v0, p2, Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/settings/voice/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/android/settings/voice/VoiceInputPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/voice/VoiceInputPreference;)Landroid/content/ComponentName;
    .locals 1
    .param p0    # Lcom/android/settings/voice/VoiceInputPreference;

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private displayAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9
    .param p1    # Landroid/content/DialogInterface$OnClickListener;
    .param p2    # Landroid/content/DialogInterface$OnClickListener;

    const/4 v8, 0x1

    const-string v3, "VoiceInputPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying data alert for :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mAlertText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/voice/VoiceInputPreference;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/voice/VoiceInputPreference$4;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/voice/VoiceInputPreference$4;-><init>(Lcom/android/settings/voice/VoiceInputPreference;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private shouldDisplayAlert()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mAlertText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0f012f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v5}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v4, v1}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    iput-object v1, p0, Lcom/android/settings/voice/VoiceInputPreference;->mRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f0f0130

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/android/settings/voice/VoiceInputPreference$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/voice/VoiceInputPreference$2;-><init>(Lcom/android/settings/voice/VoiceInputPreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0131

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/settings/voice/VoiceInputPreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/voice/VoiceInputPreference$3;-><init>(Lcom/android/settings/voice/VoiceInputPreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputPreference;->updateCheckedState(Z)V

    return-object v3
.end method

.method makeCurrentChecked(Landroid/widget/Checkable;)V
    .locals 3
    .param p1    # Landroid/widget/Checkable;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/voice/VoiceInputPreference;->updateCheckedState(Z)V

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputPreference;->callChangeListener(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-boolean v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings/voice/VoiceInputPreference;->updateCheckedState(Z)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/voice/VoiceInputPreference;->shouldDisplayAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/voice/VoiceInputPreference$5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/voice/VoiceInputPreference$5;-><init>(Lcom/android/settings/voice/VoiceInputPreference;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings/voice/VoiceInputPreference$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/voice/VoiceInputPreference$6;-><init>(Lcom/android/settings/voice/VoiceInputPreference;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/voice/VoiceInputPreference;->displayAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputPreference;->makeCurrentChecked(Landroid/widget/Checkable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/voice/VoiceInputPreference;->updateCheckedState(Z)V

    goto :goto_0
.end method

.method updateCheckedState(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
