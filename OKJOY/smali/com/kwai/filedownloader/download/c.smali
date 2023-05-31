.class public Lcom/kwai/filedownloader/download/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/download/ConnectTask;

.field private final b:Lcom/kwai/filedownloader/download/f;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/kwai/filedownloader/download/e;

.field private volatile f:Z

.field private final g:I

.field final h:I


# direct methods
.method private constructor <init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwai/filedownloader/download/c;->g:I

    iput p2, p0, Lcom/kwai/filedownloader/download/c;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/c;->f:Z

    iput-object p4, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    iput-object p6, p0, Lcom/kwai/filedownloader/download/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwai/filedownloader/download/c;->a:Lcom/kwai/filedownloader/download/ConnectTask;

    iput-boolean p5, p0, Lcom/kwai/filedownloader/download/c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;Lcom/kwai/filedownloader/download/c$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/kwai/filedownloader/download/c;-><init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/download/c;->b()V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/c;->f:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c;->e:Lcom/kwai/filedownloader/download/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e;->a()V

    :cond_a
    return-void
.end method

.method public run()V
    .registers 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/c;->a:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/ConnectTask;->c()Lcom/kwai/filedownloader/download/a;

    move-result-object v1

    iget-wide v6, v1, Lcom/kwai/filedownloader/download/a;->b:J

    move v4, v2

    move-object v1, v0

    :goto_12
    :try_start_12
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/c;->f:Z
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_14} :catch_165
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_14} :catch_172
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_12 .. :try_end_14} :catch_17d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_14} :catch_187
    .catchall {:try_start_12 .. :try_end_14} :catchall_190

    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/kwai/filedownloader/c0/b;->c()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/download/c;->a:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/ConnectTask;->a()Lcom/kwai/filedownloader/c0/b;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_21} :catch_168
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_174
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1c .. :try_end_21} :catch_17f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_21} :catch_18c
    .catchall {:try_start_1c .. :try_end_21} :catchall_190

    move-result-object v0

    :try_start_22
    invoke-interface {v0}, Lcom/kwai/filedownloader/c0/b;->f()I

    move-result v1

    sget-boolean v4, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_28} :catch_a3
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_121
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_22 .. :try_end_28} :catch_118
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_28} :catch_10f
    .catchall {:try_start_22 .. :try_end_28} :catchall_139

    if-eqz v4, :cond_54

    const-string v4, "the connection[%d] for %d, is connected %s with requestHttpCode[%d]"

    const/4 v5, 0x4

    :try_start_2d
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/kwai/filedownloader/download/c;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/kwai/filedownloader/download/c;->g:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/kwai/filedownloader/download/c;->a:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v9}, Lcom/kwai/filedownloader/download/ConnectTask;->c()Lcom/kwai/filedownloader/download/a;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {p0, v4, v5}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_54} :catch_a3
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_54} :catch_121
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2d .. :try_end_54} :catch_118
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_54} :catch_10f
    .catchall {:try_start_2d .. :try_end_54} :catchall_139

    :cond_54
    const/16 v4, 0xce

    if-eq v1, v4, :cond_5c

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_6b

    :cond_5c
    :try_start_5c
    new-instance v1, Lcom/kwai/filedownloader/download/e$b;

    invoke-direct {v1}, Lcom/kwai/filedownloader/download/e$b;-><init>()V

    iget-boolean v4, p0, Lcom/kwai/filedownloader/download/c;->f:Z
    :try_end_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_63} :catch_15e
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_63} :catch_16c
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_5c .. :try_end_63} :catch_177
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_63} :catch_182
    .catchall {:try_start_5c .. :try_end_63} :catchall_139

    if-eqz v4, :cond_c4

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/kwai/filedownloader/c0/b;->c()V

    goto :goto_1b

    :cond_6b
    :try_start_6b
    new-instance v4, Ljava/net/SocketException;
    :try_end_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6b .. :try_end_6d} :catch_a3
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6d} :catch_121
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_6b .. :try_end_6d} :catch_118
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6d} :catch_10f
    .catchall {:try_start_6b .. :try_end_6d} :catchall_139

    const-string v5, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v8, 0x5

    :try_start_70
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/kwai/filedownloader/download/c;->a:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/download/ConnectTask;->d()Ljava/util/Map;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v0}, Lcom/kwai/filedownloader/c0/b;->d()Ljava/util/Map;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x3

    iget v9, p0, Lcom/kwai/filedownloader/download/c;->g:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x4

    iget v9, p0, Lcom/kwai/filedownloader/download/c;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5, v8}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a3
    .catch Ljava/lang/IllegalAccessException; {:try_start_70 .. :try_end_a3} :catch_a3
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_a3} :catch_121
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_70 .. :try_end_a3} :catch_118
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_a3} :catch_10f
    .catchall {:try_start_70 .. :try_end_a3} :catchall_139

    :catch_a3
    move-exception v1

    move v4, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_a8
    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_ab
    :try_start_ab
    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v5, v1}, Lcom/kwai/filedownloader/download/f;->b(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_156

    if-nez v4, :cond_12a

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    const-wide/16 v8, 0x0

    invoke-interface {v5, v1, v8, v9}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;J)V
    :try_end_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_139

    :goto_bc
    if-eqz v0, :cond_192

    invoke-interface {v0}, Lcom/kwai/filedownloader/c0/b;->c()V

    move-object v1, v0

    goto/16 :goto_12

    :cond_c4
    :try_start_c4
    iget v4, p0, Lcom/kwai/filedownloader/download/c;->g:I

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/download/e$b;->b(I)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    iget v4, p0, Lcom/kwai/filedownloader/download/c;->h:I

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/download/e$b;->a(I)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    iget-object v4, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/download/c;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    iget-boolean v4, p0, Lcom/kwai/filedownloader/download/c;->d:Z

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/download/e$b;->a(Z)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/c0/b;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    iget-object v4, p0, Lcom/kwai/filedownloader/download/c;->a:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/ConnectTask;->c()Lcom/kwai/filedownloader/download/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    iget-object v4, p0, Lcom/kwai/filedownloader/download/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/download/e$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/e$b;->a()Lcom/kwai/filedownloader/download/e;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/download/c;->e:Lcom/kwai/filedownloader/download/e;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/c;->e:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/e;->b()V

    iget-boolean v1, p0, Lcom/kwai/filedownloader/download/c;->f:Z

    if-eqz v1, :cond_108

    iget-object v1, p0, Lcom/kwai/filedownloader/download/c;->e:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/e;->a()V
    :try_end_108
    .catch Ljava/lang/IllegalAccessException; {:try_start_c4 .. :try_end_108} :catch_15e
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_108} :catch_16c
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_c4 .. :try_end_108} :catch_177
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_108} :catch_182
    .catchall {:try_start_c4 .. :try_end_108} :catchall_139

    :cond_108
    if-eqz v0, :cond_1b

    :goto_10a
    invoke-interface {v0}, Lcom/kwai/filedownloader/c0/b;->c()V

    goto/16 :goto_1b

    :catch_10f
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    :goto_113
    move-object v11, v0

    move-object v0, v4

    move v4, v1

    move-object v1, v11

    goto :goto_ab

    :catch_118
    move-exception v1

    move v4, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_11d
    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_ab

    :catch_121
    move-exception v1

    move v4, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_126
    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_ab

    :cond_12a
    :try_start_12a
    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->e:Lcom/kwai/filedownloader/download/e;

    if-eqz v5, :cond_143

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->e:Lcom/kwai/filedownloader/download/e;

    iget-wide v8, v5, Lcom/kwai/filedownloader/download/e;->k:J

    sub-long/2addr v8, v6

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v5, v1, v8, v9}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;J)V
    :try_end_138
    .catchall {:try_start_12a .. :try_end_138} :catchall_139

    goto :goto_bc

    :catchall_139
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_13d
    if-eqz v1, :cond_142

    invoke-interface {v1}, Lcom/kwai/filedownloader/c0/b;->c()V

    :cond_142
    throw v0

    :cond_143
    const-string v2, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    const/4 v3, 0x1

    :try_start_146
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v2, v1}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;)V

    if-eqz v0, :cond_1b

    goto :goto_10a

    :cond_156
    iget-object v2, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v2, v1}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;)V
    :try_end_15b
    .catchall {:try_start_146 .. :try_end_15b} :catchall_139

    if-eqz v0, :cond_1b

    goto :goto_10a

    :catch_15e
    move-exception v1

    move v4, v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_a8

    :catch_165
    move-exception v0

    goto/16 :goto_a8

    :catch_168
    move-exception v0

    move v4, v2

    goto/16 :goto_a8

    :catch_16c
    move-exception v1

    move v4, v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_126

    :catch_172
    move-exception v0

    goto :goto_126

    :catch_174
    move-exception v0

    move v4, v2

    goto :goto_126

    :catch_177
    move-exception v1

    move v4, v3

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_11d

    :catch_17d
    move-exception v0

    goto :goto_11d

    :catch_17f
    move-exception v0

    move v4, v2

    goto :goto_11d

    :catch_182
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    goto :goto_113

    :catch_187
    move-exception v0

    move v11, v4

    move-object v4, v1

    move v1, v11

    goto :goto_113

    :catch_18c
    move-exception v0

    move-object v4, v1

    move v1, v2

    goto :goto_113

    :catchall_190
    move-exception v0

    goto :goto_13d

    :cond_192
    move-object v1, v0

    goto/16 :goto_12
.end method
