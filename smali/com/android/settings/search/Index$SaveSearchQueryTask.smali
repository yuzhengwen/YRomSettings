.class Lcom/android/settings/search/Index$SaveSearchQueryTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveSearchQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/Index;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/Index;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/Index$SaveSearchQueryTask;->this$0:Lcom/android/settings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/Index;Lcom/android/settings/search/Index$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/search/Index;
    .param p2    # Lcom/android/settings/search/Index$1;

    invoke-direct {p0, p1}, Lcom/android/settings/search/Index$SaveSearchQueryTask;-><init>(Lcom/android/settings/search/Index;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 15
    .param p1    # [Ljava/lang/String;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "query"

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v10, p0, Lcom/android/settings/search/Index$SaveSearchQueryTask;->this$0:Lcom/android/settings/search/Index;

    # invokes: Lcom/android/settings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v10}, Lcom/android/settings/search/Index;->access$300(Lcom/android/settings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-wide/16 v6, -0x1

    :try_start_0
    const-string v10, "saved_queries"

    const-string v11, "query = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, p1, v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v10, "saved_queries"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    # getter for: Lcom/android/settings/search/Index;->MAX_SAVED_SEARCH_QUERY:J
    invoke-static {}, Lcom/android/settings/search/Index;->access$500()J

    move-result-wide v10

    sub-long v2, v6, v10

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    const-string v10, "saved_queries"

    const-string v11, "rowId <= ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v10, "Index"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' saved Search query(ies)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v4

    const-string v10, "Index"

    const-string v11, "Cannot update saved Search queries"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/Index$SaveSearchQueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
