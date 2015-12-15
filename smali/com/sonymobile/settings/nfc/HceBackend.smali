.class public Lcom/sonymobile/settings/nfc/HceBackend;
.super Ljava/lang/Object;
.source "HceBackend.java"


# static fields
.field private static final SE_SIM_ENABLE:Z

.field private static final SE_SMX_ENABLE:Z


# instance fields
.field private mBannerForService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

.field private mChangedDefaultService:Landroid/content/ComponentName;

.field private mCheckBoxForService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultRoute:I

.field private mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mOffHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ro.nfc.se.sim.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SIM_ENABLE:Z

    const-string v0, "ro.nfc.se.smx.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SMX_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->initialize()V

    return-void
.end method

.method private createBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1    # Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v12, v14, Landroid/util/DisplayMetrics;->density:F

    const/high16 v14, 0x42c00000    # 96.0f

    mul-float/2addr v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v1, v14

    const/high16 v14, 0x43820000    # 260.0f

    mul-float/2addr v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v2, v14

    const/high16 v14, 0x41600000    # 14.0f

    mul-float/2addr v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v10, v14}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v14, v13

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    const/4 v3, 0x0

    int-to-float v14, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v16, v0

    add-float v15, v15, v16

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v16, v0

    add-float v15, v15, v16

    int-to-float v0, v13

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float v4, v14, v15

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v10}, Lcom/sonymobile/settings/nfc/HceBackend;->clipTextToBanner(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14, v3, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v10}, Lcom/sonymobile/settings/nfc/HceBackend;->clipTextToBanner(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v14

    int-to-float v15, v13

    add-float/2addr v15, v4

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v6, v14, v3, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v14, 0x0

    int-to-float v15, v1

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v14, v2

    int-to-float v15, v1

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    invoke-virtual {v6, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v14
.end method

.method private static cutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v6, p2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method private static getAidsLength(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "com.android.nfc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "string"

    const-string v4, "com.android.nfc"

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "HceBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "HceBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resources error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v6, "payment"

    invoke-virtual {v5, v1, v6}, Landroid/nfc/cardemulation/CardEmulation;->isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_0
.end method

.method private getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getDefaultRouteFromSettings()I
    .locals 3

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "nfc_default_route"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDisabledServices()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v11, "other"

    invoke-virtual {v10, v11}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "nfc_disabled_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v10, "HceBackend"

    const-string v11, "Failed to parse DisabledServices\' hash"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDisabledServicesFromSetting()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0    # Ljava/lang/String;

    const/16 v6, 0x10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    :cond_3
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultRouteFromSettings()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    const-string v1, "ce_subsystem_builder"

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/nfc/HceBackend;->getConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.nfc.cardemulation.NxpCeSubsystemBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;

    iget v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    return-void

    :cond_1
    new-instance v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;

    iget v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    goto :goto_0
.end method

.method private isEnabledService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeServices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDisabledServices(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "nfc_disabled_services"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "nfc_disabled_services"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public applyCurrentSettings()V
    .locals 6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->setDisabledServices(Ljava/util/Set;)V

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :goto_1
    return-void

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonymobile.nfc.action.UPDATE_ROUTING_TABLE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    const-string v5, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public applyNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonymobile.nfc.extra.OVERFLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sonymobile.nfc.extra.DEFAULT_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method clipTextToBanner(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/graphics/Paint;

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public getBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckBoxState(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1    # Landroid/content/ComponentName;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDefaultRouteServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    goto :goto_0
.end method

.method public getNonDefaultRouteServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    goto :goto_0
.end method

.method public getPaymentRatio()F
    .locals 11

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const-string v10, "payment"

    invoke-direct {p0, v3, v10}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v9}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getRoutedAids()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->cutPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsLength(Ljava/util/List;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v10}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidLength()I

    move-result v10

    int-to-float v10, v10

    div-float v8, v9, v10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v10}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidEntries()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v9, v10

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_0
.end method

.method public getSumRatio()F
    .locals 5

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getRoutedAids()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsLength(Ljava/util/List;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidLength()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidEntries()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3
.end method

.method public setCheckBoxState(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v1, "payment"

    invoke-virtual {v0, p1, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    return-void
.end method

.method public showSelectServiceMenu()Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SIM_ENABLE:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SMX_ENABLE:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v3, "other"

    invoke-virtual {v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateDefaultRoute()V
    .locals 2

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultRouteFromSettings()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    iget v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->updateDefaultRoute(I)V

    return-void
.end method

.method public updateServices()V
    .locals 9

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v8, "other"

    invoke-virtual {v7, v8}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServices()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->isEnabledService(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;->createBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-direct {p0, v6}, Lcom/sonymobile/settings/nfc/HceBackend;->removeServices(Ljava/util/List;)V

    return-void
.end method

.method public updateSimulator()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "payment"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string v2, "other"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServicesFromSetting()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->startRouting(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method
