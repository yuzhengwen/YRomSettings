.class Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/applications/InstalledAppDetails;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .param p1    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p2    # Landroid/content/pm/ApplicationInfo;
    .param p3    # I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    # getter for: Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetails;->access$1500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/app/admin/DevicePolicyManager;->isApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/app/admin/PolicyNotification;->showApplicationPolicyNotification(Landroid/content/Context;)V

    :goto_0
    return-object v6

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->mState:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0
.end method
