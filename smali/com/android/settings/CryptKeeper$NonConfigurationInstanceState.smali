.class Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
.super Ljava/lang/Object;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonConfigurationInstanceState"
.end annotation


# instance fields
.field final failedAttempts:I

.field final wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;I)V
    .locals 0
    .param p1    # Landroid/os/PowerManager$WakeLock;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput p2, p0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->failedAttempts:I

    return-void
.end method
