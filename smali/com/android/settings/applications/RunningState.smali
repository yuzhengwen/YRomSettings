.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    iget v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p0    # Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0    # Lcom/android/settings/applications/RunningState;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/app/ActivityManager;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p4    # Lcom/android/settings/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_0

    iget v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v5, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v5, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v3, :cond_3

    iget-object v1, v3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    :goto_1
    if-nez v1, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v5, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    if-nez v2, :cond_8

    new-instance v2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v4}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    if-nez v3, :cond_6

    new-instance v4, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v5, v1}, Lcom/android/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    :cond_6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .param p0    # Landroid/content/Context;

    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .param p1    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v0, 0x1

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/pm/PackageItemInfo;

    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 64
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/app/ActivityManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/16 v18, 0x0

    const/16 v60, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v52

    if-eqz v52, :cond_1

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v11

    :goto_0
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    if-ge v0, v11, :cond_3

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v60, v0

    if-nez v60, :cond_2

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v60, v0

    if-nez v60, :cond_2

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v26, v26, -0x1

    add-int/lit8 v11, v11, -0x1

    :cond_0
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v60, v0

    and-int/lit8 v60, v60, 0x8

    if-eqz v60, :cond_0

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v26, v26, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v47

    if-eqz v47, :cond_4

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    if-ge v0, v9, :cond_5

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    new-instance v62, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v60 .. v62}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    if-ge v0, v11, :cond_7

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_6

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v60, v0

    if-lez v60, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v13, :cond_6

    const/16 v60, 0x1

    move/from16 v0, v60

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v60, v0

    if-eqz v60, :cond_6

    const/16 v60, 0x1

    move/from16 v0, v60

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_7
    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v0, v11, :cond_13

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_b

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v60, v0

    if-lez v60, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v60, v0

    if-nez v60, :cond_b

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x12c

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_b

    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    :goto_7
    if-eqz v13, :cond_9

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v60, v0

    if-nez v60, :cond_8

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v60

    if-eqz v60, :cond_a

    :cond_8
    const/16 v55, 0x1

    :cond_9
    if-eqz v55, :cond_b

    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    if-nez v48, :cond_c

    new-instance v48, Ljava/util/HashMap;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v46, :cond_d

    const/16 v18, 0x1

    new-instance v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_12

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v42, v0

    :goto_9
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    move/from16 v0, v42

    move/from16 v1, v60

    if-eq v0, v1, :cond_10

    const/16 v18, 0x1

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    move/from16 v0, v60

    move/from16 v1, v42

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-eqz v60, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    :cond_e
    if-eqz v42, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v42

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f
    move/from16 v0, v42

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_10
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    :cond_11
    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v60

    or-int v18, v18, v60

    goto/16 :goto_8

    :cond_12
    const/16 v42, 0x0

    goto :goto_9

    :cond_13
    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    if-ge v0, v9, :cond_18

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v46, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v46, :cond_14

    const/16 v18, 0x1

    new-instance v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v60, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v60

    if-eqz v60, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v60

    if-nez v60, :cond_16

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    :cond_17
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_19
    if-eqz v19, :cond_1a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    :cond_1b
    const/16 v60, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    :cond_1c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v61

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v60, v0

    if-eqz v60, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v60

    if-nez v60, :cond_1f

    :cond_1e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v26, v26, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_1f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v6, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v60

    or-int v18, v18, v60

    :cond_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    :cond_22
    const/16 v58, 0x0

    const/16 v26, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_23
    :goto_11
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_29

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_26

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-nez v60, :cond_24

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    :cond_24
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_25
    :goto_12
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_23

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_25

    const/16 v18, 0x1

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_26
    const/16 v18, 0x1

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->size()I

    move-result v60

    if-nez v60, :cond_28

    if-nez v58, :cond_27

    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v58

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-eqz v60, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    :cond_29
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_10

    :cond_2a
    if-eqz v58, :cond_2b

    const/16 v26, 0x0

    :goto_13
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, v58

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Integer;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    :cond_2b
    if-eqz v18, :cond_40

    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    const/16 v26, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/util/HashMap;

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_2f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v60, 0x7fffffffffffffffL

    move-wide/from16 v0, v60

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2c
    :goto_16
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_2e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v60, v0

    if-eqz v60, :cond_2d

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v60, v0

    and-int/lit8 v60, v60, 0x1

    if-eqz v60, :cond_2d

    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    :cond_2d
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    if-eqz v60, :cond_2c

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v60, v0

    if-eqz v60, :cond_2c

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v62, v0

    cmp-long v60, v60, v62

    if-lez v60, :cond_2c

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v60, v0

    move-wide/from16 v0, v60

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    :cond_2e
    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_2f
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_14

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v60, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    const/16 v26, 0x0

    :goto_17
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_39

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-lez v60, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_18
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_34

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    move/from16 v0, v31

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    const/16 v31, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    if-eqz v60, :cond_33

    if-eqz v29, :cond_32

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v60

    if-eq v0, v1, :cond_32

    const/16 v23, 0x0

    :cond_32
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v29, v0

    goto :goto_18

    :cond_33
    const/16 v23, 0x0

    goto :goto_18

    :cond_34
    if-eqz v23, :cond_35

    if-eqz v29, :cond_35

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->size()I

    move-result v61

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_37

    :cond_35
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v29

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_36

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    :cond_36
    move-object/from16 v0, v41

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    move/from16 v30, v22

    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    add-int/lit8 v60, v60, -0x1

    move/from16 v0, v30

    move/from16 v1, v60

    if-ge v0, v1, :cond_37

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v30, v30, 0x1

    goto :goto_1a

    :cond_37
    const/16 v60, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v60

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_1b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_17

    :cond_38
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v26, 0x0

    :goto_1c
    move/from16 v0, v26

    if-ge v0, v8, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v60, v0

    if-nez v60, :cond_3b

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->size()I

    move-result v60

    if-gtz v60, :cond_3b

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    if-nez v60, :cond_3a

    new-instance v60, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    invoke-direct/range {v60 .. v61}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_3a
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1c

    :cond_3c
    const/16 v60, 0x0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v35

    move/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/16 v26, 0x0

    :goto_1e
    move/from16 v0, v26

    if-ge v0, v12, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_3e

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    :cond_3e
    add-int/lit8 v26, v26, 0x1

    goto :goto_1e

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    monitor-enter v61

    :try_start_0
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/16 v26, 0x0

    :goto_1f
    move/from16 v0, v26

    if-ge v0, v10, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_43

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x190

    move/from16 v0, v60

    move/from16 v1, v61

    if-lt v0, v1, :cond_41

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/lit8 v26, v26, 0x1

    goto :goto_1f

    :catchall_0
    move-exception v60

    :try_start_1
    monitor-exit v61
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v60

    :cond_41
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0xc8

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_42

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_42
    const-string v60, "RunningState"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Unknown non-service process: "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " #"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_43
    add-int/lit8 v40, v40, 0x1

    goto :goto_20

    :cond_44
    const-wide/16 v14, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v50, 0x0

    const/16 v32, 0x0

    const/16 v36, 0x0

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v43, v0

    const/16 v26, 0x0

    :goto_21
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    aput v60, v43, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_21

    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v49

    const/16 v16, 0x0

    const/16 v26, 0x0

    move-object/from16 v33, v32

    :goto_22
    :try_start_3
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v60, v0

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    aget-wide v60, v49, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-wide/from16 v2, v60

    move/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v60

    or-int v18, v18, v60

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_46

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0

    add-long v50, v50, v60

    move-object/from16 v32, v33

    :goto_23
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v33, v32

    goto :goto_22

    :cond_46
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x190

    move/from16 v0, v60

    move/from16 v1, v61

    if-lt v0, v1, :cond_4e

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0

    add-long v14, v14, v60

    if-eqz v33, :cond_48

    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v29

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_47

    const/16 v60, 0x1

    :goto_24
    or-int v21, v21, v60

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v32, v33

    :goto_25
    const/16 v60, 0x1

    :try_start_4
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_23

    :cond_47
    const/16 v60, 0x0

    goto :goto_24

    :cond_48
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v16

    move/from16 v1, v60

    if-ge v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_4d

    :cond_49
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v17, 0x0

    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4b

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_4a

    const/16 v60, 0x1

    :goto_27
    or-int v21, v21, v60

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    :cond_4a
    const/16 v60, 0x0

    goto :goto_27

    :cond_4b
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v29

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_4c

    const/16 v60, 0x1

    :goto_28
    or-int v21, v21, v60

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_25

    :catch_0
    move-exception v60

    :goto_29
    if-nez v32, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    move/from16 v1, v37

    if-le v0, v1, :cond_51

    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v17, 0x0

    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_50

    const/16 v60, 0x1

    :goto_2b
    or-int v21, v21, v60

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    :cond_4c
    const/16 v60, 0x0

    goto :goto_28

    :cond_4d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v32, v33

    goto/16 :goto_25

    :cond_4e
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0xc8

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_5a

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v24, v24, v60

    move-object/from16 v32, v33

    goto/16 :goto_23

    :cond_4f
    move-object/from16 v32, v33

    goto/16 :goto_29

    :cond_50
    const/16 v60, 0x0

    goto :goto_2b

    :cond_51
    if-eqz v32, :cond_52

    if-nez v21, :cond_53

    move-object/from16 v36, v32

    :cond_52
    const/16 v26, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_2c

    :cond_53
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v26, 0x0

    :goto_2d
    move/from16 v0, v26

    if-ge v0, v7, :cond_55

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v60

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_2e
    add-int/lit8 v26, v26, 0x1

    goto :goto_2d

    :cond_54
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/16 v26, 0x0

    :goto_2f
    move/from16 v0, v26

    if-ge v0, v12, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_56

    const/16 v60, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    :cond_56
    add-int/lit8 v26, v26, 0x1

    goto :goto_2f

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    monitor-enter v61

    :try_start_8
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    if-eqz v32, :cond_58

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v60, v0

    if-eqz v60, :cond_58

    const/16 v18, 0x1

    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v60, v0

    if-nez v60, :cond_59

    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->notifyAll()V

    :cond_59
    monitor-exit v61

    return v18

    :catchall_1
    move-exception v60

    monitor-exit v61
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v60

    :catch_1
    move-exception v60

    move-object/from16 v32, v33

    goto/16 :goto_29

    :cond_5a
    move-object/from16 v32, v33

    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .param p1    # Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
