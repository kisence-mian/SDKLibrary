.class Lcom/kwai/filedownloader/services/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/y;


# instance fields
.field private final a:Lcom/kwai/filedownloader/d0/a;

.field private final b:Lcom/kwai/filedownloader/services/h;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/d0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    new-instance v1, Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->c()I

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

    move-result v0

    return v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d0/a;->clear()V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwai/filedownloader/f0/b;Z)V
    .registers 20

    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_1a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "request start the task with url(%s) path(%s) isDirectory(%B)"

    invoke-static {p0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    invoke-static {p1, p2, p3}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v3}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v9

    const/4 v2, 0x0

    if-nez p3, :cond_64

    if-nez v9, :cond_64

    invoke-static {p2}, Lcom/kwai/filedownloader/h0/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    iget-object v5, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v5, v4}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v9

    if-eqz v9, :cond_64

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_5e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "task[%d] find model by dirCaseId[%d]"

    invoke-static {p0, v5, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5e
    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v4}, Lcom/kwai/filedownloader/d0/a;->c(I)Ljava/util/List;

    move-result-object v2

    :cond_64
    const/4 v4, 0x1

    invoke-static {v3, v9, p0, v4}, Lcom/kwai/filedownloader/h0/c;->a(ILcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/y;Z)Z

    move-result v4

    if-eqz v4, :cond_80

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_7e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "has already started download %d"

    invoke-static {p0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_a3

    :cond_7e
    :goto_7e
    monitor-exit p0

    return-void

    :cond_80
    if-eqz v9, :cond_a6

    :try_start_82
    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v7

    :goto_86
    const/4 v4, 0x1

    move/from16 v0, p7

    invoke-static {v3, v7, v0, v4}, Lcom/kwai/filedownloader/h0/c;->a(ILjava/lang/String;ZZ)Z

    move-result v4

    if-eqz v4, :cond_ac

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_7e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "has already completed downloading %d"

    invoke-static {p0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_82 .. :try_end_a2} :catchall_a3

    goto :goto_7e

    :catchall_a3
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_a6
    const/4 v4, 0x0

    :try_start_a7
    invoke-static {p2, p3, v4}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_86

    :cond_ac
    if-eqz v9, :cond_e2

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    :goto_b2
    if-eqz v9, :cond_e5

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v6

    :goto_b8
    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/kwai/filedownloader/h0/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/y;)Z

    move-result v4

    if-eqz v4, :cond_ea

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_7e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v7, v2, v4

    const-string v4, "there is an another task with the same target-file-path %d %s"

    invoke-static {p0, v4, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_7e

    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v3}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v3}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    goto :goto_7e

    :cond_e2
    const-wide/16 v4, 0x0

    goto :goto_b2

    :cond_e5
    invoke-static {v7}, Lcom/kwai/filedownloader/h0/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b8

    :cond_ea
    if-eqz v9, :cond_1aa

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_10f

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10f

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10f

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_10f

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1aa

    :cond_10f
    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v4

    if-eq v4, v3, :cond_197

    iget-object v4, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v4, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    invoke-virtual {v9, v3}, Lcom/kwai/filedownloader/f0/c;->b(I)V

    invoke-virtual {v9, p2, p3}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;Z)V

    if-eqz v2, :cond_148

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_133
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_148

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/f0/a;

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/f0/a;->a(I)V

    iget-object v5, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v5, v2}, Lcom/kwai/filedownloader/d0/a;->a(Lcom/kwai/filedownloader/f0/a;)V

    goto :goto_133

    :cond_148
    const/4 v2, 0x1

    move-object v3, v9

    :goto_14a
    if-eqz v2, :cond_151

    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v3}, Lcom/kwai/filedownloader/d0/a;->a(Lcom/kwai/filedownloader/f0/c;)V

    :cond_151
    new-instance v2, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    invoke-direct {v2}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;-><init>()V

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a(Lcom/kwai/filedownloader/f0/c;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a(Lcom/kwai/filedownloader/y;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->c(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->b(Ljava/lang/Boolean;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->b(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;->a()Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v3, v2}, Lcom/kwai/filedownloader/services/h;->a(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    goto/16 :goto_7e

    :cond_197
    invoke-virtual {v9}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a7

    invoke-virtual {v9, p1}, Lcom/kwai/filedownloader/f0/c;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object v3, v9

    goto :goto_14a

    :cond_1a7
    const/4 v2, 0x0

    move-object v3, v9

    goto :goto_14a

    :cond_1aa
    if-nez v9, :cond_1d0

    new-instance v4, Lcom/kwai/filedownloader/f0/c;

    invoke-direct {v4}, Lcom/kwai/filedownloader/f0/c;-><init>()V

    :goto_1b1
    invoke-virtual {v4, p1}, Lcom/kwai/filedownloader/f0/c;->d(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;Z)V

    invoke-virtual {v4, v3}, Lcom/kwai/filedownloader/f0/c;->b(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/kwai/filedownloader/f0/c;->c(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/kwai/filedownloader/f0/c;->a(I)V
    :try_end_1cc
    .catchall {:try_start_a7 .. :try_end_1cc} :catchall_a3

    const/4 v2, 0x1

    move-object v3, v4

    goto/16 :goto_14a

    :cond_1d0
    move-object v4, v9

    goto :goto_1b1
.end method

.method public a(I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "The task[%d] id is invalid, can\'t clear it."

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/services/g;->e(I)Z

    move-result v2

    if-eqz v2, :cond_26

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "The task[%d] is downloading, can\'t clear it."

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_26
    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    move v0, v1

    goto :goto_11
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/services/h;->b(I)Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v3

    invoke-static {v3}, Lcom/kwai/filedownloader/f0/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    if-nez v2, :cond_1b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%d status is[%s](not finish) & but not in the pool"

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/kwai/filedownloader/h0/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/services/g;->e(I)Z

    move-result v0

    return v0
.end method

.method public b(I)J
    .registers 7

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, p1}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_17

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v0

    goto :goto_a

    :cond_17
    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, p1}, Lcom/kwai/filedownloader/d0/a;->c(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_a

    invoke-static {v2}, Lcom/kwai/filedownloader/f0/a;->a(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_a
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/h;->a()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c(I)B
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v0

    goto :goto_9
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/h;->b()Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "pause all tasks %d"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/services/g;->f(I)Z

    goto :goto_21

    :cond_35
    return-void
.end method

.method public d(I)J
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v0

    goto :goto_a
.end method

.method public e(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/services/g;->a(Lcom/kwai/filedownloader/f0/c;)Z

    move-result v0

    return v0
.end method

.method public f(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_13

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "request pause the task %d"

    invoke-static {p0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v2, p0, Lcom/kwai/filedownloader/services/g;->a:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, p1}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v2

    if-nez v2, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/h;->a(I)V

    move v0, v1

    goto :goto_1b
.end method

.method public declared-synchronized g(I)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwai/filedownloader/services/g;->b:Lcom/kwai/filedownloader/services/h;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/services/h;->c(I)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
