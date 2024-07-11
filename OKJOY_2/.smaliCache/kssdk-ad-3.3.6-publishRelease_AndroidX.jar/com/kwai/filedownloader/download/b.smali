.class public Lcom/kwai/filedownloader/download/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/services/c;

.field private b:Lcom/kwai/filedownloader/f/c$a;

.field private c:Lcom/kwai/filedownloader/f/c$b;

.field private d:Lcom/kwai/filedownloader/f/c$e;

.field private e:Lcom/kwai/filedownloader/b/a;

.field private f:Lcom/kwai/filedownloader/f/c$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwai/filedownloader/download/b;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/download/b$a;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/kwai/filedownloader/b/a$a;)V
    .registers 26

    move-object/from16 v1, p0

    const-string v2, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    invoke-interface/range {p0 .. p0}, Lcom/kwai/filedownloader/b/a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwai/filedownloader/download/b;->b()Lcom/kwai/filedownloader/f/c$d;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_1a
    const/4 v15, 0x3

    const/16 v16, 0x0

    :try_start_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v6

    const/4 v14, -0x2

    if-eq v6, v15, :cond_4f

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v6

    const/4 v15, 0x2

    if-eq v6, v15, :cond_4f

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_4f

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_52

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v20

    const-wide/16 v17, 0x0

    cmp-long v6, v20, v17

    if-lez v6, :cond_52

    :cond_4f
    invoke-virtual {v7, v14}, Lcom/kwai/filedownloader/d/c;->a(B)V

    :cond_52
    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_63

    move-object/from16 v20, v2

    move-wide/from16 v21, v4

    move-wide/from16 v23, v8

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    goto/16 :goto_f7

    :cond_63
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v6

    if-ne v6, v14, :cond_c8

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v6

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->c()Ljava/lang/String;

    move-result-object v14
    :try_end_76
    .catchall {:try_start_1d .. :try_end_76} :catchall_18d

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :try_start_79
    invoke-static {v6, v7, v14, v2}, Lcom/kwai/filedownloader/f/f;->a(ILcom/kwai/filedownloader/d/c;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_ca

    new-instance v2, Ljava/io/File;

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_ca

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-virtual {v15, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    sget-boolean v14, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v14, :cond_ca

    const-class v14, Lcom/kwai/filedownloader/b/a;
    :try_end_9e
    .catchall {:try_start_79 .. :try_end_9e} :catchall_c1

    move-wide/from16 v21, v4

    :try_start_a0
    const-string v4, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_bf

    move-wide/from16 v23, v8

    const/4 v5, 0x3

    :try_start_a5
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v16

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v8, v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v8, v5

    invoke-static {v14, v4, v8}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ce

    :catchall_bf
    move-exception v0

    goto :goto_c4

    :catchall_c1
    move-exception v0

    move-wide/from16 v21, v4

    :goto_c4
    move-wide/from16 v23, v8

    goto/16 :goto_14a

    :cond_c8
    move-object/from16 v20, v2

    :cond_ca
    move-wide/from16 v21, v4

    move-wide/from16 v23, v8

    :goto_ce
    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e1

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gtz v2, :cond_e3

    :goto_df
    const/4 v2, 0x1

    goto :goto_f7

    :cond_e1
    const-wide/16 v8, 0x0

    :cond_e3
    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-static {v2, v7}, Lcom/kwai/filedownloader/f/f;->a(ILcom/kwai/filedownloader/d/c;)Z

    move-result v2

    if-nez v2, :cond_ee

    goto :goto_df

    :cond_ee
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f5

    goto :goto_df

    :cond_f5
    move/from16 v2, v16

    :goto_f7
    const-wide/16 v4, 0x1

    if-eqz v2, :cond_105

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1, v7}, Lcom/kwai/filedownloader/b/a$a;->a(Lcom/kwai/filedownloader/d/c;)V

    add-long/2addr v10, v4

    move-wide/from16 v8, v23

    goto :goto_143

    :cond_105
    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result v15

    invoke-interface {v3, v2, v6, v14, v15}, Lcom/kwai/filedownloader/f/c$d;->a(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    if-eq v6, v2, :cond_13e

    sget-boolean v14, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v14, :cond_137

    const-class v14, Lcom/kwai/filedownloader/b/a;

    const-string v15, "the id is changed on restoring from db: old[%d] -> new[%d]"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0x1

    aput-object v8, v9, v19

    invoke-static {v14, v15, v9}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_137
    invoke-virtual {v7, v6}, Lcom/kwai/filedownloader/d/c;->a(I)V

    invoke-interface {v1, v2, v7}, Lcom/kwai/filedownloader/b/a$a;->a(ILcom/kwai/filedownloader/d/c;)V

    add-long/2addr v12, v4

    :cond_13e
    invoke-interface {v1, v7}, Lcom/kwai/filedownloader/b/a$a;->b(Lcom/kwai/filedownloader/d/c;)V
    :try_end_141
    .catchall {:try_start_a5 .. :try_end_141} :catchall_149

    add-long v8, v23, v4

    :goto_143
    move-object/from16 v2, v20

    move-wide/from16 v4, v21

    goto/16 :goto_1a

    :catchall_149
    move-exception v0

    :goto_14a
    move-object/from16 v2, v20

    goto :goto_192

    :cond_14d
    move-object/from16 v20, v2

    move-wide/from16 v21, v4

    move-wide/from16 v23, v8

    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f/f;->b(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/kwai/filedownloader/b/a$a;->a()V

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_18c

    const-class v0, Lcom/kwai/filedownloader/b/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    move-object/from16 v2, v20

    invoke-static {v0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18c
    return-void

    :catchall_18d
    move-exception v0

    move-wide/from16 v21, v4

    move-wide/from16 v23, v8

    :goto_192
    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwai/filedownloader/f/f;->b(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/kwai/filedownloader/b/a$a;->a()V

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1c9

    const-class v1, Lcom/kwai/filedownloader/b/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c9
    throw v0
.end method

.method private f()Lcom/kwai/filedownloader/f/c$a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/f/c$a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/f/c$a;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->e()Lcom/kwai/filedownloader/f/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/f/c$a;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/f/c$a;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private g()Lcom/kwai/filedownloader/f/c$b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/f/c$b;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/f/c$b;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->d()Lcom/kwai/filedownloader/f/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/f/c$b;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/f/c$b;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private h()Lcom/kwai/filedownloader/f/c$e;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/f/c$e;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/f/c$e;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->c()Lcom/kwai/filedownloader/f/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/f/c$e;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/f/c$e;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private i()Lcom/kwai/filedownloader/services/c;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    if-nez v0, :cond_11

    new-instance v0, Lcom/kwai/filedownloader/services/c;

    invoke-direct {v0}, Lcom/kwai/filedownloader/services/c;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_15

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    return-object v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .registers 12

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->f()Lcom/kwai/filedownloader/f/c$a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/kwai/filedownloader/f/c$a;->a(ILjava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;
    .registers 3

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/f/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/f/c$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;)Lcom/kwai/filedownloader/e/a;
    .registers 3

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/f/c$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/f/c$e;->a(Ljava/io/File;)Lcom/kwai/filedownloader/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwai/filedownloader/services/c$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/kwai/filedownloader/services/c;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/services/c;-><init>(Lcom/kwai/filedownloader/services/c$a;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/f/c$b;

    iput-object p1, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/f/c$e;

    iput-object p1, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/b/a;

    iput-object p1, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/f/c$d;

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public b()Lcom/kwai/filedownloader/f/c$d;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/f/c$d;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/f/c$d;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->f()Lcom/kwai/filedownloader/f/c$d;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/f/c$d;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/f/c$d;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public b(Lcom/kwai/filedownloader/services/c$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/kwai/filedownloader/services/c;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/services/c;-><init>(Lcom/kwai/filedownloader/services/c$a;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public c()Lcom/kwai/filedownloader/b/a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/b/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/b/a;

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->b()Lcom/kwai/filedownloader/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/b/a;->b()Lcom/kwai/filedownloader/b/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/download/b;->a(Lcom/kwai/filedownloader/b/a$a;)V

    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1f

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/b/a;

    return-object v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public d()I
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->a()I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/f/c$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/f/c$e;->a()Z

    move-result v0

    return v0
.end method
