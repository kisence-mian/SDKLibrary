.class final Lcom/tonyodev/fetch/FetchRunnable;
.super Ljava/lang/Object;
.source "FetchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ACTION_DONE:Ljava/lang/String; = "com.tonyodev.fetch.action_done"

.field private static final EXTRA_ID:Ljava/lang/String; = "com.tonyodev.fetch.extra_id"


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final context:Landroid/content/Context;

.field private final databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

.field private downloadedBytes:J

.field private final filePath:Ljava/lang/String;

.field private fileSize:J

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation
.end field

.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private final id:J

.field private input:Ljava/io/BufferedInputStream;

.field private volatile interrupted:Z

.field private final loggingEnabled:Z

.field private final onUpdateInterval:J

.field private output:Ljava/io/RandomAccessFile;

.field private progress:I

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;JZJ)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # J
    .param p4, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "fileSize"    # J
    .param p9, "loggingEnabled"    # Z
    .param p10, "onUpdateInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;JZJ)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p6, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/tonyodev/fetch/request/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->interrupted:Z

    .line 77
    if-nez p1, :cond_10

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_10
    if-nez p4, :cond_1a

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1a
    if-nez p5, :cond_24

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FilePath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_24
    if-nez p6, :cond_55

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->headers:Ljava/util/List;

    .line 95
    :goto_2d
    iput-wide p2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    .line 96
    iput-object p4, p0, Lcom/tonyodev/fetch/FetchRunnable;->url:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    .line 98
    iput-wide p7, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 101
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 102
    iput-boolean p9, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    .line 103
    iput-wide p10, p0, Lcom/tonyodev/fetch/FetchRunnable;->onUpdateInterval:J

    .line 104
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {v0, p9}, Lcom/tonyodev/fetch/DatabaseHelper;->setLoggingEnabled(Z)V

    .line 105
    return-void

    .line 92
    :cond_55
    iput-object p6, p0, Lcom/tonyodev/fetch/FetchRunnable;->headers:Ljava/util/List;

    goto :goto_2d
.end method

.method private broadcastDone()V
    .registers 5

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tonyodev.fetch.action_done"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tonyodev.fetch.extra_id"

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 329
    return-void
.end method

.method private canRetry(I)Z
    .registers 4
    .param p1, "error"    # I

    .prologue
    const/4 v0, 0x1

    .line 281
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 291
    :goto_9
    :sswitch_9
    return v0

    .line 285
    :cond_a
    sparse-switch p1, :sswitch_data_10

    .line 291
    const/4 v0, 0x0

    goto :goto_9

    .line 285
    nop

    :sswitch_data_10
    .sparse-switch
        -0x76 -> :sswitch_9
        -0x68 -> :sswitch_9
        -0x67 -> :sswitch_9
    .end sparse-switch
.end method

.method static getDoneFilter()Landroid/content/IntentFilter;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tonyodev.fetch.action_done"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getIdFromIntent(Landroid/content/Intent;)J
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v0, -0x1

    .line 345
    if-nez p0, :cond_5

    .line 349
    :goto_4
    return-wide v0

    :cond_5
    const-string v2, "com.tonyodev.fetch.extra_id"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_4
.end method

.method private isInterrupted()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->interrupted:Z

    return v0
.end method

.method private isResponseOk(I)Z
    .registers 3
    .param p1, "responseCode"    # I

    .prologue
    .line 232
    sparse-switch p1, :sswitch_data_8

    .line 238
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 236
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 232
    nop

    :sswitch_data_8
    .sparse-switch
        0xc8 -> :sswitch_5
        0xca -> :sswitch_5
        0xce -> :sswitch_5
    .end sparse-switch
.end method

.method private release()V
    .registers 3

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_9

    .line 300
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_1c

    .line 310
    :cond_9
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_12

    .line 311
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_25

    .line 320
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1b

    .line 321
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 323
    :cond_1b
    return-void

    .line 302
    :catch_1c
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    if-eqz v1, :cond_9

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    :catch_25
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    if-eqz v1, :cond_12

    .line 316
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method private setContentLength()V
    .registers 7

    .prologue
    .line 244
    :try_start_0
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 248
    :goto_15
    return-void

    .line 245
    :catch_16
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    goto :goto_15
.end method

.method private setHttpConnectionPrefs()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "httpUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 217
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 219
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 220
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 221
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 222
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 223
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 225
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonyodev/fetch/request/Header;

    .line 226
    .local v0, "header":Lcom/tonyodev/fetch/request/Header;
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lcom/tonyodev/fetch/request/Header;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tonyodev/fetch/request/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 228
    .end local v0    # "header":Lcom/tonyodev/fetch/request/Header;
    :cond_5a
    return-void
.end method

.method private writeToFileAndPost()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/16 v6, 0x400

    new-array v0, v6, [B

    move-object/from16 v17, v0

    .line 257
    .local v17, "buffer":[B
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 259
    .local v2, "startTime":J
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    const/4 v7, 0x0

    const/16 v8, 0x400

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v18

    .local v18, "read":I
    const/4 v6, -0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_92

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_92

    .line 260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 261
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    move/from16 v0, v18

    int-to-long v8, v0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    .line 263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 265
    .local v4, "stopTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->onUpdateInterval:J

    invoke-static/range {v2 .. v7}, Lcom/tonyodev/fetch/Utils;->hasIntervalElapsed(JJJ)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_a

    .line 267
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v6, v7, v8, v9}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 269
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v10, 0x385

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const/16 v16, -0x1

    invoke-static/range {v7 .. v16}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 272
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v7 .. v13}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    goto/16 :goto_a

    .line 277
    .end local v4    # "stopTime":J
    :cond_92
    return-void
.end method


# virtual methods
.method declared-synchronized getId()J
    .registers 3

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized interrupt()V
    .registers 2

    .prologue
    .line 336
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->interrupted:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 337
    monitor-exit p0

    return-void

    .line 336
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 14

    .prologue
    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->setHttpConnectionPrefs()V

    .line 113
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->createFileOrThrow(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    .line 116
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v2, v3, v4, v5}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v1

    iput v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 117
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v1 .. v7}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 119
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 122
    new-instance v1, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    const-string v2, "DIE"

    const/16 v3, -0x76

    invoke-direct {v1, v2, v3}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_b2

    .line 179
    :catch_57
    move-exception v0

    .line 181
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_58
    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    if-eqz v1, :cond_5f

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tonyodev/fetch/ErrorUtils;->getCode(Ljava/lang/String;)I

    move-result v10

    .line 187
    .local v10, "error":I
    invoke-direct {p0, v10}, Lcom/tonyodev/fetch/FetchRunnable;->canRetry(I)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 189
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x384

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    move-result v12

    .line 192
    .local v12, "updated":Z
    if-eqz v12, :cond_8a

    .line 193
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x384

    iget v5, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v8, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const/4 v10, -0x1

    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V
    :try_end_8a
    .catchall {:try_start_58 .. :try_end_8a} :catchall_b2

    .line 208
    .end local v10    # "error":I
    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->release()V

    .line 209
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->broadcastDone()V

    .line 211
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v12    # "updated":Z
    :goto_90
    return-void

    .line 125
    :cond_91
    :try_start_91
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 128
    .local v11, "responseCode":I
    invoke-direct {p0, v11}, Lcom/tonyodev/fetch/FetchRunnable;->isResponseOk(I)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 130
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 131
    new-instance v1, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    const-string v2, "DIE"

    const/16 v3, -0x76

    invoke-direct {v1, v2, v3}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b2} :catch_57
    .catchall {:try_start_91 .. :try_end_b2} :catchall_b2

    .line 208
    .end local v11    # "responseCode":I
    :catchall_b2
    move-exception v1

    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->release()V

    .line 209
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->broadcastDone()V

    throw v1

    .line 134
    .restart local v11    # "responseCode":I
    :cond_ba
    :try_start_ba
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_da

    .line 135
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->setContentLength()V

    .line 136
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v1 .. v7}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 137
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v2, v3, v4, v5}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v1

    iput v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 140
    :cond_da
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    .line 141
    const/16 v1, 0xce

    if-ne v11, v1, :cond_11b

    .line 142
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 147
    :goto_f0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    .line 148
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->writeToFileAndPost()V

    .line 150
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v1 .. v7}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 152
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 153
    new-instance v1, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    const-string v2, "DIE"

    const/16 v3, -0x76

    invoke-direct {v1, v2, v3}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 144
    :cond_11b
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_f0

    .line 155
    :cond_123
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_173

    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_173

    .line 157
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_17b

    .line 158
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tonyodev/fetch/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    .line 159
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v1 .. v7}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 160
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v2, v3, v4, v5}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v1

    iput v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 165
    :goto_156
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x387

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    move-result v12

    .line 168
    .restart local v12    # "updated":Z
    if-eqz v12, :cond_173

    .line 170
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x387

    iget v5, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v8, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const/4 v10, -0x1

    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_173} :catch_57
    .catchall {:try_start_ba .. :try_end_173} :catchall_b2

    .line 208
    .end local v12    # "updated":Z
    :cond_173
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->release()V

    .line 209
    invoke-direct {p0}, Lcom/tonyodev/fetch/FetchRunnable;->broadcastDone()V

    goto/16 :goto_90

    .line 162
    :cond_17b
    :try_start_17b
    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v4, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v2, v3, v4, v5}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v1

    iput v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    goto :goto_156

    .line 176
    :cond_186
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSRV:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_19f} :catch_57
    .catchall {:try_start_17b .. :try_end_19f} :catchall_b2

    .line 199
    .end local v11    # "responseCode":I
    .restart local v0    # "exception":Ljava/lang/Exception;
    .restart local v10    # "error":I
    :cond_19f
    :try_start_19f
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x388

    invoke-virtual {v1, v2, v3, v4, v10}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    move-result v12

    .line 201
    .restart local v12    # "updated":Z
    if-eqz v12, :cond_8a

    .line 202
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x388

    iget v5, p0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v6, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v8, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static/range {v1 .. v10}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V
    :try_end_1ba
    .catchall {:try_start_19f .. :try_end_1ba} :catchall_b2

    goto/16 :goto_8a
.end method
