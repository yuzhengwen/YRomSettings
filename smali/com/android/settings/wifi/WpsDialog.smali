.class public Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsDialog$5;,
        Lcom/android/settings/wifi/WpsDialog$WpsListener;,
        Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;,
        Lcom/android/settings/wifi/WpsDialog$DialogState;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mMsgString:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

.field private mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSetup:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsDialog$1;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WpsDialog;
    .param p1    # Lcom/android/settings/wifi/WpsDialog$DialogState;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WpsDialog;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WpsDialog;)Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WpsDialog;
    .param p1    # Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090361

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/settings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/android/settings/wifi/WpsDialog$DialogState;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog$4;-><init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040100

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f0289

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f09035d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f028a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f028c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    const v3, 0x7f0903a0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/wifi/WpsDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WpsDialog$2;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v2, "android:dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android:dialogMsg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android:wpsDialog:fragment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "android:wpsDialog:fragment"

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;->getWpsListener()Lcom/android/settings/wifi/WpsDialog$WpsListener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    const-string v2, "android:dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const-string v2, "android:dialogMsg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/settings/wifi/WpsDialog$WpsListener;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WpsDialog$WpsListener;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    new-instance v2, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;->setWpsListener(Lcom/android/settings/wifi/WpsDialog$WpsListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    const-string v4, "android:wpsDialog:fragment"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v2, "android:dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const-string v2, "android:dialogMsg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:dialogState"

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "android:dialogMsg"

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android:wpsDialog:fragment"

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsDialogFragment:Lcom/android/settings/wifi/WpsDialog$WpsDialogFragment;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    return-object v0
.end method

.method protected onStart()V
    .locals 7

    const-wide/16 v2, 0x3e8

    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsDialog$3;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WpsDialog$WpsListener;->setWpsDialog(Lcom/android/settings/wifi/WpsDialog;)V

    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-ne v0, v1, :cond_2

    new-instance v6, Landroid/net/wifi/WpsInfo;

    invoke-direct {v6}, Landroid/net/wifi/WpsInfo;-><init>()V

    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSetup:I

    iput v0, v6, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    invoke-virtual {v0, v6, v1}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Lcom/android/settings/wifi/WpsDialog$WpsListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WpsDialog$WpsListener;->setWpsDialog(Lcom/android/settings/wifi/WpsDialog;)V

    return-void
.end method
