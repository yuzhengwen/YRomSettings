.class public Lcom/android/settings/AppListSwitchPreference;
.super Lcom/android/settings/AppListPreference;
.source "AppListSwitchPreference.java"


# instance fields
.field private mSwitch:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    const v1, 0x7f0a003b

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "AppListSwitchPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to show dialog with zero entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
