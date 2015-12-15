.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field private mSlotId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/telephony/SubscriptionInfo;
    .param p4    # I

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0    # Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
    .locals 12
    .param p1    # Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040066

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0f00ea

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0f00ec

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0f00eb

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f090a27

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f090204

    new-instance v9, Lcom/android/settings/sim/SimSettings$SimPreference$1;

    invoke-direct {v9, p0, v2}, Lcom/android/settings/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f090201

    new-instance v9, Lcom/android/settings/sim/SimSettings$SimPreference$2;

    invoke-direct {v9, p0}, Lcom/android/settings/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x104000e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public update()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a23

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    const v1, 0x7f090a19

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f090a24

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0
.end method
