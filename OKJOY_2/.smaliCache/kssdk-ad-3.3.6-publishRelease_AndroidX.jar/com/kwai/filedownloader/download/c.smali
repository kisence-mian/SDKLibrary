.class public Lcom/kwai/filedownloader/download/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/c$a;
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/kwai/filedownloader/download/ConnectTask;

.field private final c:Lcom/kwai/filedownloader/download/f;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Lcom/kwai/filedownloader/download/e;

.field private volatile g:Z

.field private final h:I


# direct methods
.method private constructor <init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwai/filedownloader/download/c;->h:I

    iput p2, p0, Lcom/kwai/filedownloader/download/c;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwai/filedownloader/download/c;->g:Z

    iput-object p4, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    iput-object p6, p0, Lcom/kwai/filedownloader/download/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/ConnectTask;

    iput-boolean p5, p0, Lcom/kwai/filedownloader/download/c;->e:Z

    return-void
.end method

.method synthetic constructor <init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;Lcom/kwai/filedownloader/download/c$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/kwai/filedownloader/download/c;-><init>(IILcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/download/f;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/c;->g:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c;->f:Lcom/kwai/filedownloader/download/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e;->a()V

    :cond_a
    return-void
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwai/filedownloader/download/c;->a()V

    return-void
.end method

.method public run()V
    .registers 15

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/ConnectTask;->e()Lcom/kwai/filedownloader/download/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/kwai/filedownloader/download/a;->b:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_10
    const/4 v5, 0x1

    :try_start_11
    iget-boolean v4, p0, Lcom/kwai/filedownloader/download/c;->g:Z
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_13} :catch_fc
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_13} :catch_fa
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_11 .. :try_end_13} :catch_f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_13} :catch_f6
    .catchall {:try_start_11 .. :try_end_13} :catchall_f4

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->f()V

    :cond_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/ConnectTask;->a()Lcom/kwai/filedownloader/a/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->e()I

    move-result v4

    sget-boolean v6, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v6, :cond_51

    const-string v6, "the connection[%d] for %d, is connected %s with requestHttpCode[%d]"

    new-array v10, v9, [Ljava/lang/Object;

    iget v11, p0, Lcom/kwai/filedownloader/download/c;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    iget v11, p0, Lcom/kwai/filedownloader/download/c;->h:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    iget-object v11, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v11}, Lcom/kwai/filedownloader/download/ConnectTask;->e()Lcom/kwai/filedownloader/download/a;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {p0, v6, v10}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    const/16 v6, 0xce

    if-eq v4, v6, :cond_8d

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_5a

    goto :goto_8d

    :cond_5a
    new-instance v6, Ljava/net/SocketException;

    const-string v10, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v12}, Lcom/kwai/filedownloader/download/ConnectTask;->d()Ljava/util/Map;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v8

    iget v4, p0, Lcom/kwai/filedownloader/download/c;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v7

    iget v4, p0, Lcom/kwai/filedownloader/download/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v9

    invoke-static {v10, v11}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_8d} :catch_f1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_8d} :catch_ef
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1b .. :try_end_8d} :catch_ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_8d} :catch_eb
    .catchall {:try_start_1b .. :try_end_8d} :catchall_f4

    :cond_8d
    :goto_8d
    :try_start_8d
    new-instance v4, Lcom/kwai/filedownloader/download/e$a;

    invoke-direct {v4}, Lcom/kwai/filedownloader/download/e$a;-><init>()V

    iget-boolean v6, p0, Lcom/kwai/filedownloader/download/c;->g:Z
    :try_end_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_8d .. :try_end_94} :catch_e8
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_e6
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_8d .. :try_end_94} :catch_e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_94} :catch_e2
    .catchall {:try_start_8d .. :try_end_94} :catchall_f4

    if-eqz v6, :cond_9c

    if-eqz v3, :cond_9b

    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->f()V

    :cond_9b
    return-void

    :cond_9c
    :try_start_9c
    iget v6, p0, Lcom/kwai/filedownloader/download/c;->h:I

    invoke-virtual {v4, v6}, Lcom/kwai/filedownloader/download/e$a;->b(I)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    iget v6, p0, Lcom/kwai/filedownloader/download/c;->a:I

    invoke-virtual {v4, v6}, Lcom/kwai/filedownloader/download/e$a;->a(I)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    iget-object v6, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    invoke-virtual {v4, v6}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/download/c;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    iget-boolean v6, p0, Lcom/kwai/filedownloader/download/c;->e:Z

    invoke-virtual {v4, v6}, Lcom/kwai/filedownloader/download/e$a;->a(Z)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/a/b;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    iget-object v6, p0, Lcom/kwai/filedownloader/download/c;->b:Lcom/kwai/filedownloader/download/ConnectTask;

    invoke-virtual {v6}, Lcom/kwai/filedownloader/download/ConnectTask;->e()Lcom/kwai/filedownloader/download/a;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    iget-object v6, p0, Lcom/kwai/filedownloader/download/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/kwai/filedownloader/download/e$a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/e$a;->a()Lcom/kwai/filedownloader/download/e;

    move-result-object v4

    iput-object v4, p0, Lcom/kwai/filedownloader/download/c;->f:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/e;->b()V

    iget-boolean v4, p0, Lcom/kwai/filedownloader/download/c;->g:Z

    if-eqz v4, :cond_de

    iget-object v4, p0, Lcom/kwai/filedownloader/download/c;->f:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/e;->a()V
    :try_end_de
    .catch Ljava/lang/IllegalAccessException; {:try_start_9c .. :try_end_de} :catch_e8
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_de} :catch_e6
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_9c .. :try_end_de} :catch_e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_de} :catch_e2
    .catchall {:try_start_9c .. :try_end_de} :catchall_f4

    :cond_de
    if-eqz v3, :cond_141

    goto/16 :goto_13e

    :catch_e2
    move-exception v4

    goto :goto_e9

    :catch_e4
    move-exception v4

    goto :goto_e9

    :catch_e6
    move-exception v4

    goto :goto_e9

    :catch_e8
    move-exception v4

    :goto_e9
    move v6, v5

    goto :goto_100

    :catch_eb
    move-exception v4

    goto :goto_f2

    :catch_ed
    move-exception v4

    goto :goto_f2

    :catch_ef
    move-exception v4

    goto :goto_f2

    :catch_f1
    move-exception v4

    :goto_f2
    move v6, v2

    goto :goto_100

    :catchall_f4
    move-exception v0

    goto :goto_142

    :catch_f6
    move-exception v6

    goto :goto_fd

    :catch_f8
    move-exception v6

    goto :goto_fd

    :catch_fa
    move-exception v6

    goto :goto_fd

    :catch_fc
    move-exception v6

    :goto_fd
    move-object v13, v6

    move v6, v4

    move-object v4, v13

    :goto_100
    :try_start_100
    iget-object v7, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v7, v4}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;)Z

    move-result v7

    if-eqz v7, :cond_137

    if-nez v6, :cond_112

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    const-wide/16 v7, 0x0

    invoke-interface {v5, v4, v7, v8}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;J)V

    goto :goto_11e

    :cond_112
    iget-object v7, p0, Lcom/kwai/filedownloader/download/c;->f:Lcom/kwai/filedownloader/download/e;

    if-eqz v7, :cond_126

    iget-wide v7, v7, Lcom/kwai/filedownloader/download/e;->a:J

    sub-long/2addr v7, v0

    iget-object v5, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v5, v4, v7, v8}, Lcom/kwai/filedownloader/download/f;->a(Ljava/lang/Exception;J)V
    :try_end_11e
    .catchall {:try_start_100 .. :try_end_11e} :catchall_f4

    :goto_11e
    if-eqz v3, :cond_123

    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->f()V

    :cond_123
    move v4, v6

    goto/16 :goto_10

    :cond_126
    :try_start_126
    const-string v0, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v0, v4}, Lcom/kwai/filedownloader/download/f;->b(Ljava/lang/Exception;)V

    if-eqz v3, :cond_141

    goto :goto_13e

    :cond_137
    iget-object v0, p0, Lcom/kwai/filedownloader/download/c;->c:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v0, v4}, Lcom/kwai/filedownloader/download/f;->b(Ljava/lang/Exception;)V
    :try_end_13c
    .catchall {:try_start_126 .. :try_end_13c} :catchall_f4

    if-eqz v3, :cond_141

    :goto_13e
    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->f()V

    :cond_141
    return-void

    :goto_142
    if-eqz v3, :cond_147

    invoke-interface {v3}, Lcom/kwai/filedownloader/a/b;->f()V

    :cond_147
    throw v0
.end method
