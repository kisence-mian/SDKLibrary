.class public Lcom/kwai/filedownloader/download/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwai/filedownloader/services/c;

.field private b:Lcom/kwai/filedownloader/h0/c$a;

.field private c:Lcom/kwai/filedownloader/h0/c$b;

.field private d:Lcom/kwai/filedownloader/h0/c$e;

.field private e:Lcom/kwai/filedownloader/d0/a;

.field private f:Lcom/kwai/filedownloader/h0/c$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwai/filedownloader/d0/a$a;)V
    .registers 22

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kwai/filedownloader/download/b;->b()Lcom/kwai/filedownloader/h0/c$d;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v8, v6

    move-wide v6, v2

    :goto_18
    :try_start_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_145

    const/4 v3, 0x0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_4b

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4b

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4b

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4f

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4f

    :cond_4b
    const/4 v14, -0x2

    invoke-virtual {v2, v14}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    :cond_4f
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_65

    :cond_55
    :goto_55
    const/4 v3, 0x1

    :cond_56
    if-eqz v3, :cond_f4

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/kwai/filedownloader/d0/a$a;->a(Lcom/kwai/filedownloader/f0/c;)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v6

    move-wide v6, v2

    goto :goto_18

    :cond_65
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v14

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_ce

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v14

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->f()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v2, v0, v1}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/f0/c;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v14, :cond_ce

    new-instance v14, Ljava/io/File;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_ce

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_ce

    invoke-virtual {v15, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    sget-boolean v17, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v17, :cond_ce

    const-class v17, Lcom/kwai/filedownloader/d0/a;
    :try_end_a9
    .catchall {:try_start_18 .. :try_end_a9} :catchall_17f

    const-string v18, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"

    const/16 v19, 0x3

    :try_start_ad
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v19, v20

    const/16 v16, 0x1

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v16

    const/16 v16, 0x2

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v19, v16

    invoke-static/range {v17 .. v19}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ce
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_e2

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-lez v14, :cond_55

    :cond_e2
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v14

    invoke-static {v14, v2}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/f0/c;)Z

    move-result v14

    if-eqz v14, :cond_55

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_56

    goto/16 :goto_55

    :cond_f4
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->f()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->o()Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v11, v3, v14, v15, v0}, Lcom/kwai/filedownloader/h0/c$d;->a(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v14

    if-eq v14, v3, :cond_13a

    sget-boolean v15, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v15, :cond_12f

    const-class v15, Lcom/kwai/filedownloader/d0/a;
    :try_end_112
    .catchall {:try_start_ad .. :try_end_112} :catchall_17f

    const-string v16, "the id is changed on restoring from db: old[%d] -> new[%d]"

    const/16 v17, 0x2

    :try_start_116
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12f
    invoke-virtual {v2, v14}, Lcom/kwai/filedownloader/f0/c;->b(I)V

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v2}, Lcom/kwai/filedownloader/d0/a$a;->a(ILcom/kwai/filedownloader/f0/c;)V

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    :cond_13a
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/kwai/filedownloader/d0/a$a;->b(Lcom/kwai/filedownloader/f0/c;)V
    :try_end_13f
    .catchall {:try_start_116 .. :try_end_13f} :catchall_17f

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    move-wide v8, v2

    goto/16 :goto_18

    :cond_145
    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kwai/filedownloader/h0/f;->c(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/kwai/filedownloader/d0/a$a;->a()V

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_17e

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-class v3, Lcom/kwai/filedownloader/d0/a;

    const-string v4, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    invoke-static {v3, v4, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17e
    return-void

    :catchall_17f
    move-exception v2

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwai/filedownloader/h0/f;->c(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/kwai/filedownloader/d0/a$a;->a()V

    sget-boolean v3, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v3, :cond_1b9

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-class v4, Lcom/kwai/filedownloader/d0/a;

    const-string v5, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    invoke-static {v4, v5, v3}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b9
    throw v2
.end method

.method private e()Lcom/kwai/filedownloader/h0/c$a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/h0/c$a;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/h0/c$a;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->a()Lcom/kwai/filedownloader/h0/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/h0/c$a;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->b:Lcom/kwai/filedownloader/h0/c$a;

    goto :goto_4

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private f()Lcom/kwai/filedownloader/h0/c$b;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/h0/c$b;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/h0/c$b;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->b()Lcom/kwai/filedownloader/h0/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/h0/c$b;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/h0/c$b;

    goto :goto_4

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private g()Lcom/kwai/filedownloader/services/c;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    if-eqz v0, :cond_5

    :goto_4
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

    goto :goto_4

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static h()Lcom/kwai/filedownloader/download/b;
    .registers 1

    invoke-static {}, Lcom/kwai/filedownloader/download/b$a;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/kwai/filedownloader/h0/c$e;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/h0/c$e;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/h0/c$e;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->e()Lcom/kwai/filedownloader/h0/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/h0/c$e;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/h0/c$e;

    goto :goto_4

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .registers 12

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->e()Lcom/kwai/filedownloader/h0/c$a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/kwai/filedownloader/h0/c$a;->a(ILjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/kwai/filedownloader/c0/b;
    .registers 3

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->f()Lcom/kwai/filedownloader/h0/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/h0/c$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/c0/b;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/kwai/filedownloader/d0/a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/d0/a;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/d0/a;

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->c()Lcom/kwai/filedownloader/d0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/d0/a;

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/d0/a;->a()Lcom/kwai/filedownloader/d0/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/download/b;->a(Lcom/kwai/filedownloader/d0/a$a;)V

    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_21

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/d0/a;

    goto :goto_4

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(Ljava/io/File;)Lcom/kwai/filedownloader/g0/a;
    .registers 3

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/h0/c$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/h0/c$e;->a(Ljava/io/File;)Lcom/kwai/filedownloader/g0/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/kwai/filedownloader/services/c$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/kwai/filedownloader/services/c;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/services/c;-><init>(Lcom/kwai/filedownloader/services/c$a;)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->a:Lcom/kwai/filedownloader/services/c;

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public b()Lcom/kwai/filedownloader/h0/c$d;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/h0/c$d;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/h0/c$d;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->d()Lcom/kwai/filedownloader/h0/c$d;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/h0/c$d;

    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/h0/c$d;

    goto :goto_4

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->c:Lcom/kwai/filedownloader/h0/c$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->d:Lcom/kwai/filedownloader/h0/c$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->e:Lcom/kwai/filedownloader/d0/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/b;->f:Lcom/kwai/filedownloader/h0/c$d;

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public c()I
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->g()Lcom/kwai/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/services/c;->f()I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/b;->i()Lcom/kwai/filedownloader/h0/c$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwai/filedownloader/h0/c$e;->a()Z

    move-result v0

    return v0
.end method
