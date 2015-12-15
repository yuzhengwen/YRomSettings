.class public Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
.super Ljava/lang/Object;
.source "AppUsagePackageInfo.java"


# static fields
.field private static dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private mCpuUsage:J

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLastUsed:J

.field private mNetworkData:J

.field private mPackageName:Ljava/lang/String;

.field private mTimeInstalled:J

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBatteryUsagePackageInfo(Landroid/content/pm/PackageManager;ILjava/lang/String;JJ)Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;
    .locals 9
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # J
    .param p5    # J

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    aget-object v3, v4, v7

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;

    invoke-direct {v2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;-><init>()V

    iput-object v3, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-wide v6, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mTimeInstalled:J

    invoke-direct {v2, p2}, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->setLastUsedTime(Ljava/lang/String;)V

    iput-wide p3, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mCpuUsage:J

    iput-wide p5, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mNetworkData:J

    iput p1, v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mUid:I

    move-object v6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setLastUsedTime(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    :try_start_0
    sget-object v2, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mLastUsed:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mLastUsed:J

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mAppName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCpuUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mCpuUsage:J

    return-wide v0
.end method

.method public getInstalledTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mTimeInstalled:J

    return-wide v0
.end method

.method public getLastUsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mLastUsed:J

    return-wide v0
.end method

.method public getNetworkData()J
    .locals 2

    iget-wide v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mNetworkData:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsagePackageInfo;->mUid:I

    return v0
.end method
