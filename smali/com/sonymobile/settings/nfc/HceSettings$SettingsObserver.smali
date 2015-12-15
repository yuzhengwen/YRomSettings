.class Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/HceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    # getter for: Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->access$100(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->updateDefaultRoute()V

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    # invokes: Lcom/sonymobile/settings/nfc/HceSettings;->refresh()V
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->access$200(Lcom/sonymobile/settings/nfc/HceSettings;)V

    return-void
.end method
