.class public Lcom/sonymobile/settings/preference/util/DependOnUtil;
.super Ljava/lang/Object;
.source "DependOnUtil.java"


# instance fields
.field private mAdd:Z

.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mHasMetaData:Z

.field private final mHasSystemFeature:Ljava/lang/String;

.field private final mIsOwnerOnly:Z

.field private final mIsValidIntent:Z

.field private final mParent:Ljava/lang/String;

.field private final mSettingsSecure:Ljava/lang/String;

.field private final mSettingsSystem:Ljava/lang/String;

.field private final mSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    sget-object v1, Lcom/android/settings/R$styleable;->DependOnPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Lcom/sonymobile/settings/preference/util/PreferencesAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method private static addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 23
    .param p0    # Landroid/preference/PreferenceScreen;
    .param p1    # Landroid/preference/PreferenceGroup;
    .param p2    # Lcom/sonymobile/settings/preference/util/PreferencesAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    const/4 v9, 0x0

    instance-of v0, v13, Lcom/sonymobile/settings/preference/IncludePreference;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object v8, v13

    check-cast v8, Lcom/sonymobile/settings/preference/IncludePreference;

    invoke-virtual {v8}, Lcom/sonymobile/settings/preference/IncludePreference;->dependOn()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v8}, Lcom/sonymobile/settings/preference/IncludePreference;->getIncludeResId()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/sonymobile/settings/preference/util/PreferencesAdder;->addPreferencesFromResource(I)V

    :cond_0
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_1
    :goto_1
    if-nez v9, :cond_2

    instance-of v0, v13, Landroid/preference/PreferenceGroup;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, v13

    check-cast v20, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v20

    if-lez v20, :cond_2

    move-object/from16 v20, v13

    check-cast v20, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    move-object/from16 v20, v13

    check-cast v20, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    instance-of v0, v13, Lcom/sonymobile/settings/preference/util/DependOn;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object v5, v13

    check-cast v5, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v5}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5}, Lcom/sonymobile/settings/preference/util/DependOn;->hasResumeActions()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/settings/preference/util/DependOn;

    check-cast v5, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->groupPreferences(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v10, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/preference/Preference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    instance-of v0, v13, Lcom/sonymobile/settings/preference/RemovePreference;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object v14, v13

    check-cast v14, Lcom/sonymobile/settings/preference/RemovePreference;

    invoke-virtual {v14}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Lcom/sonymobile/settings/preference/RemovePreference;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v17, p0

    :goto_5
    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_b

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v20

    goto :goto_5

    :cond_b
    const-string v20, "SomcPreferences"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Removing targetKey="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", targetParentKey="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " failed."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 2
    .param p0    # Landroid/preference/PreferenceGroup;
    .param p1    # Lcom/sonymobile/settings/preference/util/DependOn;

    const-string v0, "last"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 2
    .param p0    # Landroid/preference/PreferenceGroup;
    .param p1    # Lcom/sonymobile/settings/preference/util/DependOn;

    const-string v0, "first"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;
    .locals 6
    .param p0    # Landroid/preference/PreferenceGroup;
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object p0, v4

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_3

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object p0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v4

    goto :goto_0
.end method

.method private static groupPreferences(Landroid/preference/PreferenceScreen;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 9
    .param p0    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;>;"
        }
    .end annotation

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    move-object v5, v8

    :goto_1
    if-nez v5, :cond_0

    move-object v5, p0

    :cond_0
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0, v1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p0, v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceGroup;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, p0

    goto :goto_1

    :cond_5
    return-object v7
.end method

.method private static isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z
    .locals 1
    .param p0    # Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/preference/Preference;)V
    .locals 8
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/pm/ResolveInfo;
    .param p3    # Landroid/preference/Preference;

    :try_start_0
    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    const-string v7, "com.sonymobile.settings.preference.TITLE"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string v7, "com.sonyericsson.preference.title"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v7, "com.sonymobile.settings.preference.SUMMARY"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v7, "com.sonyericsson.preference.summary"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    instance-of v7, p3, Landroid/preference/TwoStatePreference;

    if-eqz v7, :cond_5

    move-object v0, p3

    check-cast v0, Landroid/preference/TwoStatePreference;

    move-object v6, v0

    const-string v7, "com.sonymobile.settings.preference.SUMMARY_ON"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v7, "com.sonymobile.settings.preference.SUMMARY_OFF"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    :cond_5
    instance-of v7, p3, Lcom/sonymobile/settings/preference/IntentPreference;

    if-eqz v7, :cond_6

    move-object v0, p3

    check-cast v0, Lcom/sonymobile/settings/preference/IntentPreference;

    move-object v1, v0

    const-string v7, "com.sonymobile.settings.preference.ENTRIES"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sonymobile/settings/preference/IntentPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_6
    instance-of v7, p3, Landroid/preference/ListPreference;

    if-eqz v7, :cond_8

    move-object v0, p3

    check-cast v0, Landroid/preference/ListPreference;

    move-object v2, v0

    const-string v7, "com.sonymobile.settings.preference.ENTRIES"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_7
    const-string v7, "com.sonymobile.settings.preference.ENTRY_VALUES"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private static reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V
    .locals 5
    .param p0    # Landroid/preference/PreferenceGroup;
    .param p1    # Landroid/preference/Preference;
    .param p2    # I

    instance-of v4, p1, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private static sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 11
    .param p0    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isOrderingAsAdded()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    mul-int/2addr v10, v4

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    move v8, v4

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    check-cast v9, Landroid/preference/Preference;

    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v10, v7, v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    :cond_4
    instance-of v10, v9, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/preference/Preference;
    .param p3    # Landroid/content/Intent;

    const/16 v9, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v8, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    :cond_0
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_7

    if-lez v4, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    :cond_1
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_8

    if-lez v4, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    :cond_2
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    :cond_3
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v5, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    :cond_4
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v5, :cond_f

    :cond_5
    if-nez p3, :cond_b

    :goto_5
    return v7

    :cond_6
    move v5, v7

    goto :goto_0

    :cond_7
    move v5, v7

    goto :goto_1

    :cond_8
    move v5, v7

    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_3

    :cond_a
    move v5, v7

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    invoke-virtual {v2, p3, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    iput-boolean v7, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    :cond_f
    :goto_6
    iget-boolean v7, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    goto :goto_5

    :cond_10
    iget-boolean v5, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v6, :cond_11

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const-string v5, "SomcPreferences"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has more than one intent for metadata in:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v2, v3, p2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->parseMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/preference/Preference;)V

    goto :goto_6
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mParent:Ljava/lang/String;

    return-object v0
.end method
