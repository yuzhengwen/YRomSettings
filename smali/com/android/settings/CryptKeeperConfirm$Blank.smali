.class public Lcom/android/settings/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# static fields
.field private static START_ENCRYPTION_INTERNAL:I

.field private static START_ENCRYPTION_INTERNAL_AND_SDCARD:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/CryptKeeperConfirm$Blank;->START_ENCRYPTION_INTERNAL:I

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/CryptKeeperConfirm$Blank;->START_ENCRYPTION_INTERNAL_AND_SDCARD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private processIddEvent(III)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I

    :try_start_0
    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->newBuilder()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setFunction(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    invoke-static {p2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setInternalState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    invoke-static {p3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->setSdcardState(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    invoke-virtual {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->build()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CryptKeeper"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeperConfirm$Blank;->setContentView(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->finish()V

    :cond_0
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    const/high16 v2, 0x3770000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sdcard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/CryptKeeperConfirm$Blank;->START_ENCRYPTION_INTERNAL_AND_SDCARD:I

    :goto_0
    invoke-direct {p0, v2, v3, v3}, Lcom/android/settings/CryptKeeperConfirm$Blank;->processIddEvent(III)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/CryptKeeperConfirm$Blank$1;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/settings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    sget v2, Lcom/android/settings/CryptKeeperConfirm$Blank;->START_ENCRYPTION_INTERNAL:I

    goto :goto_0
.end method
