.class Lcom/kwai/filedownloader/services/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/x;


# instance fields
.field private final a:Lcom/kwai/filedownloader/b/a;

.field private final b:Lcom/kwai/filedownloader/services/h;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->c()Lcom/kwai/filedownloader/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    new-instance v1, Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->d()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/kwai/filedownloader/services/h;-><init>(I)V

    iput-object v1, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/services/h;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/h;->b()Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "pause all tasks %d"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/services/g;->b(I)Z

    goto :goto_21

    :cond_35
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/d/b;Z)V
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    monitor-enter p0

    :try_start_9
    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_22

    const-string v1, "request start the task with url(%s) path(%s) isDirectory(%B)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v11

    aput-object v8, v2, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v7, v1, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    invoke-static/range {p1 .. p3}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    iget-object v1, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v13}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v9, :cond_6d

    if-nez v1, :cond_6d

    invoke-static/range {p2 .. p2}, Lcom/kwai/filedownloader/f/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    iget-object v3, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v3, v1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    sget-boolean v4, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v4, :cond_62

    const-string v4, "task[%d] find model by dirCaseId[%d]"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v7, v4, v5}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_62
    iget-object v4, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v4, v1}, Lcom/kwai/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v1

    move-object v15, v1

    goto :goto_6b

    :cond_6a
    move-object v15, v2

    :goto_6b
    move-object v14, v3

    goto :goto_6f

    :cond_6d
    move-object v14, v1

    move-object v15, v2

    :goto_6f
    invoke-static {v13, v14, v7, v12}, Lcom/kwai/filedownloader/f/c;->a(ILcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/x;Z)Z

    move-result v1

    if-eqz v1, :cond_88

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_86

    const-string v0, "has already started download %d"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v7, v0, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_86
    .catchall {:try_start_9 .. :try_end_86} :catchall_1cb

    :cond_86
    monitor-exit p0

    return-void

    :cond_88
    if-eqz v14, :cond_8f

    :try_start_8a
    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_93

    :cond_8f
    invoke-static {v8, v9, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_93
    move/from16 v5, p7

    move-object v6, v1

    invoke-static {v13, v6, v5, v12}, Lcom/kwai/filedownloader/f/c;->a(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_af

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_ad

    const-string v0, "has already completed downloading %d"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v7, v0, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_8a .. :try_end_ad} :catchall_1cb

    :cond_ad
    monitor-exit p0

    return-void

    :cond_af
    const-wide/16 v2, 0x0

    if-eqz v14, :cond_b8

    :try_start_b3
    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v16

    goto :goto_ba

    :cond_b8
    move-wide/from16 v16, v2

    :goto_ba
    if-eqz v14, :cond_c1

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_c5

    :cond_c1
    invoke-static {v6}, Lcom/kwai/filedownloader/f/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c5
    move-object v4, v1

    move v1, v13

    move-wide/from16 v2, v16

    move-object v5, v6

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/kwai/filedownloader/f/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/x;)Z

    move-result v1

    if-eqz v1, :cond_f5

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_f3

    const-string v0, "there is an another task with the same target-file-path %d %s"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    aput-object v16, v1, v12

    invoke-static {v7, v0, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_f3

    iget-object v0, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, v13}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v0, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, v13}, Lcom/kwai/filedownloader/b/a;->d(I)V
    :try_end_f3
    .catchall {:try_start_b3 .. :try_end_f3} :catchall_1cb

    :cond_f3
    monitor-exit p0

    return-void

    :cond_f5
    if-eqz v14, :cond_15f

    :try_start_f7
    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_118

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_118

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v1

    if-eq v1, v12, :cond_118

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_118

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v1

    if-ne v1, v10, :cond_15f

    :cond_118
    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    if-eq v1, v13, :cond_151

    iget-object v0, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v0, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/b/a;->d(I)V

    invoke-virtual {v14, v13}, Lcom/kwai/filedownloader/d/c;->a(I)V

    invoke-virtual {v14, v8, v9}, Lcom/kwai/filedownloader/d/c;->a(Ljava/lang/String;Z)V

    if-eqz v15, :cond_17d

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/d/a;

    invoke-virtual {v1, v13}, Lcom/kwai/filedownloader/d/a;->a(I)V

    iget-object v2, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v2, v1}, Lcom/kwai/filedownloader/b/a;->a(Lcom/kwai/filedownloader/d/a;)V

    goto :goto_13c

    :cond_151
    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17e

    invoke-virtual {v14, v0}, Lcom/kwai/filedownloader/d/c;->a(Ljava/lang/String;)V

    goto :goto_17d

    :cond_15f
    if-nez v14, :cond_166

    new-instance v14, Lcom/kwai/filedownloader/d/c;

    invoke-direct {v14}, Lcom/kwai/filedownloader/d/c;-><init>()V

    :cond_166
    invoke-virtual {v14, v0}, Lcom/kwai/filedownloader/d/c;->a(Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Lcom/kwai/filedownloader/d/c;->a(Ljava/lang/String;Z)V

    invoke-virtual {v14, v13}, Lcom/kwai/filedownloader/d/c;->a(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {v14, v0, v1}, Lcom/kwai/filedownloader/d/c;->a(J)V

    invoke-virtual {v14, v0, v1}, Lcom/kwai/filedownloader/d/c;->c(J)V

    invoke-virtual {v14, v12}, Lcom/kwai/filedownloader/d/c;->a(B)V

    invoke-virtual {v14, v12}, Lcom/kwai/filedownloader/d/c;->b(I)V

    :cond_17d
    :goto_17d
    move v11, v12

    :cond_17e
    if-eqz v11, :cond_185

    iget-object v0, v7, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, v14}, Lcom/kwai/filedownloader/b/a;->a(Lcom/kwai/filedownloader/d/c;)V

    :cond_185
    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;-><init>()V

    invoke-virtual {v0, v14}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a(Lcom/kwai/filedownloader/d/c;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a(Lcom/kwai/filedownloader/d/b;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a(Lcom/kwai/filedownloader/x;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->b(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->b(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->c(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;->a()Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    move-result-object v0

    iget-object v1, v7, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/services/h;->a(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V
    :try_end_1c9
    .catchall {:try_start_f7 .. :try_end_1c9} :catchall_1cb

    monitor-exit p0

    return-void

    :catchall_1cb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/services/g;->a(Lcom/kwai/filedownloader/d/c;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/kwai/filedownloader/d/c;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/services/h;->c(I)Z

    move-result v1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v2

    invoke-static {v2}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_3c

    goto :goto_1e

    :cond_1c
    if-eqz v1, :cond_20

    :goto_1e
    move v0, v3

    goto :goto_3c

    :cond_20
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "%d status is[%s](not finish) & but not in the pool"

    invoke-static {p0, p1, v1}, Lcom/kwai/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/kwai/filedownloader/f/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/services/g;->a(I)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/h;->a()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public b(I)Z
    .registers 6

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "request pause the task %d"

    invoke-static {p0, v3, v0}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/h;->b(I)V

    return v2
.end method

.method public c(I)J
    .registers 7

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    :cond_b
    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_17

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v0

    return-wide v0

    :cond_17
    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_26

    goto :goto_2b

    :cond_26
    invoke-static {p1}, Lcom/kwai/filedownloader/d/a;->a(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_2b
    :goto_2b
    return-wide v1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/b/a;->a()V

    return-void
.end method

.method public d(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object p1

    if-nez p1, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result p1

    return p1
.end method

.method public declared-synchronized f(I)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/h;->a(I)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "The task[%d] id is invalid, can\'t clear it."

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_12
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/services/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_26

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "The task[%d] is downloading, can\'t clear it."

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_26
    iget-object v1, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, p1}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v1, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, p1}, Lcom/kwai/filedownloader/b/a;->d(I)V

    return v0
.end method
