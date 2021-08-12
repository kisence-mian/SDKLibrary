.class public Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/download/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$a;,
        Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;,
        Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private A:J

.field a:I

.field private final b:Lcom/kwai/filedownloader/download/d;

.field private final c:I

.field private final d:Lcom/kwai/filedownloader/d/c;

.field private final e:Lcom/kwai/filedownloader/d/b;

.field private final f:Z

.field private final g:Z

.field private final h:Lcom/kwai/filedownloader/b/a;

.field private final i:Lcom/kwai/filedownloader/x;

.field private j:Z

.field private final k:Z

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwai/filedownloader/download/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/kwai/filedownloader/download/e;

.field private n:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile t:Z

.field private volatile u:Z

.field private volatile v:Ljava/lang/Exception;

.field private w:Ljava/lang/String;

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ConnectionBlock"

    invoke-static {v0}, Lcom/kwai/filedownloader/f/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Lcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/d/b;Lcom/kwai/filedownloader/x;IIZZI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->c:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->x:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->y:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->z:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->A:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    iput-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/kwai/filedownloader/d/b;

    iput-boolean p6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Z

    iput-boolean p7, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Z

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/b;->c()Lcom/kwai/filedownloader/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwai/filedownloader/download/b;->e()Z

    move-result p2

    iput-boolean p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Z

    iput-object p3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:Lcom/kwai/filedownloader/x;

    iput p8, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:I

    new-instance p2, Lcom/kwai/filedownloader/download/d;

    invoke-direct {p2, p1, p8, p4, p5}, Lcom/kwai/filedownloader/download/d;-><init>(Lcom/kwai/filedownloader/d/c;III)V

    iput-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/d/b;Lcom/kwai/filedownloader/x;IIZZILcom/kwai/filedownloader/download/DownloadLaunchRunnable$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/d/b;Lcom/kwai/filedownloader/x;IIZZI)V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/kwai/filedownloader/download/a;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;)",
            "Lcom/kwai/filedownloader/download/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v1

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v1, v5, :cond_1a

    move v6, v5

    goto :goto_1b

    :cond_1a
    move v6, v4

    :goto_1b
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_24

    iget-boolean v9, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Z

    if-nez v9, :cond_24

    goto :goto_56

    :cond_24
    iget-object v9, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v9}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v9

    iget-object v10, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-static {v9, v10}, Lcom/kwai/filedownloader/f/f;->a(ILcom/kwai/filedownloader/d/c;)Z

    move-result v9

    if-eqz v9, :cond_56

    iget-boolean v9, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Z

    if-nez v9, :cond_41

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    :goto_3f
    move-wide v14, v9

    goto :goto_57

    :cond_41
    if-eqz v6, :cond_4f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v1, v6, :cond_4a

    goto :goto_56

    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/kwai/filedownloader/d/a;->a(Ljava/util/List;)J

    move-result-wide v9

    goto :goto_3f

    :cond_4f
    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v9

    goto :goto_3f

    :cond_56
    :goto_56
    move-wide v14, v7

    :goto_57
    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1, v14, v15}, Lcom/kwai/filedownloader/d/c;->a(J)V

    cmp-long v1, v14, v7

    if-lez v1, :cond_61

    move v4, v5

    :cond_61
    iput-boolean v4, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-nez v4, :cond_73

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v4, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/kwai/filedownloader/b/a;->d(I)V

    invoke-static {v3, v2}, Lcom/kwai/filedownloader/f/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    new-instance v1, Lcom/kwai/filedownloader/download/a;

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v2

    sub-long v18, v2, v14

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/kwai/filedownloader/download/a;-><init>(JJJJ)V

    return-object v1
.end method

.method private a(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_13

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;J)V

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(JI)V
    .registers 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    int-to-long v4, v3

    div-long v4, v1, v4

    iget-object v6, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v6}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v11, v8

    :goto_18
    if-ge v10, v3, :cond_45

    add-int/lit8 v13, v3, -0x1

    if-ne v10, v13, :cond_20

    move-wide v13, v8

    goto :goto_25

    :cond_20
    add-long v13, v11, v4

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    :goto_25
    new-instance v15, Lcom/kwai/filedownloader/d/a;

    invoke-direct {v15}, Lcom/kwai/filedownloader/d/a;-><init>()V

    invoke-virtual {v15, v6}, Lcom/kwai/filedownloader/d/a;->a(I)V

    invoke-virtual {v15, v10}, Lcom/kwai/filedownloader/d/a;->b(I)V

    invoke-virtual {v15, v11, v12}, Lcom/kwai/filedownloader/d/a;->a(J)V

    invoke-virtual {v15, v11, v12}, Lcom/kwai/filedownloader/d/a;->b(J)V

    invoke-virtual {v15, v13, v14}, Lcom/kwai/filedownloader/d/a;->c(J)V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v13, v15}, Lcom/kwai/filedownloader/b/a;->a(Lcom/kwai/filedownloader/d/a;)V

    add-long/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_45
    iget-object v4, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v4, v3}, Lcom/kwai/filedownloader/d/c;->b(I)V

    iget-object v4, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v4, v6, v3}, Lcom/kwai/filedownloader/b/a;->a(II)V

    invoke-direct {v0, v7, v1, v2}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .registers 13

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    :try_start_7
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f/f;->l(Ljava/lang/String;)Lcom/kwai/filedownloader/e/a;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long v5, p1, v7

    invoke-static {p3}, Lcom/kwai/filedownloader/f/f;->f(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_30

    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object p3

    iget-boolean p3, p3, Lcom/kwai/filedownloader/f/e;->f:Z

    if-nez p3, :cond_3e

    invoke-interface {v1, p1, p2}, Lcom/kwai/filedownloader/e/a;->b(J)V

    goto :goto_3e

    :cond_30
    new-instance p1, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/kwai/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw p1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Lcom/kwai/filedownloader/e/a;->b()V

    :cond_3d
    throw p1

    :cond_3e
    :goto_3e
    if-eqz v1, :cond_43

    invoke-interface {v1}, Lcom/kwai/filedownloader/e/a;->b()V

    :cond_43
    return-void
.end method

.method private a(Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/a/b;)V
    .registers 15

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwai/filedownloader/d/c;->a(J)V

    new-instance v0, Lcom/kwai/filedownloader/download/a;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/kwai/filedownloader/download/a;->c:J

    iget-wide v10, p1, Lcom/kwai/filedownloader/download/a;->d:J

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/kwai/filedownloader/download/a;-><init>(JJJJ)V

    move-object p1, v0

    :cond_1a
    new-instance v0, Lcom/kwai/filedownloader/download/e$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/download/e$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/e$a;->b(I)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/e$a;->a(I)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Z

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/e$a;->a(Z)Lcom/kwai/filedownloader/download/e$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/a/b;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kwai/filedownloader/download/e$a;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/e$a;

    move-result-object p1

    iget-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwai/filedownloader/download/e$a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/e$a;

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kwai/filedownloader/d/c;->b(I)V

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-interface {p1, v1, p2}, Lcom/kwai/filedownloader/b/a;->a(II)V

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e$a;->a()Lcom/kwai/filedownloader/download/e;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Lcom/kwai/filedownloader/download/e;

    iget-boolean p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/kwai/filedownloader/d/c;->a(B)V

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/e;->a()V

    goto :goto_75

    :cond_70
    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Lcom/kwai/filedownloader/download/e;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/e;->b()V

    :goto_75
    return-void
.end method

.method private a(Ljava/util/List;J)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/String;

    if-eqz v3, :cond_13

    goto :goto_19

    :cond_13
    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v3

    :goto_19
    iget-object v4, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_44

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v7

    const-string v10, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    invoke-static {v0, v10, v5}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    iget-boolean v5, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_4d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/kwai/filedownloader/d/a;

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->e()J

    move-result-wide v16

    cmp-long v16, v16, v11

    if-nez v16, :cond_68

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->d()J

    move-result-wide v16

    sub-long v16, p2, v16

    goto :goto_76

    :cond_68
    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->e()J

    move-result-wide v16

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->d()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    :goto_76
    move-wide/from16 v25, v16

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->d()J

    move-result-wide v16

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->c()J

    move-result-wide v18

    sub-long v16, v16, v18

    add-long v13, v13, v16

    cmp-long v16, v25, v11

    if-nez v16, :cond_a8

    sget-boolean v16, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v16, :cond_10d

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->b()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "pass connection[%d-%d], because it has been completed"

    invoke-static {v0, v12, v11}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10d

    :cond_a8
    new-instance v11, Lcom/kwai/filedownloader/download/c$a;

    invoke-direct {v11}, Lcom/kwai/filedownloader/download/c$a;-><init>()V

    new-instance v12, Lcom/kwai/filedownloader/download/a;

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->c()J

    move-result-wide v19

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->d()J

    move-result-wide v21

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->e()J

    move-result-wide v23

    move-object/from16 v18, v12

    invoke-direct/range {v18 .. v26}, Lcom/kwai/filedownloader/download/a;-><init>(JJJJ)V

    invoke-virtual {v11, v1}, Lcom/kwai/filedownloader/download/c$a;->a(I)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v11

    invoke-virtual {v15}, Lcom/kwai/filedownloader/d/a;->b()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/kwai/filedownloader/download/c$a;->a(Ljava/lang/Integer;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/kwai/filedownloader/download/c$a;->a(Lcom/kwai/filedownloader/download/f;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/kwai/filedownloader/download/c$a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    if-eqz v5, :cond_dc

    move-object v11, v2

    goto :goto_dd

    :cond_dc
    const/4 v11, 0x0

    :goto_dd
    invoke-virtual {v6, v11}, Lcom/kwai/filedownloader/download/c$a;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    iget-object v11, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/kwai/filedownloader/d/b;

    invoke-virtual {v6, v11}, Lcom/kwai/filedownloader/download/c$a;->a(Lcom/kwai/filedownloader/d/b;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    iget-boolean v11, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Z

    invoke-virtual {v6, v11}, Lcom/kwai/filedownloader/download/c$a;->a(Z)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/kwai/filedownloader/download/c$a;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/kwai/filedownloader/download/c$a;->c(Ljava/lang/String;)Lcom/kwai/filedownloader/download/c$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kwai/filedownloader/download/c$a;->a()Lcom/kwai/filedownloader/download/c;

    move-result-object v6

    sget-boolean v11, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v11, :cond_106

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v15, v11, v9

    const-string v12, "enable multiple connection: %s"

    invoke-static {v0, v12, v11}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_106
    if-eqz v6, :cond_112

    iget-object v11, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    :goto_10d
    const/4 v6, 0x3

    const-wide/16 v11, 0x0

    goto/16 :goto_4d

    :cond_112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the download runnable must not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11a
    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    cmp-long v2, v13, v2

    if-eqz v2, :cond_142

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v3}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "correct the sofar[%d] from connection table[%d]"

    invoke-static {v0, v3, v2}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2, v13, v14}, Lcom/kwai/filedownloader/d/c;->a(J)V

    :cond_142
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_153
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwai/filedownloader/download/c;

    iget-boolean v5, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v5, :cond_167

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/c;->a()V

    goto :goto_153

    :cond_167
    invoke-static {v4}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_16f
    iget-boolean v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v3, :cond_17a

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/d/c;->a(B)V

    return-void

    :cond_17a
    sget-object v3, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v3, :cond_1b7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_188
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "finish sub-task for [%d] %B %B"

    invoke-static {v0, v3, v5}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_188

    :cond_1b7
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/a/b;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kwai/filedownloader/download/ConnectTask;",
            "Lcom/kwai/filedownloader/a/b;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Lcom/kwai/filedownloader/a/b;->e()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xce

    if-eq v2, v6, :cond_19

    if-ne v2, v5, :cond_17

    goto :goto_19

    :cond_17
    move v6, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v6, v5

    :goto_1a
    iput-boolean v6, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Z

    const/16 v6, 0xc8

    const/16 v7, 0xc9

    if-eq v2, v6, :cond_29

    if-eq v2, v7, :cond_29

    if-nez v2, :cond_27

    goto :goto_29

    :cond_27
    move v6, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v6, v5

    :goto_2a
    iget-object v8, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v8}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v1}, Lcom/kwai/filedownloader/f/f;->a(ILcom/kwai/filedownloader/a/b;)Ljava/lang/String;

    move-result-object v13

    const/16 v9, 0x19c

    const-wide/16 v10, 0x0

    if-ne v2, v9, :cond_3c

    :cond_3a
    :goto_3a
    move v7, v5

    goto :goto_64

    :cond_3c
    if-eqz v8, :cond_4b

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    if-nez v6, :cond_3a

    iget-boolean v9, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v9, :cond_4b

    goto :goto_3a

    :cond_4b
    if-ne v2, v7, :cond_54

    invoke-virtual/range {p2 .. p2}, Lcom/kwai/filedownloader/download/ConnectTask;->b()Z

    move-result v7

    if-eqz v7, :cond_54

    goto :goto_3a

    :cond_54
    const/16 v7, 0x1a0

    if-ne v2, v7, :cond_63

    iget-object v7, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v14

    cmp-long v7, v14, v10

    if-lez v7, :cond_63

    goto :goto_3a

    :cond_63
    move v7, v3

    :goto_64
    const/4 v9, 0x0

    if-eqz v7, :cond_f8

    iget-boolean v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v12, 0x4

    if-eqz v1, :cond_85

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v3

    aput-object v8, v1, v5

    aput-object v13, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v6

    const-string v14, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response requestHttpCode is %d"

    invoke-static {v0, v14, v1}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_85
    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v14, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v14

    invoke-interface {v1, v14}, Lcom/kwai/filedownloader/b/a;->d(I)V

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v14, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v14}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/kwai/filedownloader/f/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-eqz v8, :cond_c1

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v3

    aput-object v13, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "the old etag[%s] is the same to the new etag[%s], but the response status requestHttpCode is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    invoke-static {v0, v2, v1}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v13, v9

    :cond_c1
    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1, v10, v11}, Lcom/kwai/filedownloader/d/c;->a(J)V

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1, v10, v11}, Lcom/kwai/filedownloader/d/c;->c(J)V

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1, v13}, Lcom/kwai/filedownloader/d/c;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->o()V

    iget-object v3, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v6

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v8

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v10

    invoke-interface/range {v3 .. v10}, Lcom/kwai/filedownloader/b/a;->a(ILjava/lang/String;JJI)V

    new-instance v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v1, v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v1

    :cond_f8
    invoke-virtual/range {p2 .. p2}, Lcom/kwai/filedownloader/download/ConnectTask;->c()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->w:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-nez v7, :cond_111

    if-eqz v6, :cond_105

    goto :goto_111

    :cond_105
    new-instance v3, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;

    invoke-interface/range {p3 .. p3}, Lcom/kwai/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-direct {v3, v2, v4, v1}, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v3

    :cond_111
    :goto_111
    invoke-static {v4, v1}, Lcom/kwai/filedownloader/f/f;->b(ILcom/kwai/filedownloader/a/b;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result v2

    if-eqz v2, :cond_129

    iget-object v2, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/f/f;->a(Lcom/kwai/filedownloader/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_12a

    :cond_129
    move-object v14, v9

    :goto_12a
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-nez v1, :cond_132

    move v1, v5

    goto :goto_133

    :cond_132
    move v1, v3

    :goto_133
    iput-boolean v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-nez v1, :cond_140

    iget-object v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v1

    add-long/2addr v1, v6

    move-wide v11, v1

    goto :goto_141

    :cond_140
    move-wide v11, v6

    :goto_141
    iget-object v9, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    iget-boolean v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-eqz v1, :cond_14d

    iget-boolean v1, v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v1, :cond_14d

    move v10, v5

    goto :goto_14e

    :cond_14d
    move v10, v3

    :goto_14e
    invoke-virtual/range {v9 .. v14}, Lcom/kwai/filedownloader/download/d;->a(ZJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()Z
    .registers 4

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v0

    if-gt v0, v2, :cond_f

    return v1

    :cond_f
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->q:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->k:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->r:Z

    if-nez v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method private h()V
    .registers 6

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Z

    if-eqz v0, :cond_2c

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/kwai/filedownloader/f/f;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2c

    :cond_d
    new-instance v1, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g:Z

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/kwai/filedownloader/f/f;->d()Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_3d

    :cond_37
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0

    :cond_3d
    :goto_3d
    return-void
.end method

.method private i()V
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->l()Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/kwai/filedownloader/f/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f:Z

    const/4 v3, 0x0

    invoke-static {v0, v5, v2, v3}, Lcom/kwai/filedownloader/f/c;->a(ILjava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_d8

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v2, v1}, Lcom/kwai/filedownloader/b/a;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v2

    if-eqz v2, :cond_b2

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:Lcom/kwai/filedownloader/x;

    invoke-static {v0, v2, v4, v3}, Lcom/kwai/filedownloader/f/c;->a(ILcom/kwai/filedownloader/d/c;Lcom/kwai/filedownloader/x;Z)Z

    move-result v3

    if-nez v3, :cond_a2

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v3, v1}, Lcom/kwai/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v4, v1}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v4, v1}, Lcom/kwai/filedownloader/b/a;->d(I)V

    iget-object v4, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kwai/filedownloader/f/f;->n(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/kwai/filedownloader/f/f;->a(ILcom/kwai/filedownloader/d/c;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/kwai/filedownloader/d/c;->a(J)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/kwai/filedownloader/d/c;->c(J)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kwai/filedownloader/d/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/d/c;->b(I)V

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-interface {v1, v2}, Lcom/kwai/filedownloader/b/a;->a(Lcom/kwai/filedownloader/d/c;)V

    if-eqz v3, :cond_9c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/d/a;

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/d/a;->a(I)V

    iget-object v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v3, v2}, Lcom/kwai/filedownloader/b/a;->a(Lcom/kwai/filedownloader/d/a;)V

    goto :goto_87

    :cond_9c
    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_a2
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/b/a;->d(I)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_b2
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i:Lcom/kwai/filedownloader/x;

    move v1, v0

    invoke-static/range {v1 .. v6}, Lcom/kwai/filedownloader/f/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/x;)Z

    move-result v1

    if-nez v1, :cond_c8

    goto :goto_e8

    :cond_c8
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/b/a;->d(I)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_d8
    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/b/a;->e(I)Z

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/kwai/filedownloader/b/a;->d(I)V

    new-instance v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V

    throw v0

    :cond_e8
    :goto_e8
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->m:Lcom/kwai/filedownloader/download/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/e;->a()V

    :cond_a
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwai/filedownloader/download/c;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/kwai/filedownloader/download/c;->a()V

    goto :goto_16

    :cond_28
    return-void
.end method

.method public a(J)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/download/d;->a(J)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/download/c;JJ)V
    .registers 16

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_1d

    const-string p1, "the task[%d] has already been paused, so pass the completed callback"

    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p3}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p0, p1, p2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    if-nez p1, :cond_22

    const/4 v0, -0x1

    goto :goto_24

    :cond_22
    iget v0, p1, Lcom/kwai/filedownloader/download/c;->a:I

    :goto_24
    sget-boolean v3, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_50

    const-string v3, "the connection has been completed(%d): [%d, %d)  %d"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {p0, v3, v7}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_50
    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v0, :cond_90

    const-wide/16 v7, 0x0

    cmp-long p1, p2, v7

    if-eqz p1, :cond_99

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v7

    cmp-long p1, p4, v7

    if-eqz p1, :cond_99

    const-string p1, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_99

    :cond_90
    iget-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_93
    iget-object p3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p2

    :cond_99
    :goto_99
    return-void

    :catchall_9a
    move-exception p1

    monitor-exit p2
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9a

    throw p1
.end method

.method public a(Ljava/lang/Exception;J)V
    .registers 8

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_1d

    new-array p1, v2, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "the task[%d] has already been paused, so pass the retry callback"

    invoke-static {p0, p2, p1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    iget v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:I

    if-gez v0, :cond_40

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "valid retry times is less than 0(%d) for download task(%d)"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    iget v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;IJ)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)Z
    .registers 5

    instance-of v0, p1, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    move-object v0, p1

    check-cast v0, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/exception/FileDownloadHttpException;->getCode()I

    move-result v0

    iget-boolean v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v2, :cond_2a

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_2a

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    if-nez v0, :cond_2a

    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/f/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->j:Z

    return v1

    :cond_2a
    iget v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a:I

    if-lez v0, :cond_33

    instance-of p1, p1, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    return v1
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3d

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-static {v0}, Lcom/kwai/filedownloader/d/a;->a(Ljava/util/List;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kwai/filedownloader/d/c;->a(J)V

    goto :goto_3d

    :cond_2b
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwai/filedownloader/d/c;->a(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/b/a;->d(I)V

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->c()V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    iput-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->v:Ljava/lang/Exception;

    iget-boolean p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz p1, :cond_22

    sget-boolean p1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz p1, :cond_21

    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "the task[%d] has already been paused, so pass the error callback"

    invoke-static {p0, v0, p1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    return-void

    :cond_22
    iget-object p1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/c;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/c;->b()V

    goto :goto_2e

    :cond_40
    return-void
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/kwai/filedownloader/b/a;->a(IJ)V

    return-void
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/d;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 20

    move-object/from16 v1, p0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :try_start_5
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_299

    const-string v4, "High concurrent cause, start runnable but already paused %d"

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_90

    :try_start_14
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v2

    if-ne v2, v5, :cond_32

    sget-boolean v2, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v2, :cond_62

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v5}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_62

    :cond_32
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    iget-object v7, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v7}, Lcom/kwai/filedownloader/d/c;->f()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v7, 0x2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_299

    :cond_62
    :goto_62
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_71

    :goto_6b
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->f()V

    goto :goto_8a

    :cond_71
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_7d

    :goto_75
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->v:Ljava/lang/Exception;

    invoke-virtual {v2, v4}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_8a

    :cond_7d
    :try_start_7d
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_82} :catch_83

    goto :goto_8a

    :catch_83
    move-exception v0

    move-object v2, v0

    :goto_85
    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v4, v2}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    :goto_8a
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_90
    :try_start_90
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-nez v2, :cond_99

    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->d()V

    :cond_99
    :goto_99
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_ca

    sget-boolean v2, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v2, :cond_b2

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v5}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_90 .. :try_end_b2} :catchall_299

    :cond_b2
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_bc

    goto :goto_6b

    :cond_bc
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_c1

    goto :goto_75

    :cond_c1
    :try_start_c1
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c6} :catch_c7

    goto :goto_8a

    :catch_c7
    move-exception v0

    move-object v2, v0

    goto :goto_85

    :cond_ca
    const/4 v2, 0x0

    :try_start_cb
    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h()V

    iget-object v7, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->h:Lcom/kwai/filedownloader/b/a;

    iget-object v8, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v8}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/kwai/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/List;)Lcom/kwai/filedownloader/download/a;

    move-result-object v8

    new-instance v9, Lcom/kwai/filedownloader/download/ConnectTask$a;

    invoke-direct {v9}, Lcom/kwai/filedownloader/download/ConnectTask$a;-><init>()V

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(I)Lcom/kwai/filedownloader/download/ConnectTask$a;

    move-result-object v9

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    move-result-object v9

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kwai/filedownloader/download/ConnectTask$a;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    move-result-object v9

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e:Lcom/kwai/filedownloader/d/b;

    invoke-virtual {v9, v10}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(Lcom/kwai/filedownloader/d/b;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a(Lcom/kwai/filedownloader/download/a;)Lcom/kwai/filedownloader/download/ConnectTask$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kwai/filedownloader/download/ConnectTask$a;->a()Lcom/kwai/filedownloader/download/ConnectTask;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kwai/filedownloader/download/ConnectTask;->a()Lcom/kwai/filedownloader/a/b;

    move-result-object v9
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_113} :catch_24d
    .catch Ljava/lang/IllegalAccessException; {:try_start_cb .. :try_end_113} :catch_24b
    .catch Ljava/lang/InterruptedException; {:try_start_cb .. :try_end_113} :catch_249
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cb .. :try_end_113} :catch_247
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_cb .. :try_end_113} :catch_245
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_cb .. :try_end_113} :catch_223
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_cb .. :try_end_113} :catch_215
    .catchall {:try_start_cb .. :try_end_113} :catchall_211

    :try_start_113
    invoke-virtual {v8}, Lcom/kwai/filedownloader/download/ConnectTask;->d()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v1, v10, v8, v9}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/Map;Lcom/kwai/filedownloader/download/ConnectTask;Lcom/kwai/filedownloader/a/b;)V

    iget-boolean v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v10, :cond_144

    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2, v5}, Lcom/kwai/filedownloader/d/c;->a(B)V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_123} :catch_20d
    .catch Ljava/lang/IllegalAccessException; {:try_start_113 .. :try_end_123} :catch_20b
    .catch Ljava/lang/InterruptedException; {:try_start_113 .. :try_end_123} :catch_209
    .catch Ljava/lang/IllegalArgumentException; {:try_start_113 .. :try_end_123} :catch_207
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_113 .. :try_end_123} :catch_205
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_113 .. :try_end_123} :catch_202
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_113 .. :try_end_123} :catch_1ff
    .catchall {:try_start_113 .. :try_end_123} :catchall_1fa

    if-eqz v9, :cond_128

    :try_start_125
    invoke-interface {v9}, Lcom/kwai/filedownloader/a/b;->f()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_299

    :cond_128
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_133

    goto/16 :goto_6b

    :cond_133
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_139

    goto/16 :goto_75

    :cond_139
    :try_start_139
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13e} :catch_140

    goto/16 :goto_8a

    :catch_140
    move-exception v0

    move-object v2, v0

    goto/16 :goto_85

    :cond_144
    :try_start_144
    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->i()V

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->h()J

    move-result-wide v14

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->e()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v14, v15, v10}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(JLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->g()Z

    move-result v10

    if-eqz v10, :cond_189

    iget-boolean v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-eqz v10, :cond_169

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->n()I

    move-result v10

    move-wide/from16 v17, v14

    goto :goto_18c

    :cond_169
    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v11

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v12

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->b()Ljava/lang/String;

    move-result-object v13

    iget-object v10, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v10}, Lcom/kwai/filedownloader/d/c;->c()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v17, v14

    move-object v14, v10

    move-wide/from16 v15, v17

    invoke-virtual/range {v11 .. v16}, Lcom/kwai/filedownloader/download/b;->a(ILjava/lang/String;Ljava/lang/String;J)I

    move-result v10

    goto :goto_18c

    :cond_189
    move-wide/from16 v17, v14

    move v10, v6

    :goto_18c
    if-lez v10, :cond_1ea

    iget-boolean v11, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v11, :cond_1b8

    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    invoke-virtual {v2, v5}, Lcom/kwai/filedownloader/d/c;->a(B)V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_197} :catch_20d
    .catch Ljava/lang/IllegalAccessException; {:try_start_144 .. :try_end_197} :catch_20b
    .catch Ljava/lang/InterruptedException; {:try_start_144 .. :try_end_197} :catch_209
    .catch Ljava/lang/IllegalArgumentException; {:try_start_144 .. :try_end_197} :catch_207
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_144 .. :try_end_197} :catch_205
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_144 .. :try_end_197} :catch_202
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_144 .. :try_end_197} :catch_1ff
    .catchall {:try_start_144 .. :try_end_197} :catchall_1fa

    if-eqz v9, :cond_19c

    :try_start_199
    invoke-interface {v9}, Lcom/kwai/filedownloader/a/b;->f()V
    :try_end_19c
    .catchall {:try_start_199 .. :try_end_19c} :catchall_299

    :cond_19c
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_1a7

    goto/16 :goto_6b

    :cond_1a7
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_1ad

    goto/16 :goto_75

    :cond_1ad
    :try_start_1ad
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b2} :catch_1b4

    goto/16 :goto_8a

    :catch_1b4
    move-exception v0

    move-object v2, v0

    goto/16 :goto_85

    :cond_1b8
    if-ne v10, v6, :cond_1bc

    move v11, v6

    goto :goto_1bd

    :cond_1bc
    move v11, v3

    :goto_1bd
    :try_start_1bd
    iput-boolean v11, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->n:Z

    if-eqz v11, :cond_1c9

    invoke-virtual {v8}, Lcom/kwai/filedownloader/download/ConnectTask;->e()Lcom/kwai/filedownloader/download/a;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/a/b;)V

    goto :goto_1e3

    :cond_1c9
    if-eqz v9, :cond_1cf

    invoke-interface {v9}, Lcom/kwai/filedownloader/a/b;->f()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1ce} :catch_20d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1bd .. :try_end_1ce} :catch_20b
    .catch Ljava/lang/InterruptedException; {:try_start_1bd .. :try_end_1ce} :catch_209
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bd .. :try_end_1ce} :catch_207
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1bd .. :try_end_1ce} :catch_205
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_1bd .. :try_end_1ce} :catch_202
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_1bd .. :try_end_1ce} :catch_1ff
    .catchall {:try_start_1bd .. :try_end_1ce} :catchall_1fa

    goto :goto_1d0

    :cond_1cf
    move-object v2, v9

    :goto_1d0
    :try_start_1d0
    iget-object v8, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v8}, Lcom/kwai/filedownloader/download/d;->e()V

    iget-boolean v8, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->p:Z

    if-eqz v8, :cond_1dd

    invoke-direct {v1, v10, v7}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(ILjava/util/List;)V

    goto :goto_1e2

    :cond_1dd
    move-wide/from16 v7, v17

    invoke-direct {v1, v7, v8, v10}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(JI)V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1e2} :catch_24d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d0 .. :try_end_1e2} :catch_24b
    .catch Ljava/lang/InterruptedException; {:try_start_1d0 .. :try_end_1e2} :catch_249
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d0 .. :try_end_1e2} :catch_247
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1d0 .. :try_end_1e2} :catch_245
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_1d0 .. :try_end_1e2} :catch_223
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_1d0 .. :try_end_1e2} :catch_215
    .catchall {:try_start_1d0 .. :try_end_1e2} :catchall_211

    :goto_1e2
    move-object v9, v2

    :goto_1e3
    if-eqz v9, :cond_265

    :try_start_1e5
    invoke-interface {v9}, Lcom/kwai/filedownloader/a/b;->f()V
    :try_end_1e8
    .catchall {:try_start_1e5 .. :try_end_1e8} :catchall_299

    goto/16 :goto_265

    :cond_1ea
    :try_start_1ea
    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v7, "invalid connection count %d, the connection count must be larger than 0"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1fa
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1fa} :catch_20d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1ea .. :try_end_1fa} :catch_20b
    .catch Ljava/lang/InterruptedException; {:try_start_1ea .. :try_end_1fa} :catch_209
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ea .. :try_end_1fa} :catch_207
    .catch Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1ea .. :try_end_1fa} :catch_205
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_1ea .. :try_end_1fa} :catch_202
    .catch Lcom/kwai/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_1ea .. :try_end_1fa} :catch_1ff
    .catchall {:try_start_1ea .. :try_end_1fa} :catchall_1fa

    :catchall_1fa
    move-exception v0

    move-object v4, v0

    move-object v2, v9

    goto/16 :goto_293

    :catch_1ff
    move-exception v0

    move-object v2, v9

    goto :goto_216

    :catch_202
    move-exception v0

    move-object v2, v9

    goto :goto_224

    :catch_205
    move-exception v0

    goto :goto_20e

    :catch_207
    move-exception v0

    goto :goto_20e

    :catch_209
    move-exception v0

    goto :goto_20e

    :catch_20b
    move-exception v0

    goto :goto_20e

    :catch_20d
    move-exception v0

    :goto_20e
    move-object v7, v0

    move-object v2, v9

    goto :goto_24f

    :catchall_211
    move-exception v0

    move-object v4, v0

    goto/16 :goto_293

    :catch_215
    move-exception v0

    :goto_216
    :try_start_216
    iget-object v7, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d:Lcom/kwai/filedownloader/d/c;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/kwai/filedownloader/d/c;->a(B)V
    :try_end_21c
    .catchall {:try_start_216 .. :try_end_21c} :catchall_211

    if-eqz v2, :cond_99

    :goto_21e
    :try_start_21e
    invoke-interface {v2}, Lcom/kwai/filedownloader/a/b;->f()V

    goto/16 :goto_99

    :catch_223
    move-exception v0

    :goto_224
    if-eqz v2, :cond_229

    invoke-interface {v2}, Lcom/kwai/filedownloader/a/b;->f()V
    :try_end_229
    .catchall {:try_start_21e .. :try_end_229} :catchall_299

    :cond_229
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_234

    goto/16 :goto_6b

    :cond_234
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_23a

    goto/16 :goto_75

    :cond_23a
    :try_start_23a
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_23f} :catch_241

    goto/16 :goto_8a

    :catch_241
    move-exception v0

    move-object v2, v0

    goto/16 :goto_85

    :catch_245
    move-exception v0

    goto :goto_24e

    :catch_247
    move-exception v0

    goto :goto_24e

    :catch_249
    move-exception v0

    goto :goto_24e

    :catch_24b
    move-exception v0

    goto :goto_24e

    :catch_24d
    move-exception v0

    :goto_24e
    move-object v7, v0

    :goto_24f
    :try_start_24f
    invoke-virtual {v1, v7}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;)Z

    move-result v8

    if-eqz v8, :cond_25d

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;J)V

    if-eqz v2, :cond_99

    goto :goto_21e

    :cond_25d
    invoke-virtual {v1, v7}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_260
    .catchall {:try_start_24f .. :try_end_260} :catchall_211

    if-eqz v2, :cond_265

    :try_start_262
    invoke-interface {v2}, Lcom/kwai/filedownloader/a/b;->f()V
    :try_end_265
    .catchall {:try_start_262 .. :try_end_265} :catchall_299

    :cond_265
    :goto_265
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-eqz v2, :cond_274

    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->f()V

    goto :goto_28d

    :cond_274
    iget-boolean v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v2, :cond_280

    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->v:Ljava/lang/Exception;

    invoke-virtual {v2, v4}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_28d

    :cond_280
    :try_start_280
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_285
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_285} :catch_286

    goto :goto_28d

    :catch_286
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v4, v2}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    :goto_28d
    iget-object v2, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_293
    if-eqz v2, :cond_298

    :try_start_295
    invoke-interface {v2}, Lcom/kwai/filedownloader/a/b;->f()V

    :cond_298
    throw v4
    :try_end_299
    .catchall {:try_start_295 .. :try_end_299} :catchall_299

    :catchall_299
    move-exception v0

    move-object v2, v0

    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/d;->b()V

    iget-boolean v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->t:Z

    if-nez v4, :cond_2be

    iget-boolean v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->u:Z

    if-eqz v4, :cond_2b0

    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    iget-object v5, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->v:Ljava/lang/Exception;

    invoke-virtual {v4, v5}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_2c3

    :cond_2b0
    :try_start_2b0
    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/d;->g()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2b0 .. :try_end_2b5} :catch_2b6

    goto :goto_2c3

    :catch_2b6
    move-exception v0

    move-object v4, v0

    iget-object v5, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v5, v4}, Lcom/kwai/filedownloader/download/d;->a(Ljava/lang/Exception;)V

    goto :goto_2c3

    :cond_2be
    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b:Lcom/kwai/filedownloader/download/d;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/d;->f()V

    :goto_2c3
    iget-object v4, v1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
