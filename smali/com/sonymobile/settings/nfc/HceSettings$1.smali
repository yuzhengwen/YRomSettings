.class Lcom/sonymobile/settings/nfc/HceSettings$1;
.super Landroid/os/Handler;
.source "HceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/HceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceSettings$1;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings$1;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    # invokes: Lcom/sonymobile/settings/nfc/HceSettings;->refresh()V
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceSettings;->access$200(Lcom/sonymobile/settings/nfc/HceSettings;)V

    return-void
.end method
