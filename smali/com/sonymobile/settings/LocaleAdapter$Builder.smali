.class public Lcom/sonymobile/settings/LocaleAdapter$Builder;
.super Ljava/lang/Object;
.source "LocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/LocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizedCountry:Ljava/lang/String;

.field private mCustomizedLanguage:Ljava/lang/String;

.field private mDefaultSimCountry:Ljava/lang/String;

.field private mDefaultSwCountry:Ljava/lang/String;

.field private mDefaultSwLanguage:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v10, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v11

    if-ge v2, v11, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v4, v10

    goto :goto_1

    :cond_4
    if-nez v9, :cond_5

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->changeStateWhenNoDefaultLocale(ZZ)V

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :cond_6
    :goto_2
    if-lt v2, v1, :cond_8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v0, v6

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    iget v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    new-instance v5, Ljava/util/Locale;

    iget-object v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-direct {v5, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_9
    new-instance v10, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v10, v13, v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_a

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    return-object v8

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private changeStateWhenNoDefaultLocale(ZZ)V
    .locals 3
    .param p1    # Z
    .param p2    # Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget v0, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "LocaleAdapter.Builder"

    const-string v1, "Error, wrong state. Defaulting to resolve default locale"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    :goto_0
    return-void

    :pswitch_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iput v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    iput v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isDefaultLocale(Ljava/util/Locale;)Z
    .locals 5
    .param p1    # Ljava/util/Locale;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    packed-switch v3, :pswitch_data_0

    const-string v1, "LocaleAdapter.Builder"

    const-string v2, "Error, unsupported state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :pswitch_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setUpDefaultLocales()V
    .locals 11

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v9, 0x5

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v9, :cond_0

    move v2, v6

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    const-string v5, "ro.product.locale.language"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    const-string v5, "ro.product.locale.region"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v9, :cond_3

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v10, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    :goto_2
    return-void

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    iput v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iput v7, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_2

    :cond_4
    iput v6, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_2
.end method


# virtual methods
.method public create()Lcom/sonymobile/settings/LocaleAdapter;
    .locals 4

    invoke-direct {p0}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->setUpDefaultLocales()V

    iget-object v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/settings/LocaleAdapter;

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->buildLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/settings/LocaleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v1
.end method
