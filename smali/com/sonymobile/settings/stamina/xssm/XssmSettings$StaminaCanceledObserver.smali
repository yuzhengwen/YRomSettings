.class Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;
.super Landroid/database/ContentObserver;
.source "XssmSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaminaCanceledObserver"
.end annotation


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;->mCanceled:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmSettings$StaminaCanceledObserver;->mCanceled:Z

    return-void
.end method
