.class Lcom/android/settings/notification/AppNotificationSettings$2;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->this$0:Lcom/android/settings/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;
    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationSettings;->access$200(Lcom/android/settings/notification/AppNotificationSettings;)Lcom/android/settings/notification/NotificationAppList$Backend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/AppNotificationSettings$2;->val$uid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationAppList$Backend;->setNotificationsBanned(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method
