.class public abstract Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;
.super Ljava/lang/Object;
.source "StaminaDataProviderUtils.java"


# static fields
.field private static final CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_BATTERY_WITH_USM:Landroid/net/Uri;

.field private static final CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_CONSUMING_APPS:Landroid/net/Uri;

.field private static final CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_IGNORE_APPS:Landroid/net/Uri;

.field private static final CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

.field private static final CONTENT_URI_NOT_USED_APPS:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_ACTIVATED:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_RUNTIME_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_RUNTIME_TOGGLE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_STAMINA_TOGGLE:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITH_USM:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_USM_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_USM_TOGGLE:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_INTERNAL:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_DELAY_SUSPEND:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_DELAY_SUSPEND_TOGGLE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/runtime/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/runtime/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_TOGGLE_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/standby_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/standby_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/estimates/standby"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_USM:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/estimates/battery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_USM:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/runtime/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_THRESHOLD:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/installedApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/activated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ACTIVATED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist_groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/gate/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist_internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_INTERNAL:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_TOGGLE:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/stamina/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/analyzer/notusedapps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_NOT_USED_APPS:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/analyzer/consumingapps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_CONSUMING_APPS:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/analyzer/ignore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_IGNORE_APPS:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/delay_suspend"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_DELAY_SUSPEND:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/delay_suspend_toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_DELAY_SUSPEND_TOGGLE_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_USM_ENABLED:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/usm/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_USM_TOGGLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areConsumingAppsAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getConsumingApps(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static enableQueuing(Landroid/content/Context;Z)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBatteryTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getBatteryTimeEstimateString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    invoke-static {p0, p1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConsumingApps(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const-string v6, "apps.lastused ASC"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_CONSUMING_APPS:Landroid/net/Uri;

    const-string v5, "apps.lastused ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledApplications(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public static getInternalWhitelist(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 9
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_INTERNAL:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8
.end method

.method public static getPowerSaverBatteryThreshold(Landroid/content/Context;)I
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPowerSaverFeatures(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getStaminaBatteryThreshold(Landroid/content/Context;)I
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStandbyTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getTimeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const v11, 0x7f100001

    const/high16 v10, 0x7f100000

    const/4 v9, 0x1

    const/4 v8, 0x0

    div-int/lit8 v1, p1, 0x18

    rem-int/lit8 v3, p1, 0x18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v1, :cond_0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v11, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    if-nez v3, :cond_1

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v10, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v11, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v10, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getUnusedApps(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const-string v6, "apps.lastused ASC"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_NOT_USED_APPS:Landroid/net/Uri;

    const-string v5, "apps.lastused ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getUsmBatteryTimeEstimate(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_USM:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getUsmBatteryTimeEstimateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimate(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsmStandbyTimeEstimate(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_USM:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public static getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public static isPowerSaverActivated(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ACTIVATED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "activated"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPowerSaverAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerSaverEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isQueuingAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQueuingEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isRuntimeEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isStaminaAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStaminaEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isUsmAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_USM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsmEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_USM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isXssmDelaySuspendEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_DELAY_SUSPEND:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isXssmEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static registerConsumingAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_CONSUMING_APPS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerRuntimeEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerStaminaEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerUnusedAppsObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_NOT_USED_APPS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerXssmDelaySuspendEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_DELAY_SUSPEND:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static removePackageFromWhitelist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v2, "user=? and package=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setIgnoredApps(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "uid"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_IGNORE_APPS:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setPowerSaverBatteryThreshold(Landroid/content/Context;I)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "threshold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setStaminaBatteryThreshold(Landroid/content/Context;I)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "threshold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setStaminaEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static setWhitelist(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 9
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "user=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.sonymobile.superstamina.xperiapowerservice.provider"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static togglePowersaveEnable(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static toggleRuntimeEnable(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static toggleStamina(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STAMINA_TOGGLE:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static toggleUsm(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_USM_TOGGLE:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static toggleXssmDelaySuspendEnable(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_DELAY_SUSPEND_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static toggleXssmEnable(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # I

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "overriden"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "param"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
