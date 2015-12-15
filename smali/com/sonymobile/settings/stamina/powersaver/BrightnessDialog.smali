.class Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

.field private mPower:Landroid/os/IPowerManager;

.field private mSavedBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mPower:Landroid/os/IPowerManager;

    return-void
.end method

.method private cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    return-void
.end method

.method private getBrightness()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setBrightess(I)V
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateBrightness()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected getSeekbarProgress()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->cleanup()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->cleanup()V

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v1, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget v3, v3, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->updateBrightness()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;

    return-void
.end method

.method protected setSeekbarProgress(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public show(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 5
    .param p1    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0400cf

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f01c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->getBrightness()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xeb

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f090030

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->updateBrightness()V

    return-void
.end method
