.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;
.super Ljava/lang/Object;
.source "PowerSaverSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1    # Landroid/widget/Switch;
    .param p2    # Z

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;->this$0:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->togglePowersaveEnable(Landroid/content/Context;)V

    return-void
.end method
