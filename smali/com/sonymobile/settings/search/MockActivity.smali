.class public Lcom/sonymobile/settings/search/MockActivity;
.super Landroid/app/Activity;
.source "MockActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/search/MockActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
