.class public Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/kwai/filedownloader/download/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$b;,
        Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;,
        Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    }
.end annotation


# static fields
.field private static final v:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final a:Lcom/kwai/filedownloader/download/d;

.field private final b:Lcom/kwai/filedownloader/f0/c;

.field private final c:Lcom/kwai/filedownloader/f0/b;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/kwai/filedownloader/d0/a;

.field private final g:Lcom/kwai/filedownloader/y;

.field private h:Z

.field i:I

.field private final j:Z

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kwai/filedownloader/download/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/kwai/filedownloader/download/e;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Ljava/lang/Exception;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ConnectionBlock"

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Lcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/f0/b;Lcom/kwai/filedownloader/y;IIZZI)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    iput-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    iput-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->c:Lcom/kwai/filedownloader/f0/b;

    iput-boolean p6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Z

    iput-boolean p7, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Z

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/d0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    iput-object p3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/kwai/filedownloader/y;

    iput p8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:I

    new-instance v0, Lcom/kwai/filedownloader/download/d;

    invoke-direct {v0, p1, p8, p4, p5}, Lcom/kwai/filedownloader/download/d;-><init>(Lcom/kwai/filedownloader/f0/c;III)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/f0/b;Lcom/kwai/filedownloader/y;IIZZILcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/f0/b;Lcom/kwai/filedownloader/y;IIZZI)V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/kwai/filedownloader/download/a;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;)",
            "Lcom/kwai/filedownloader/download/a;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v5

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v7

    if-le v5, v0, :cond_4c

    move v4, v0

    :goto_19
    if-eqz v4, :cond_4e

    iget-boolean v8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-nez v8, :cond_4e

    :cond_1f
    move-wide v4, v2

    :goto_20
    iget-object v8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v8, v4, v5}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    cmp-long v8, v4, v2

    if-lez v8, :cond_7e

    :goto_29
    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    invoke-static {v7, v6}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    new-instance v1, Lcom/kwai/filedownloader/download/a;

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v6

    sub-long v8, v6, v4

    move-wide v6, v2

    invoke-direct/range {v1 .. v9}, Lcom/kwai/filedownloader/download/a;-><init>(JJJJ)V

    return-object v1

    :cond_4c
    move v4, v1

    goto :goto_19

    :cond_4e
    iget-object v8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v8}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v8

    iget-object v9, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-static {v8, v9}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/f0/c;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-boolean v8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-nez v8, :cond_6a

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_20

    :cond_6a
    if-eqz v4, :cond_77

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v5, v4, :cond_1f

    invoke-static {p1}, Lcom/kwai/filedownloader/f0/a;->a(Ljava/util/List;)J

    move-result-wide v4

    goto :goto_20

    :cond_77
    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    goto :goto_20

    :cond_7e
    move v0, v1

    goto :goto_29
.end method

.method private a(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_13

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;J)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private a(JI)V
    .registers 19

    const-wide/16 v4, 0x0

    move/from16 v0, p3

    int-to-long v2, v0

    div-long v8, p1, v2

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-wide v6, v4

    move v4, v2

    :goto_15
    move/from16 v0, p3

    if-ge v4, v0, :cond_46

    add-int/lit8 v2, p3, -0x1

    if-ne v4, v2, :cond_40

    const-wide/16 v2, 0x0

    :goto_1f
    new-instance v5, Lcom/kwai/filedownloader/f0/a;

    invoke-direct {v5}, Lcom/kwai/filedownloader/f0/a;-><init>()V

    invoke-virtual {v5, v10}, Lcom/kwai/filedownloader/f0/a;->a(I)V

    invoke-virtual {v5, v4}, Lcom/kwai/filedownloader/f0/a;->b(I)V

    invoke-virtual {v5, v6, v7}, Lcom/kwai/filedownloader/f0/a;->c(J)V

    invoke-virtual {v5, v6, v7}, Lcom/kwai/filedownloader/f0/a;->a(J)V

    invoke-virtual {v5, v2, v3}, Lcom/kwai/filedownloader/f0/a;->b(J)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v5}, Lcom/kwai/filedownloader/d0/a;->a(Lcom/kwai/filedownloader/f0/a;)V

    add-long/2addr v6, v8

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_15

    :cond_40
    add-long v2, v6, v8

    const-wide/16 v12, 0x1

    sub-long/2addr v2, v12

    goto :goto_1f

    :cond_46
    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/f0/c;->a(I)V

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    move/from16 v0, p3

    invoke-interface {v2, v10, v0}, Lcom/kwai/filedownloader/d0/a;->a(II)V

    move-wide/from16 v0, p1

    invoke-direct {p0, v11, v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_45

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->c(Ljava/lang/String;)Lcom/kwai/filedownloader/g0/a;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_43

    move-result-object v8

    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long v4, p1, v6

    invoke-static {p3}, Lcom/kwai/filedownloader/h0/f;->h(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_35

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/h0/e;->f:Z

    if-nez v0, :cond_2f

    invoke-interface {v8, p1, p2}, Lcom/kwai/filedownloader/g0/a;->a(J)V
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_3b

    :cond_2f
    :goto_2f
    if-eqz v8, :cond_34

    invoke-interface {v8}, Lcom/kwai/filedownloader/g0/a;->close()V

    :cond_34
    return-void

    :cond_35
    :try_start_35
    new-instance v1, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;

    invoke-direct/range {v1 .. v7}, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw v1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    move-object v1, v8

    :goto_3d
    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V

    :cond_42
    throw v0

    :catchall_43
    move-exception v0

    goto :goto_3d

    :cond_45
    move-object v8, v1

    goto :goto_2f
.end method

.method private a(Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/c0/b;)V
    .registers 14

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v2, v3}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    new-instance v1, Lcom/kwai/filedownloader/download/a;

    iget-wide v6, p1, Lcom/kwai/filedownloader/download/a;->c:J

    iget-wide v8, p1, Lcom/kwai/filedownloader/download/a;->d:J

    move-wide v4, v2

    invoke-direct/range {v1 .. v9}, Lcom/kwai/filedownloader/download/a;-><init>(JJJJ)V

    :goto_16
    new-instance v0, Lcom/kwai/filedownloader/download/e$b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/e$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/e$b;->b(I)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/e$b;->a(I)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v2

    iget-boolean v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Z

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/download/e$b;->a(Z)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/c0/b;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kwai/filedownloader/download/e$b;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/e$b;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/e$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/e$b;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1, v10}, Lcom/kwai/filedownloader/f0/c;->a(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-interface {v1, v2, v10}, Lcom/kwai/filedownloader/d0/a;->a(II)V

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e$b;->a()Lcom/kwai/filedownloader/download/e;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Lcom/kwai/filedownloader/download/e;

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e;->a()V

    :goto_6a
    return-void

    :cond_6b
    move-object v1, p1

    goto :goto_16

    :cond_6d
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e;->b()V

    goto :goto_6a
.end method

.method private a(Ljava/util/List;J)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Ljava/lang/String;

    if-eqz v2, :cond_a6

    move-object v12, v2

    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v17

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_46

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    move/from16 v18, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-wide v4, v2

    :goto_53
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/f0/a;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_b1

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->a()J

    move-result-wide v6

    sub-long v10, p2, v6

    :goto_6f
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->a()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long v14, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-nez v3, :cond_bf

    sget-boolean v3, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v3, :cond_1f6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "pass connection[%d-%d], because it has been completed"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v4, v14

    goto :goto_53

    :cond_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_17

    :cond_b1
    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->b()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long v10, v6, v8

    goto :goto_6f

    :cond_bf
    new-instance v20, Lcom/kwai/filedownloader/download/c$b;

    invoke-direct/range {v20 .. v20}, Lcom/kwai/filedownloader/download/c$b;-><init>()V

    new-instance v3, Lcom/kwai/filedownloader/download/a;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->e()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->a()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->b()J

    move-result-wide v8

    invoke-direct/range {v3 .. v11}, Lcom/kwai/filedownloader/download/a;-><init>(JJJJ)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/c$b;->a(I)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v4

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/a;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kwai/filedownloader/download/c$b;->a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/kwai/filedownloader/download/c$b;->a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/kwai/filedownloader/download/c$b;->c(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v5

    if-eqz v18, :cond_135

    move-object v4, v13

    :goto_f6
    invoke-virtual {v5, v4}, Lcom/kwai/filedownloader/download/c$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->c:Lcom/kwai/filedownloader/f0/b;

    invoke-virtual {v4, v5}, Lcom/kwai/filedownloader/download/c$b;->a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Z

    invoke-virtual {v4, v5}, Lcom/kwai/filedownloader/download/c$b;->a(Z)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kwai/filedownloader/download/c$b;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/kwai/filedownloader/download/c$b;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwai/filedownloader/download/c$b;->a()Lcom/kwai/filedownloader/download/c;

    move-result-object v3

    sget-boolean v4, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v4, :cond_129

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "enable multiple connection: %s"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_129
    if-eqz v3, :cond_137

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v4, v14

    goto/16 :goto_53

    :cond_135
    const/4 v4, 0x0

    goto :goto_f6

    :cond_137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the download runnable must not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_172

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const-string v3, "correct the sofar[%d] from connection table[%d]"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2, v4, v5}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    :cond_172
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_187
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/download/c;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v5, :cond_19d

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/c;->b()V

    goto :goto_187

    :cond_19d
    invoke-static {v2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_187

    :cond_1a5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v2, :cond_1b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    :cond_1b3
    return-void

    :cond_1b4
    sget-object v2, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v3, :cond_1b3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string v2, "finish sub-task for [%d] %B %B"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c2

    :cond_1f6
    move-wide v4, v14

    goto/16 :goto_53
.end method

.method private a(Ljava/util/Map;Lcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/c0/b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kwai/filedownloader/download/ConnectTask;",
            "Lcom/kwai/filedownloader/c0/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-interface {p3}, Lcom/kwai/filedownloader/c0/b;->f()I

    move-result v3

    const/16 v0, 0xce

    if-eq v3, v0, :cond_11

    const/4 v0, 0x1

    if-ne v3, v0, :cond_ce

    :cond_11
    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Z

    const/16 v0, 0xc8

    if-eq v3, v0, :cond_1e

    const/16 v0, 0xc9

    if-eq v3, v0, :cond_1e

    if-nez v3, :cond_d1

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3}, Lcom/kwai/filedownloader/h0/f;->b(ILcom/kwai/filedownloader/c0/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v6, 0x19c

    if-ne v3, v6, :cond_d4

    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    :cond_2f
    if-eqz v1, :cond_fe

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v0, :cond_51

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    const/4 v1, 0x1

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    const-string v1, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response requestHttpCode is %d"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v5, :cond_93

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "the old etag[%s] is the same to the new etag[%s], but the response status requestHttpCode is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_93
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/kwai/filedownloader/f0/c;->c(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->p()V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v6

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v8

    invoke-interface/range {v1 .. v8}, Lcom/kwai/filedownloader/d0/a;->a(ILjava/lang/String;JJI)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_ce
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_d1
    const/4 v0, 0x0

    goto/16 :goto_1f

    :cond_d4
    if-eqz v5, :cond_e2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e2

    if-nez v0, :cond_2e

    iget-boolean v6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-nez v6, :cond_2e

    :cond_e2
    const/16 v6, 0xc9

    if-ne v3, v6, :cond_ec

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/ConnectTask;->e()Z

    move-result v6

    if-nez v6, :cond_2e

    :cond_ec
    const/16 v6, 0x1a0

    if-ne v3, v6, :cond_2f

    iget-object v6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v6}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2f

    goto/16 :goto_2e

    :cond_fe
    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/ConnectTask;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-nez v1, :cond_10a

    if-eqz v0, :cond_144

    :cond_10a
    invoke-static {v2, p3}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/c0/b;)J

    move-result-wide v2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->o()Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/kwai/filedownloader/h0/f;->a(Lcom/kwai/filedownloader/c0/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_121
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_14e

    const/4 v0, 0x1

    :goto_128
    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-nez v0, :cond_135

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_135
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v1, :cond_150

    iget-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-eqz v1, :cond_150

    const/4 v1, 0x1

    :goto_140
    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/download/d;->a(ZJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_144
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;

    invoke-interface {p3}, Lcom/kwai/filedownloader/c0/b;->d()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v3, p1, v1}, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v0

    :cond_14e
    const/4 v0, 0x0

    goto :goto_128

    :cond_150
    const/4 v1, 0x0

    goto :goto_140
.end method

.method private g()V
    .registers 5

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Z

    if-eqz v0, :cond_c

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/kwai/filedownloader/h0/f;->e()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_16
    return-void

    :cond_17
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v3, v1, v2

    const-string v2, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
.end method

.method private h()V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->o()Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/kwai/filedownloader/h0/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Z

    invoke-static {v1, v5, v2, v4}, Lcom/kwai/filedownloader/h0/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_d7

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v2, v0}, Lcom/kwai/filedownloader/d0/a;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v2

    if-eqz v2, :cond_b2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/kwai/filedownloader/y;

    invoke-static {v1, v2, v3, v4}, Lcom/kwai/filedownloader/h0/c;->a(ILcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/y;Z)Z

    move-result v3

    if-nez v3, :cond_a2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v3, v0}, Lcom/kwai/filedownloader/d0/a;->c(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v4, v0}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v4, v0}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kwai/filedownloader/h0/f;->d(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/f0/c;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/kwai/filedownloader/f0/c;->c(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/f0/c;->a(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-interface {v0, v2}, Lcom/kwai/filedownloader/d0/a;->a(Lcom/kwai/filedownloader/f0/c;)V

    if-eqz v3, :cond_9c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/a;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/f0/a;->a(I)V

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v3, v0}, Lcom/kwai/filedownloader/d0/a;->a(Lcom/kwai/filedownloader/f0/a;)V

    goto :goto_87

    :cond_9c
    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_a2
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_b2
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Lcom/kwai/filedownloader/y;

    invoke-static/range {v1 .. v6}, Lcom/kwai/filedownloader/h0/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/y;)Z

    move-result v0

    if-nez v0, :cond_c7

    :cond_c6
    return-void

    :cond_c7
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_d7
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->d(I)Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0
.end method

.method private i()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v2

    if-gt v2, v0, :cond_f

    :goto_e
    return v1

    :cond_f
    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-nez v2, :cond_1d

    :goto_1b
    move v1, v0

    goto :goto_e

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/kwai/filedownloader/d0/a;->a(IJ)V

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/download/d;->a(J)V

    goto :goto_4
.end method

.method public a(Lcom/kwai/filedownloader/download/c;JJ)V
    .registers 16

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_20

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "the task[%d] has already been paused, so pass the completed callback"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    if-nez p1, :cond_8d

    const/4 v0, -0x1

    :goto_24
    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_4d

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "the connection has been completed(%d): [%d, %d)  %d"

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Z

    if-eqz v0, :cond_90

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_20

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :cond_8d
    iget v0, p1, Lcom/kwai/filedownloader/download/c;->h:I

    goto :goto_24

    :cond_90
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_93
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_20

    :catchall_9a
    move-exception v0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_21

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "the task[%d] has already been paused, so pass the error callback"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/c;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/c;->a()V

    goto :goto_2e
.end method

.method public a(Ljava/lang/Exception;J)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_1d

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "the task[%d] has already been paused, so pass the retry callback"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:I

    if-gez v0, :cond_42

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "valid retry times is less than 0(%d) for download task(%d)"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;IJ)V

    goto :goto_1d
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Exception;)Z
    .registers 5

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;->getCode()I

    move-result v0

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Z

    if-eqz v2, :cond_2a

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_2a

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Z

    :goto_29
    return v1

    :cond_2a
    iget v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:I

    if-lez v0, :cond_35

    instance-of v0, p1, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez v0, :cond_35

    move v0, v1

    :goto_33
    move v1, v0

    goto :goto_29

    :cond_35
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public e()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Lcom/kwai/filedownloader/download/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e;->a()V

    :cond_a
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/c;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/c;->b()V

    goto :goto_16

    :cond_28
    return-void
.end method

.method public f()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->c(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_30

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/f0/a;->a(Ljava/util/List;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->f()V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->b(I)V

    goto :goto_2a
.end method

.method public run()V
    .registers 13

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xa

    :try_start_6
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v0

    if-eq v0, v8, :cond_ae

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v0

    if-ne v0, v1, :cond_46

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_7a

    if-eqz v0, :cond_32

    const-string v0, "High concurrent cause, start runnable but already paused %d"

    const/4 v1, 0x1

    :try_start_20
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_7a

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->e()V

    :goto_40
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_45
    return-void

    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/RuntimeException;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_7a

    const-string v1, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v2, 0x3

    :try_start_4b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/f0/c;->h()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;)V
    :try_end_79
    .catchall {:try_start_4b .. :try_end_79} :catchall_7a

    goto :goto_32

    :catchall_7a
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-nez v1, :cond_304

    iget-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v1, :cond_2f5

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    :goto_8f
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_95
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_40

    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a6} :catch_a7

    goto :goto_40

    :catch_a7
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_40

    :cond_ae
    :try_start_ae
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->g()V

    :cond_b7
    :goto_b7
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_102

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_bd
    .catchall {:try_start_ae .. :try_end_bd} :catchall_7a

    if-eqz v0, :cond_d4

    const-string v0, "High concurrent cause, start runnable but already paused %d"

    const/4 v1, 0x1

    :try_start_c2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_c2 .. :try_end_d4} :catchall_7a

    :cond_d4
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->e()V

    :goto_e2
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_45

    :cond_e9
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_e2

    :cond_f5
    :try_start_f5
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fa} :catch_fb

    goto :goto_e2

    :catch_fb
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_e2

    :cond_102
    :try_start_102
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g()V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Lcom/kwai/filedownloader/d0/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/d0/a;->c(I)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;)Lcom/kwai/filedownloader/download/a;

    move-result-object v0

    new-instance v1, Lcom/kwai/filedownloader/download/ConnectTask$b;

    invoke-direct {v1}, Lcom/kwai/filedownloader/download/ConnectTask$b;-><init>()V

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(I)Lcom/kwai/filedownloader/download/ConnectTask$b;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/ConnectTask$b;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->c:Lcom/kwai/filedownloader/f0/b;

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(Lcom/kwai/filedownloader/f0/b;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/ConnectTask$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/ConnectTask$b;->a()Lcom/kwai/filedownloader/download/ConnectTask;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kwai/filedownloader/download/ConnectTask;->a()Lcom/kwai/filedownloader/c0/b;
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_149} :catch_30b
    .catch Ljava/lang/IllegalAccessException; {:try_start_102 .. :try_end_149} :catch_30f
    .catch Ljava/lang/InterruptedException; {:try_start_102 .. :try_end_149} :catch_2c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_102 .. :try_end_149} :catch_2c2
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_102 .. :try_end_149} :catch_2be
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_102 .. :try_end_149} :catch_289
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_102 .. :try_end_149} :catch_27e
    .catchall {:try_start_102 .. :try_end_149} :catchall_2ed

    move-result-object v6

    :try_start_14a
    invoke-virtual {v11}, Lcom/kwai/filedownloader/download/ConnectTask;->d()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, v11, v6}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/Map;Lcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/c0/b;)V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_18e

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/f0/c;->a(B)V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_15b} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_14a .. :try_end_15b} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_15b} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14a .. :try_end_15b} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_14a .. :try_end_15b} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_14a .. :try_end_15b} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_14a .. :try_end_15b} :catch_32c
    .catchall {:try_start_14a .. :try_end_15b} :catchall_333

    if-eqz v6, :cond_160

    :try_start_15d
    invoke-interface {v6}, Lcom/kwai/filedownloader/c0/b;->c()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_7a

    :cond_160
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_175

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->e()V

    :goto_16e
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_45

    :cond_175
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_181

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_16e

    :cond_181
    :try_start_181
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_186} :catch_187

    goto :goto_16e

    :catch_187
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_16e

    :cond_18e
    :try_start_18e
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h()V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i()Z

    move-result v0

    if-eqz v0, :cond_1f2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v0, :cond_1d7

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v0

    :goto_1b0
    move v2, v0

    :goto_1b1
    if-lez v2, :cond_26a

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_20d

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/f0/c;->a(B)V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_1bd} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_18e .. :try_end_1bd} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_18e .. :try_end_1bd} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18e .. :try_end_1bd} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_18e .. :try_end_1bd} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_18e .. :try_end_1bd} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_18e .. :try_end_1bd} :catch_32c
    .catchall {:try_start_18e .. :try_end_1bd} :catchall_333

    if-eqz v6, :cond_1c2

    :try_start_1bf
    invoke-interface {v6}, Lcom/kwai/filedownloader/c0/b;->c()V
    :try_end_1c2
    .catchall {:try_start_1bf .. :try_end_1c2} :catchall_7a

    :cond_1c2
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_1f4

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->e()V

    :goto_1d0
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_45

    :cond_1d7
    :try_start_1d7
    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/f0/c;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/f0/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/download/b;->a(ILjava/lang/String;Ljava/lang/String;J)I
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1f0} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d7 .. :try_end_1f0} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_1d7 .. :try_end_1f0} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d7 .. :try_end_1f0} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1d7 .. :try_end_1f0} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_1d7 .. :try_end_1f0} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_1d7 .. :try_end_1f0} :catch_32c
    .catchall {:try_start_1d7 .. :try_end_1f0} :catchall_333

    move-result v0

    goto :goto_1b0

    :cond_1f2
    move v2, v8

    goto :goto_1b1

    :cond_1f4
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_200

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_1d0

    :cond_200
    :try_start_200
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_205} :catch_206

    goto :goto_1d0

    :catch_206
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_1d0

    :cond_20d
    if-ne v2, v8, :cond_238

    move v0, v8

    :goto_210
    :try_start_210
    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Z

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Z

    if-eqz v0, :cond_23a

    invoke-virtual {v11}, Lcom/kwai/filedownloader/download/ConnectTask;->c()Lcom/kwai/filedownloader/download/a;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/c0/b;)V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_21d} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_210 .. :try_end_21d} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_210 .. :try_end_21d} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_210 .. :try_end_21d} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_210 .. :try_end_21d} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_210 .. :try_end_21d} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_210 .. :try_end_21d} :catch_32c
    .catchall {:try_start_210 .. :try_end_21d} :catchall_333

    move-object v1, v6

    :goto_21e
    if-eqz v1, :cond_223

    :goto_220
    :try_start_220
    invoke-interface {v1}, Lcom/kwai/filedownloader/c0/b;->c()V
    :try_end_223
    .catchall {:try_start_220 .. :try_end_223} :catchall_7a

    :cond_223
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_2d1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->e()V

    :goto_231
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_45

    :cond_238
    move v0, v9

    goto :goto_210

    :cond_23a
    if-eqz v6, :cond_338

    :try_start_23c
    invoke-interface {v6}, Lcom/kwai/filedownloader/c0/b;->c()V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_23f} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_23c .. :try_end_23f} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_23c .. :try_end_23f} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23c .. :try_end_23f} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_23c .. :try_end_23f} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_23c .. :try_end_23f} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_23c .. :try_end_23f} :catch_32c
    .catchall {:try_start_23c .. :try_end_23f} :catchall_333

    move-object v1, v7

    :goto_240
    :try_start_240
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->d()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v0, :cond_262

    invoke-direct {p0, v2, v10}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(ILjava/util/List;)V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_24c} :catch_24d
    .catch Ljava/lang/IllegalAccessException; {:try_start_240 .. :try_end_24c} :catch_266
    .catch Ljava/lang/InterruptedException; {:try_start_240 .. :try_end_24c} :catch_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_240 .. :try_end_24c} :catch_31d
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_240 .. :try_end_24c} :catch_322
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_240 .. :try_end_24c} :catch_328
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_240 .. :try_end_24c} :catch_330
    .catchall {:try_start_240 .. :try_end_24c} :catchall_336

    goto :goto_21e

    :catch_24d
    move-exception v0

    move-object v6, v1

    :goto_24f
    move-object v1, v6

    :goto_250
    :try_start_250
    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;J)V
    :try_end_25b
    .catchall {:try_start_250 .. :try_end_25b} :catchall_336

    if-eqz v1, :cond_b7

    :goto_25d
    :try_start_25d
    invoke-interface {v1}, Lcom/kwai/filedownloader/c0/b;->c()V
    :try_end_260
    .catchall {:try_start_25d .. :try_end_260} :catchall_7a

    goto/16 :goto_b7

    :cond_262
    :try_start_262
    invoke-direct {p0, v4, v5, v2}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(JI)V
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_265} :catch_24d
    .catch Ljava/lang/IllegalAccessException; {:try_start_262 .. :try_end_265} :catch_266
    .catch Ljava/lang/InterruptedException; {:try_start_262 .. :try_end_265} :catch_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_262 .. :try_end_265} :catch_31d
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_262 .. :try_end_265} :catch_322
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_262 .. :try_end_265} :catch_328
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_262 .. :try_end_265} :catch_330
    .catchall {:try_start_262 .. :try_end_265} :catchall_336

    goto :goto_21e

    :catch_266
    move-exception v0

    move-object v6, v1

    :goto_268
    move-object v1, v6

    goto :goto_250

    :cond_26a
    :try_start_26a
    new-instance v0, Ljava/lang/IllegalAccessException;
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_26c} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_26a .. :try_end_26c} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_26a .. :try_end_26c} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26a .. :try_end_26c} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_26a .. :try_end_26c} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_26a .. :try_end_26c} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_26a .. :try_end_26c} :catch_32c
    .catchall {:try_start_26a .. :try_end_26c} :catchall_333

    const-string v1, "invalid connection count %d, the connection count must be larger than 0"

    const/4 v2, 0x1

    :try_start_26f
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27c
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_27c} :catch_27c
    .catch Ljava/lang/IllegalAccessException; {:try_start_26f .. :try_end_27c} :catch_313
    .catch Ljava/lang/InterruptedException; {:try_start_26f .. :try_end_27c} :catch_316
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26f .. :try_end_27c} :catch_31b
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_26f .. :try_end_27c} :catch_320
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_26f .. :try_end_27c} :catch_325
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_26f .. :try_end_27c} :catch_32c
    .catchall {:try_start_26f .. :try_end_27c} :catchall_333

    :catch_27c
    move-exception v0

    goto :goto_24f

    :catch_27e
    move-exception v0

    move-object v1, v7

    :goto_280
    :try_start_280
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/f0/c;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/kwai/filedownloader/f0/c;->a(B)V
    :try_end_286
    .catchall {:try_start_280 .. :try_end_286} :catchall_336

    if-eqz v1, :cond_b7

    goto :goto_25d

    :catch_289
    move-exception v0

    move-object v6, v7

    :goto_28b
    if-eqz v6, :cond_290

    :try_start_28d
    invoke-interface {v6}, Lcom/kwai/filedownloader/c0/b;->c()V
    :try_end_290
    .catchall {:try_start_28d .. :try_end_290} :catchall_7a

    :cond_290
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-eqz v0, :cond_2a5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->e()V

    :goto_29e
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_45

    :cond_2a5
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_2b1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_29e

    :cond_2b1
    :try_start_2b1
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2b6} :catch_2b7

    goto :goto_29e

    :catch_2b7
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_29e

    :catch_2be
    move-exception v0

    move-object v6, v7

    :goto_2c0
    move-object v1, v6

    goto :goto_250

    :catch_2c2
    move-exception v0

    move-object v6, v7

    :goto_2c4
    move-object v1, v6

    goto :goto_250

    :catch_2c6
    move-exception v0

    move-object v6, v7

    :goto_2c8
    move-object v1, v6

    goto :goto_250

    :cond_2ca
    :try_start_2ca
    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;)V
    :try_end_2cd
    .catchall {:try_start_2ca .. :try_end_2cd} :catchall_336

    if-eqz v1, :cond_223

    goto/16 :goto_220

    :cond_2d1
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Z

    if-eqz v0, :cond_2de

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_231

    :cond_2de
    :try_start_2de
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_2e3
    .catch Ljava/io/IOException; {:try_start_2de .. :try_end_2e3} :catch_2e5

    goto/16 :goto_231

    :catch_2e5
    move-exception v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_231

    :catchall_2ed
    move-exception v0

    move-object v1, v7

    :goto_2ef
    if-eqz v1, :cond_2f4

    :try_start_2f1
    invoke-interface {v1}, Lcom/kwai/filedownloader/c0/b;->c()V

    :cond_2f4
    throw v0
    :try_end_2f5
    .catchall {:try_start_2f1 .. :try_end_2f5} :catchall_7a

    :cond_2f5
    :try_start_2f5
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/d;->c()V
    :try_end_2fa
    .catch Ljava/io/IOException; {:try_start_2f5 .. :try_end_2fa} :catch_2fc

    goto/16 :goto_8f

    :catch_2fc
    move-exception v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2, v1}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_8f

    :cond_304
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/d;->e()V

    goto/16 :goto_8f

    :catch_30b
    move-exception v0

    move-object v6, v7

    goto/16 :goto_24f

    :catch_30f
    move-exception v0

    move-object v6, v7

    goto/16 :goto_268

    :catch_313
    move-exception v0

    goto/16 :goto_268

    :catch_316
    move-exception v0

    goto :goto_2c8

    :catch_318
    move-exception v0

    move-object v6, v1

    goto :goto_2c8

    :catch_31b
    move-exception v0

    goto :goto_2c4

    :catch_31d
    move-exception v0

    move-object v6, v1

    goto :goto_2c4

    :catch_320
    move-exception v0

    goto :goto_2c0

    :catch_322
    move-exception v0

    move-object v6, v1

    goto :goto_2c0

    :catch_325
    move-exception v0

    goto/16 :goto_28b

    :catch_328
    move-exception v0

    move-object v6, v1

    goto/16 :goto_28b

    :catch_32c
    move-exception v0

    move-object v1, v6

    goto/16 :goto_280

    :catch_330
    move-exception v0

    goto/16 :goto_280

    :catchall_333
    move-exception v0

    move-object v1, v6

    goto :goto_2ef

    :catchall_336
    move-exception v0

    goto :goto_2ef

    :cond_338
    move-object v1, v6

    goto/16 :goto_240
.end method
