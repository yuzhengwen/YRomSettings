.class public abstract Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;,
        Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;
    }
.end annotation


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidMatchingSupport:I

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mDefaultRoute:I

.field mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mRoutedAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    iput p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    iput p2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    return-void
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    new-instance v4, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-direct {v4, v14}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v13, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v12, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    monitor-exit v15

    :goto_2
    return v14

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v12, v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_3

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    :cond_5
    const/4 v9, 0x0

    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v12, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v14, "*"

    invoke-virtual {v1, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    if-nez v14, :cond_7

    const-string v14, "HceSettings RoutingSimulator"

    const-string v16, "This device does not support prefix AIDs."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "%-32s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x46

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v8, v2, v8}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v5

    iput-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    iget-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;"
        }
    .end annotation

    new-instance v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    const-string v4, "payment"

    iget-object v5, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iput-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method generateAidCacheLocked()V
    .locals 15

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "*"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "*"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;

    move-result-object v7

    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {p0, v8, v11}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v9

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v0, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v11, :cond_2

    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    invoke-virtual {v1, v10}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    const/4 v5, 0x0

    iget-object v11, v7, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$PrefixConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {p0, v11, v13}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    iput-boolean v13, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v2, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    move v11, v12

    :goto_3
    or-int/2addr v5, v11

    goto :goto_2

    :cond_4
    move v11, v13

    goto :goto_3

    :cond_5
    if-nez v5, :cond_1

    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v12, :cond_1

    iget-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v11, v9, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {p0, v3, v12}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v14

    invoke-virtual {v11, v0, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->updateRoutingLocked()V

    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "HceSettings RoutingSimulator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not valid."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->supportsAidPrefixRegistration()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "HceSettings RoutingSimulator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prefix AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ignored on device that doesn\'t support it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v3, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "other"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_4
    new-instance v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    iput-object v3, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public abstract getMaxAidEntries()I
.end method

.method public abstract getMaxAidLength()I
.end method

.method public getRoutedAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    return-object v0
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .locals 8
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;Z)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "HceSettings RoutingSimulator"

    const-string v7, "resolveAidConflict: No services passed in."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    new-instance v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;-><init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V

    const-string v6, "other"

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    const-string v6, "payment"

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4

    const-string v6, "payment"

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    :cond_4
    iget-object v1, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    :cond_5
    iget-object v6, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "payment"

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->category:Ljava/lang/String;

    iget-object v2, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_1

    :cond_6
    if-nez v5, :cond_3

    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    iput-object v1, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    iput-object v2, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_0

    :cond_9
    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    if-eqz p2, :cond_1

    iget-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_0
.end method

.method resolvePrefixAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;",
            ">;)",
            "Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->findDefaultServices(Ljava/util/ArrayList;)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;

    move-result-object v0

    iget-object v2, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->EMPTY_RESOLVE_INFO:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    move-result-object v2

    goto :goto_0
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRoutedAids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startRouting(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p3    # Landroid/content/ComponentName;
    .param p4    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDisabledServices:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredPaymentService:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mPreferredForegroundService:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->generateServiceMapLocked(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->generateAidCacheLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidMatchingSupport:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDefaultRoute(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mDefaultRoute:I

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method updateRoutingLocked()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;

    iget-boolean v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->mustRoute:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v5, v3, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->configureRouting(Ljava/util/HashMap;)Z

    return-void
.end method
