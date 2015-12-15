.class public Lcom/sonymobile/settings/dsds/RingtoneSelect;
.super Landroid/preference/PreferenceActivity;
.source "RingtoneSelect.java"


# static fields
.field private static sSimLabels:[Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mSim1Ringtone:Landroid/preference/Preference;

.field private mSim2Ringtone:Landroid/preference/Preference;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;-><init>(Lcom/sonymobile/settings/dsds/RingtoneSelect;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/dsds/RingtoneSelect;

    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/sonymobile/settings/dsds/RingtoneSelect;

    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/dsds/RingtoneSelect;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0    # Lcom/sonymobile/settings/dsds/RingtoneSelect;
    .param p1    # I
    .param p2    # Landroid/preference/Preference;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private getNameWithLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRingtone()Landroid/net/Uri;
    .locals 1

    iget v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setTransparent()V
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .param p1    # I
    .param p2    # Landroid/preference/Preference;
    .param p3    # I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p3}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10404d2

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_2

    const v0, 0x10404d0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    new-instance v1, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;-><init>(Lcom/sonymobile/settings/dsds/RingtoneSelect;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->setTransparent()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->prepareRingtonePickerIntent()V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->lookupRingtoneNames()V

    const v2, 0x7f090a70

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim1_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim2_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getNameWithLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getNameWithLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected prepareRingtonePickerIntent()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getRingtone()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
