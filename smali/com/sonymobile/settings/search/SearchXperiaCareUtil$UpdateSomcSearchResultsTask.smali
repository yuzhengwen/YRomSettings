.class Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SearchXperiaCareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/search/SearchXperiaCareUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSomcSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Lcom/sonymobile/settings/search/SearchXperiaCareUtil$1;)V
    .locals 0
    .param p1    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil;
    .param p2    # Lcom/sonymobile/settings/search/SearchXperiaCareUtil$1;

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;-><init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)V

    return-void
.end method

.method private makeHttpRequest(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 21
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const-string v18, "utf-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v18, v0

    const-string v19, ""

    # setter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$602(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v13, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    const-string v19, "utf-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v19, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v13

    move-object v14, v15

    :cond_1
    if-eqz v12, :cond_2

    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_4
    :goto_3
    return-object v14

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$700(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "connectivity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v19, v0

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mServerUnavailable:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$800(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$602(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;

    :goto_5
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_5

    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    if-eqz v8, :cond_6

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_7
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    move-object/from16 v19, v0

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mConnectToInternet:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$900(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$602(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v18

    :goto_8
    if-eqz v12, :cond_8

    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14

    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15

    :cond_9
    :goto_a
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_a
    throw v18

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v2

    :goto_b
    :try_start_a
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v12, :cond_b

    :try_start_b
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_b
    :goto_c
    if-eqz v8, :cond_c

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_c
    :goto_d
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_8
    move-exception v2

    :goto_e
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v12, :cond_d

    :try_start_e
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_d
    :goto_f
    if-eqz v8, :cond_e

    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_e
    :goto_10
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_b
    move-exception v2

    :goto_11
    :try_start_10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v12, :cond_f

    :try_start_11
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    :cond_f
    :goto_12
    if-eqz v8, :cond_10

    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_10
    :goto_13
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catch_e
    move-exception v2

    :goto_14
    :try_start_13
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const-string v18, "SearchXperiaCareUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error converting result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v12, :cond_11

    :try_start_14
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    :cond_11
    :goto_15
    if-eqz v8, :cond_12

    :try_start_15
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    :cond_12
    :goto_16
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    :catch_f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    :catch_10
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    :catch_11
    move-exception v2

    :goto_17
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v12, :cond_13

    :try_start_17
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    :cond_13
    :goto_18
    if-eqz v8, :cond_14

    :try_start_18
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13

    :cond_14
    :goto_19
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    :catch_12
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    :catch_14
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_15
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catchall_1
    move-exception v18

    move-object v12, v13

    goto/16 :goto_8

    :catch_16
    move-exception v2

    move-object v12, v13

    goto :goto_17

    :catch_17
    move-exception v2

    move-object v12, v13

    goto/16 :goto_14

    :catch_18
    move-exception v2

    move-object v12, v13

    goto/16 :goto_11

    :catch_19
    move-exception v2

    move-object v12, v13

    goto/16 :goto_e

    :catch_1a
    move-exception v2

    move-object v12, v13

    goto/16 :goto_b

    :catch_1b
    move-exception v2

    move-object v12, v13

    goto/16 :goto_4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1    # [Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v11, 0x0

    aget-object v6, p1, v11

    new-instance v2, Landroid/database/MatrixCursor;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->COLUMNS_XPERIA_CARE:[Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$000()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "query"

    aget-object v10, p1, v11

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "lc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "device"

    const-string v10, "default"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "build_version"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$100(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->makeHttpRequest(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mHeaderText:Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$300(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_1

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v8, "count"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoMatchesLabelInXperia:Ljava/lang/String;
    invoke-static {v10}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$400(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    const-string v8, "result"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_2

    const-string v8, "result"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "category"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "result"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "subject"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    const-string v10, "result"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "content"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareLaunchApp:Ljava/lang/String;
    invoke-static {v11}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$500(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&topic="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "result"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "topic"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_5

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const-string v8, ""

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$600(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoMatchesLabelInXperia:Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$400(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    # setter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$602(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$600(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$200(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->this$0:Lcom/sonymobile/settings/search/SearchXperiaCareUtil;

    # getter for: Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;
    invoke-static {v0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->access$1000(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Lcom/android/settings/dashboard/SearchResultsSummary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSomcResultsCursor(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
