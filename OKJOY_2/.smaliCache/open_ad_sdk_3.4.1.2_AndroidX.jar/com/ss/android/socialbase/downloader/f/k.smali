.class public Lcom/ss/android/socialbase/downloader/f/k;
.super Ljava/lang/Object;
.source "SegmentDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/f;
.implements Lcom/ss/android/socialbase/downloader/network/c$a;


# instance fields
.field private final A:Z

.field private final B:Lcom/ss/android/socialbase/downloader/h/e$b;

.field private final C:Lcom/ss/android/socialbase/downloader/h/e$b;

.field private final a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final b:Lcom/ss/android/socialbase/downloader/f/n;

.field private final c:Lcom/ss/android/socialbase/downloader/f/b;

.field private final d:Lcom/ss/android/socialbase/downloader/h/f;

.field private final e:Lcom/ss/android/socialbase/downloader/f/g;

.field private volatile f:Z

.field private volatile g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/m;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/q;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ss/android/socialbase/downloader/model/d;

.field private k:Lcom/ss/android/socialbase/downloader/model/d;

.field private volatile l:Z

.field private m:J

.field private final n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private volatile r:Z

.field private final s:Ljava/lang/Object;

.field private final t:Lcom/ss/android/socialbase/downloader/i/d;

.field private final u:Lcom/ss/android/socialbase/downloader/h/e;

.field private v:J

.field private w:J

.field private x:J

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/n;Lcom/ss/android/socialbase/downloader/h/f;)V
    .registers 8

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    .line 50
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    .line 64
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    .line 77
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    .line 1308
    new-instance v2, Lcom/ss/android/socialbase/downloader/f/k$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/f/k$1;-><init>(Lcom/ss/android/socialbase/downloader/f/k;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Lcom/ss/android/socialbase/downloader/h/e$b;

    .line 1350
    new-instance v2, Lcom/ss/android/socialbase/downloader/f/k$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/f/k$2;-><init>(Lcom/ss/android/socialbase/downloader/f/k;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->C:Lcom/ss/android/socialbase/downloader/h/e$b;

    .line 92
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 93
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    .line 94
    new-instance v2, Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/n;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/n;->e()I

    move-result p2

    invoke-direct {v2, v3, p2}, Lcom/ss/android/socialbase/downloader/f/b;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    .line 95
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/k;->d:Lcom/ss/android/socialbase/downloader/h/f;

    .line 96
    new-instance p2, Lcom/ss/android/socialbase/downloader/f/g;

    invoke-direct {p2, p1, p3, v2}, Lcom/ss/android/socialbase/downloader/f/g;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/h/f;Lcom/ss/android/socialbase/downloader/f/c;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    .line 97
    new-instance p2, Lcom/ss/android/socialbase/downloader/h/e;

    invoke-direct {p2}, Lcom/ss/android/socialbase/downloader/h/e;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    .line 98
    new-instance p2, Lcom/ss/android/socialbase/downloader/i/d;

    invoke-direct {p2}, Lcom/ss/android/socialbase/downloader/i/d;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/d;

    .line 99
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p2, "debug"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_77

    move v0, v1

    :cond_77
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    .line 100
    return-void
.end method

.method private a(J)I
    .registers 8

    .line 1021
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1022
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    .line 1023
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/i;

    .line 1024
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1a

    .line 1025
    return v1

    .line 1026
    :cond_1a
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_23

    .line 1027
    goto :goto_26

    .line 1022
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1030
    :cond_26
    :goto_26
    const/4 p1, -0x1

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 392
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 393
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/q;

    .line 394
    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 395
    return v1

    .line 392
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 398
    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method private a(II)J
    .registers 8

    .line 1257
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/i;

    .line 1258
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v1

    .line 1260
    add-int/lit8 p1, p1, 0x1

    .line 1261
    if-ge p1, p2, :cond_19

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 1262
    :goto_1a
    if-nez p1, :cond_1d

    .line 1263
    return-wide v1

    .line 1266
    :cond_1d
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 1267
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2d

    .line 1268
    return-wide p1

    .line 1271
    :cond_2d
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/i;)J
    .registers 8

    .line 1275
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->b()J

    move-result-wide v0

    .line 1276
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_18

    .line 1277
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 1279
    :cond_18
    return-wide v0
.end method

.method private a(JJJI)Lcom/ss/android/socialbase/downloader/f/m;
    .registers 26

    .line 1444
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1445
    nop

    .line 1447
    nop

    .line 1448
    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ", threadIndex = "

    const-string v11, "SegmentDispatcher"

    if-eqz v9, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/socialbase/downloader/f/m;

    .line 1449
    iget-wide v12, v9, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_74

    .line 1450
    add-int/lit8 v7, v7, 0x1

    .line 1451
    iget-wide v12, v9, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    cmp-long v12, v12, v1

    if-gez v12, :cond_6d

    .line 1452
    move-wide/from16 v12, p3

    move-wide/from16 v16, v5

    invoke-virtual {v9, v1, v2, v12, v13}, Lcom/ss/android/socialbase/downloader/f/m;->a(JJ)J

    move-result-wide v4

    .line 1453
    iget-boolean v6, v0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    if-eqz v6, :cond_5f

    .line 1454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "findPoorReadThread: speed = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v9, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_5f
    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-ltz v6, :cond_71

    cmp-long v6, v4, v16

    if-gez v6, :cond_71

    .line 1457
    nop

    .line 1458
    move-wide v5, v4

    move-object v8, v9

    goto :goto_78

    .line 1451
    :cond_6d
    move-wide/from16 v12, p3

    move-wide/from16 v16, v5

    .line 1462
    :cond_71
    move-wide/from16 v5, v16

    goto :goto_78

    .line 1449
    :cond_74
    move-wide/from16 v12, p3

    move-wide/from16 v16, v5

    .line 1462
    :goto_78
    goto :goto_13

    .line 1463
    :cond_79
    move-wide/from16 v16, v5

    if-eqz v8, :cond_a8

    .line 1464
    move/from16 v1, p7

    if-lt v7, v1, :cond_a8

    cmp-long v1, v16, p5

    if-gez v1, :cond_a8

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findPoorReadThread: ----------- minSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v5, v16

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    return-object v8

    .line 1470
    :cond_a8
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/f/k;ZJJ)Lcom/ss/android/socialbase/downloader/f/m;
    .registers 6

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/f/k;->a(ZJJ)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object p0

    return-object p0
.end method

.method private a(ZJJ)Lcom/ss/android/socialbase/downloader/f/m;
    .registers 13

    .line 1286
    nop

    .line 1287
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/m;

    .line 1288
    iget v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    if-nez v3, :cond_1b

    .line 1289
    if-nez p1, :cond_1b

    .line 1291
    goto :goto_8

    .line 1294
    :cond_1b
    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3f

    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3f

    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    sub-long v3, p2, v3

    cmp-long v3, v3, p4

    if-lez v3, :cond_3f

    .line 1296
    if-nez v1, :cond_36

    .line 1297
    nop

    .line 1298
    move-object v1, v2

    goto :goto_8

    .line 1300
    :cond_36
    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/f/m;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3f

    .line 1301
    move-object v1, v2

    .line 1304
    :cond_3f
    goto :goto_8

    .line 1305
    :cond_40
    return-object v1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 5

    .line 709
    const-string v0, "SegmentDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 711
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    .line 712
    monitor-enter p0

    .line 713
    :try_start_20
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/m;

    .line 714
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    .line 715
    goto :goto_26

    .line 716
    :cond_36
    monitor-exit p0

    .line 717
    return-void

    .line 716
    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/q;)V
    .registers 9

    .line 520
    new-instance v6, Lcom/ss/android/socialbase/downloader/f/m;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/f/m;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/c;Lcom/ss/android/socialbase/downloader/f/q;I)V

    .line 521
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 523
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/ss/android/socialbase/downloader/f/m;->a(Ljava/util/concurrent/Future;)V

    .line 524
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    .line 969
    if-nez v0, :cond_9

    .line 971
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    .line 972
    if-nez v0, :cond_9

    .line 974
    return-void

    .line 977
    :cond_9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide v1

    .line 978
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide v3

    .line 979
    cmp-long v5, v1, v3

    const/16 v6, 0x432

    if-nez v5, :cond_2e

    .line 988
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->c()Ljava/lang/String;

    move-result-object p1

    .line 989
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 994
    return-void

    .line 992
    :cond_26
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v0, "etag not equals with main url"

    invoke-direct {p1, v6, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 982
    :cond_2e
    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total len not equals,len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",range="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 985
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/model/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",sUrl="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/model/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v6, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method private a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            "Z)V"
        }
    .end annotation

    .line 465
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v0

    .line 466
    nop

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    .line 468
    :goto_a
    if-ge v3, v2, :cond_1d

    .line 469
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1d

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 475
    :cond_1d
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 476
    if-eqz p3, :cond_25

    .line 477
    invoke-virtual {p2, v2}, Lcom/ss/android/socialbase/downloader/f/i;->a(I)V

    .line 479
    :cond_25
    return-void
.end method

.method private a(JJ)Z
    .registers 14

    .line 1413
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/d;

    sub-long v2, p1, p3

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/ss/android/socialbase/downloader/i/d;->b(JJ)J

    move-result-wide v0

    .line 1414
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1416
    if-lez v4, :cond_12

    int-to-long v5, v4

    div-long/2addr v0, v5

    .line 1419
    :cond_12
    const/high16 v5, 0x41200000    # 10.0f

    long-to-float v0, v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->y:F

    mul-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v6, v0

    .line 1423
    div-int/lit8 v8, v4, 0x2

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/socialbase/downloader/f/k;->a(JJJI)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object v0

    .line 1424
    const/4 v1, 0x1

    const-string v2, "SegmentDispatcher"

    if-eqz v0, :cond_49

    .line 1425
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 1426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handlePoorReadThread: reconnect for poor speed, threadIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->f()V

    .line 1428
    return v1

    .line 1432
    :cond_49
    const/4 v4, 0x1

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/f/k;->a(ZJJ)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object p1

    .line 1433
    if-eqz p1, :cond_72

    .line 1434
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 1435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handlePoorReadThread: reconnect for connect timeout, threadIndex = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->f()V

    .line 1437
    return v1

    .line 1440
    :cond_72
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/f/k;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/m;)Z
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/m;JJJD)Z
    .registers 16

    .line 1392
    iget-wide v0, p1, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6e

    .line 1393
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/d;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/i/d;->b(JJ)J

    move-result-wide v0

    .line 1394
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1396
    if-lez v2, :cond_1a

    int-to-long v2, v2

    div-long v2, v0, v2

    goto :goto_1b

    :cond_1a
    move-wide v2, v0

    .line 1398
    :goto_1b
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/f/m;->a(JJ)J

    move-result-wide p2

    .line 1399
    cmp-long p4, p2, p6

    if-ltz p4, :cond_2a

    long-to-double p4, p2

    long-to-double v4, v2

    mul-double/2addr v4, p8

    cmpg-double p4, p4, v4

    if-gez p4, :cond_6e

    .line 1400
    :cond_2a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "isDownloadSpeedPoor: totalSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", threadAvgSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", poorSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", speed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ",threadIndex = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SegmentDispatcher"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 p1, 0x1

    return p1

    .line 1405
    :cond_6e
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;
    .registers 9

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2c

    .line 557
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/i;

    .line 558
    if-nez v0, :cond_16

    .line 559
    goto :goto_0

    .line 561
    :cond_16
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v4, v0, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 562
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2b

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2a

    goto :goto_2b

    .line 565
    :cond_2a
    goto :goto_0

    .line 563
    :cond_2b
    :goto_2b
    return-object v0

    .line 568
    :cond_2c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->m()V

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object p1

    .line 571
    if-eqz p1, :cond_43

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_43

    .line 572
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, p2, p1, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 573
    return-object p1

    .line 576
    :cond_43
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->p()Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object p1

    .line 577
    if-eqz p1, :cond_4a

    .line 578
    return-object p1

    .line 581
    :cond_4a
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(J)V
    .registers 6

    .line 1384
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/d;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ss/android/socialbase/downloader/i/d;->a(JJ)Z

    .line 1385
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 1387
    invoke-virtual {v1, p1, p2}, Lcom/ss/android/socialbase/downloader/f/m;->b(J)V

    .line 1388
    goto :goto_11

    .line 1389
    :cond_21
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 786
    iget-boolean p1, p3, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5c

    .line 788
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez p1, :cond_85

    .line 789
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    .line 790
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 791
    :try_start_f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 792
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_59

    .line 793
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->d:Lcom/ss/android/socialbase/downloader/h/f;

    if-eqz p1, :cond_24

    .line 795
    iget-object p3, p3, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    iget-object v2, p4, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v3

    invoke-interface {p1, p3, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/h/f;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;J)V

    .line 797
    :cond_24
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide p1

    .line 798
    cmp-long p3, p1, v0

    if-lez p3, :cond_58

    .line 799
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_32
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_58

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ss/android/socialbase/downloader/f/i;

    .line 800
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v2

    cmp-long v2, v2, v0

    const-wide/16 v3, 0x1

    if-lez v2, :cond_52

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v5

    sub-long v7, p1, v3

    cmp-long v2, v5, v7

    if-lez v2, :cond_57

    .line 801
    :cond_52
    sub-long v2, p1, v3

    invoke-virtual {p4, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 803
    :cond_57
    goto :goto_32

    .line 805
    :cond_58
    goto :goto_85

    .line 792
    :catchall_59
    move-exception p2

    :try_start_5a
    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p2

    .line 807
    :cond_5c
    invoke-direct {p0, p4}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/model/d;)V

    .line 808
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez p1, :cond_85

    .line 809
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    .line 810
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-gtz p1, :cond_78

    .line 811
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 813
    :cond_78
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 814
    :try_start_7b
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 815
    monitor-exit p1

    goto :goto_85

    :catchall_82
    move-exception p2

    monitor-exit p1
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_82

    throw p2

    .line 818
    :cond_85
    :goto_85
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/q;",
            ">;)V"
        }
    .end annotation

    .line 373
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    if-eqz v0, :cond_2d

    .line 374
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/q;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIpListLocked: urlRecord = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SegmentDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    goto :goto_8

    .line 378
    :cond_2d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->k()I

    move-result v0

    .line 379
    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4e

    .line 380
    :cond_39
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/lang/String;)I

    move-result p1

    .line 381
    if-ltz p1, :cond_4e

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4e

    .line 382
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 383
    return-void

    .line 386
    :cond_4e
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 171
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_16

    .line 172
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 175
    :cond_16
    monitor-enter p0

    .line 176
    :try_start_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 177
    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_4c

    .line 183
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 190
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    new-instance v3, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {v3, v1}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lcom/ss/android/socialbase/downloader/f/i;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 191
    goto :goto_2a

    .line 194
    :cond_41
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->d(Ljava/util/List;)V

    .line 196
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/util/List;)V

    goto :goto_58

    .line 179
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    new-instance v1, Lcom/ss/android/socialbase/downloader/f/i;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    invoke-direct {p0, p1, v1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 198
    :goto_58
    const-string p1, "SegmentDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSegments: totalLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    monitor-exit p0

    .line 200
    return-void

    .line 199
    :catchall_74
    move-exception p1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_17 .. :try_end_76} :catchall_74

    throw p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/f/k;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    return p0
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;
    .registers 20

    .line 1093
    move-object/from16 v0, p0

    .line 1094
    nop

    .line 1095
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1096
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v1, :cond_1d

    .line 1097
    invoke-direct {v0, v5, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(II)J

    move-result-wide v6

    .line 1098
    cmp-long v8, v6, v2

    if-lez v8, :cond_1a

    .line 1099
    nop

    .line 1100
    move v4, v5

    move-wide v2, v6

    .line 1096
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1103
    :cond_1d
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/n;->g()J

    move-result-wide v5

    .line 1104
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/n;->h()J

    move-result-wide v7

    .line 1105
    if-ltz v4, :cond_fd

    cmp-long v1, v2, v5

    if-lez v1, :cond_fd

    .line 1106
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 1108
    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/f/n;->m()Z

    move-result v4

    const-string v9, "obtainSegment: parent = "

    const-string v10, "SegmentDispatcher"

    const-wide/16 v11, 0x2

    if-eqz v4, :cond_cf

    .line 1109
    iget-wide v13, v0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 1110
    invoke-direct/range {p0 .. p2}, Lcom/ss/android/socialbase/downloader/f/k;->d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)F

    move-result v4

    .line 1111
    long-to-float v13, v13

    mul-float/2addr v13, v4

    float-to-long v13, v13

    .line 1112
    cmp-long v15, v13, v5

    if-gez v15, :cond_5a

    .line 1113
    move-wide v13, v5

    .line 1115
    :cond_5a
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-lez v15, :cond_65

    cmp-long v15, v13, v7

    if-lez v15, :cond_65

    .line 1116
    goto :goto_66

    .line 1119
    :cond_65
    move-wide v7, v13

    :goto_66
    div-long/2addr v5, v11

    .line 1120
    sub-long v11, v2, v5

    cmp-long v13, v7, v11

    if-lez v13, :cond_6f

    .line 1121
    move-wide v7, v11

    goto :goto_74

    .line 1122
    :cond_6f
    cmp-long v11, v7, v5

    if-gez v11, :cond_74

    .line 1123
    move-wide v7, v5

    .line 1126
    :cond_74
    :goto_74
    new-instance v5, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v11

    sub-long v13, v2, v7

    add-long/2addr v11, v13

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v13

    invoke-direct {v5, v11, v12, v13, v14}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 1127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", child = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", maxRemainBytes = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", childLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ratio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    iget v2, v2, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    goto :goto_fc

    .line 1131
    :cond_cf
    new-instance v5, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v6

    div-long/2addr v2, v11

    add-long/2addr v6, v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v2

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_fc
    return-object v5

    .line 1137
    :cond_fd
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/q;",
            ">;"
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    if-eqz p2, :cond_a9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_a9

    .line 406
    :cond_b
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 407
    nop

    .line 408
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 409
    if-eqz v4, :cond_69

    .line 410
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 412
    iget-boolean v5, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    if-eqz v5, :cond_4b

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDnsResolved: ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SegmentDispatcher"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_4b
    new-instance v5, Lcom/ss/android/socialbase/downloader/f/q;

    invoke-direct {v5, p1, v4}, Lcom/ss/android/socialbase/downloader/f/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v4, v5, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 417
    if-nez v4, :cond_64

    .line 418
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 419
    iget-object v6, v5, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_64
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v3, v3, 0x1

    .line 426
    :cond_69
    goto :goto_17

    .line 427
    :cond_6a
    if-lez v3, :cond_a8

    .line 428
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    :cond_71
    nop

    .line 432
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 433
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 434
    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a2

    .line 435
    nop

    .line 436
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/q;

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v3, v3, -0x1

    const/4 v0, 0x1

    .line 440
    :cond_a2
    goto :goto_7b

    .line 441
    :cond_a3
    if-lez v3, :cond_a7

    if-nez v0, :cond_71

    .line 442
    :cond_a7
    return-object p1

    .line 444
    :cond_a8
    return-object v0

    .line 403
    :cond_a9
    :goto_a9
    return-object v0
.end method

.method private c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v1, :cond_10

    .line 205
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 207
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    .line 209
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_1f

    .line 211
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v0, :cond_1e

    goto :goto_1f

    .line 212
    :cond_1e
    throw v0

    .line 215
    :cond_1f
    :goto_1f
    return-void

    .line 207
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private c(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/f/o;->b(Ljava/util/List;)J

    move-result-wide v0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDownloadBytes: getCurBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", totalBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 254
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", downloadedBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string v2, "SegmentDispatcher"

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_5b

    .line 257
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    .line 259
    :cond_5b
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/m;)Z
    .registers 3

    .line 741
    monitor-enter p0

    .line 742
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->d(Lcom/ss/android/socialbase/downloader/f/m;)Lcom/ss/android/socialbase/downloader/f/q;

    move-result-object v0

    .line 743
    if-nez v0, :cond_a

    .line 745
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 748
    :cond_a
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/f/q;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 749
    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)F
    .registers 8

    .line 1141
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->b()J

    move-result-wide v0

    .line 1142
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 1143
    const/4 v2, 0x1

    if-gt p2, v2, :cond_13

    .line 1144
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/n;->a()I

    move-result p2

    .line 1146
    :cond_13
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_3c

    .line 1147
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->l()F

    move-result v0

    .line 1148
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_2a

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2d

    .line 1149
    :cond_2a
    int-to-float v0, p2

    div-float v0, v4, v0

    .line 1151
    :cond_2d
    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    if-nez p1, :cond_32

    .line 1152
    return v0

    .line 1154
    :cond_32
    if-le p2, v2, :cond_39

    .line 1155
    sub-float/2addr v4, v0

    sub-int/2addr p2, v2

    int-to-float p1, p2

    div-float/2addr v4, p1

    return v4

    .line 1157
    :cond_39
    int-to-float p1, p2

    div-float/2addr v4, p1

    return v4

    .line 1162
    :cond_3c
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->o()J

    move-result-wide v2

    .line 1163
    cmp-long p1, v2, v0

    if-lez p1, :cond_48

    .line 1164
    long-to-float p1, v0

    long-to-float p2, v2

    div-float/2addr p1, p2

    return p1

    .line 1166
    :cond_48
    int-to-float p1, p2

    div-float/2addr v4, p1

    return v4
.end method

.method private d(Lcom/ss/android/socialbase/downloader/f/m;)Lcom/ss/android/socialbase/downloader/f/q;
    .registers 7

    .line 756
    nop

    .line 757
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/f/q;

    .line 758
    iget-object v4, p1, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/q;

    if-eq v3, v4, :cond_2a

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/q;->d()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 759
    if-nez v2, :cond_22

    .line 760
    move-object v2, v3

    .line 762
    :cond_22
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/q;->a()I

    move-result v4

    if-gtz v4, :cond_2a

    .line 763
    nop

    .line 764
    goto :goto_2c

    .line 767
    :cond_2a
    goto :goto_9

    .line 757
    :cond_2b
    move-object v3, v1

    .line 768
    :goto_2c
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/n;->b()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 770
    if-eqz v3, :cond_37

    .line 771
    return-object v3

    .line 773
    :cond_37
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/n;->c()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 775
    return-object v1

    .line 777
    :cond_40
    return-object v2

    .line 781
    :cond_41
    return-object v2
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    return-object p0
.end method

.method private d()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 219
    const-string v0, "SegmentDispatcher"

    :try_start_2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/f/g;->a(Lcom/ss/android/socialbase/downloader/f/d;)V
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_2 .. :try_end_9} :catch_25
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_26

    .line 222
    :catch_a
    move-exception v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSegments: loopAndWrite e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 228
    throw v1

    .line 220
    :catch_25
    move-exception v1

    .line 229
    :goto_26
    nop

    .line 231
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v1, :cond_5a

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz v1, :cond_30

    goto :goto_5a

    .line 236
    :cond_30
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    if-nez v1, :cond_54

    .line 237
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v1, :cond_39

    goto :goto_54

    .line 238
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSegments: loopAndWrite  failedException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    .line 246
    :cond_54
    :goto_54
    const-string v1, "dispatchSegments::download finished"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void

    .line 232
    :cond_5a
    :goto_5a
    return-void
.end method

.method private d(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 483
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 485
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v2

    .line 486
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "SegmentDispatcher"

    const-wide/16 v8, 0x1

    if-lez v6, :cond_3e

    .line 488
    new-instance v6, Lcom/ss/android/socialbase/downloader/f/i;

    sub-long/2addr v2, v8

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixSegmentsLocked: first = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", add new first = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-interface {p1, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 492
    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 496
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/i;

    .line 500
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v12

    sub-long/2addr v12, v8

    cmp-long v3, v10, v12

    if-gez v3, :cond_94

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixSegment: segment = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", new end = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v1, v10, v11}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 504
    :cond_94
    move-object v1, v2

    goto :goto_4e

    .line 509
    :cond_96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 510
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 511
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    .line 513
    cmp-long v2, v0, v4

    const-wide/16 v3, -0x1

    if-lez v2, :cond_bf

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_de

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v5

    sub-long/2addr v0, v8

    cmp-long v0, v5, v0

    if-gez v0, :cond_de

    .line 514
    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixSegment: last segment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new end=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1, v3, v4}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 517
    :cond_de
    return-void
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/f/k;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->v:J

    return-wide v0
.end method

.method private e()V
    .registers 7

    .line 263
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_15

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    if-eqz v0, :cond_e

    goto :goto_15

    .line 267
    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->a()I

    move-result v0

    goto :goto_16

    .line 265
    :cond_15
    :goto_15
    move v0, v1

    .line 269
    :goto_16
    const-string v2, "SegmentDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchReadThread: totalLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-gtz v0, :cond_3d

    .line 271
    goto :goto_3e

    .line 270
    :cond_3d
    move v1, v0

    .line 273
    :goto_3e
    monitor-enter p0

    .line 274
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_62

    .line 275
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz v0, :cond_50

    goto :goto_60

    .line 280
    :cond_50
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->j()Lcom/ss/android/socialbase/downloader/f/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/q;)V

    .line 282
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->f()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 285
    goto :goto_62

    .line 276
    :cond_60
    :goto_60
    monitor-exit p0

    return-void

    .line 289
    :cond_62
    :goto_62
    monitor-exit p0

    .line 290
    return-void

    .line 289
    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_64

    throw v0
.end method

.method private e(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/j;
        }
    .end annotation

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applySegment: start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SegmentDispatcher"

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    const-string v5, "applySegment: "

    if-ne v3, v1, :cond_43

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is already the owner of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void

    .line 835
    :cond_43
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v3, :cond_2b5

    .line 841
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/m;->h()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_2ac

    .line 848
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v7

    .line 849
    invoke-direct {v0, v7, v8}, Lcom/ss/android/socialbase/downloader/f/k;->a(J)I

    move-result v3

    .line 851
    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eq v3, v10, :cond_286

    iget-object v10, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/f/i;

    if-eqz v10, :cond_286

    .line 857
    const-wide/16 v11, 0x0

    if-eq v10, v2, :cond_139

    .line 858
    const/4 v13, 0x0

    .line 859
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_10e

    .line 860
    invoke-direct {v0, v10}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v14

    cmp-long v14, v14, v11

    if-lez v14, :cond_10b

    .line 861
    iget-object v14, v10, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 863
    if-eqz v14, :cond_c0

    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    move-wide/from16 v18, v7

    iget-wide v6, v14, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    sub-long/2addr v11, v6

    const-wide/16 v6, 0x3e8

    cmp-long v6, v11, v6

    if-lez v6, :cond_a9

    .line 867
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v11

    sub-long/2addr v6, v11

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v11

    const-wide/16 v20, 0x2

    div-long v11, v11, v20

    cmp-long v6, v6, v11

    if-gez v6, :cond_a9

    goto :goto_c2

    .line 881
    :cond_a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegmentLocked: has same segment, but owner is normal, abort. segmentInList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 863
    :cond_c0
    move-wide/from16 v18, v7

    .line 868
    :goto_c2
    nop

    .line 869
    if-eqz v14, :cond_e0

    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegmentLocked: has same segment,and owner too slow, segmentInList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lcom/ss/android/socialbase/downloader/f/m;->a(Z)V

    goto :goto_f6

    .line 873
    :cond_e0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegmentLocked: has same segment and no owner, segmentInList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :goto_f6
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 878
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/ss/android/socialbase/downloader/f/i;->b(I)V

    .line 879
    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v6, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    goto :goto_110

    .line 860
    :cond_10b
    move-wide/from16 v18, v7

    goto :goto_110

    .line 859
    :cond_10e
    move-wide/from16 v18, v7

    .line 886
    :goto_110
    if-eqz v13, :cond_113

    goto :goto_13b

    .line 887
    :cond_113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not exist! but has another same segment, segmentInList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const-string v2, "segment not exist, but has another same segment"

    invoke-direct {v1, v9, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 857
    :cond_139
    move-wide/from16 v18, v7

    .line 893
    :goto_13b
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v5

    .line 896
    add-int/lit8 v7, v3, -0x1

    .line 897
    :goto_141
    const-wide/16 v8, 0x1

    if-ltz v7, :cond_20e

    .line 898
    iget-object v10, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/f/i;

    .line 899
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v11

    .line 900
    const-wide/16 v13, 0x0

    cmp-long v20, v11, v13

    if-lez v20, :cond_15b

    cmp-long v11, v11, v18

    if-ltz v11, :cond_1c7

    .line 903
    :cond_15b
    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-gtz v13, :cond_198

    .line 905
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v11

    cmp-long v11, v11, v18

    if-gtz v11, :cond_16a

    goto :goto_198

    .line 907
    :cond_16a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySegment:prev\'s current has over this start, prev = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", segment = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 910
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v2, 0x3

    const-string v3, "prev overstep"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 914
    :cond_198
    :goto_198
    iget-object v11, v10, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v11, :cond_1cb

    .line 917
    sub-long v11, v18, v8

    invoke-virtual {v10, v11, v12}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 918
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applySegment: prev set end, prev = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1c7

    .line 921
    const-string v5, "applySegmentLocked:q break"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    goto :goto_20e

    .line 938
    :cond_1c7
    add-int/lit8 v7, v7, -0x1

    .line 939
    goto/16 :goto_141

    .line 926
    :cond_1cb
    iget-object v5, v10, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    sub-long v6, v18, v8

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/f/m;->a(J)Z

    move-result v5

    if-eqz v5, :cond_1ef

    .line 927
    invoke-virtual {v10, v6, v7}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applySegment: adjustSegmentEndOffset succeed, prev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    goto :goto_20e

    .line 933
    :cond_1ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySegment: adjustSegmentEndOffset filed, prev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v2, 0x4

    const-string v3, "prev end adjust fail"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 942
    :cond_20e
    :goto_20e
    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 943
    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 944
    :goto_216
    if-ge v3, v5, :cond_26d

    .line 945
    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/socialbase/downloader/f/i;

    .line 946
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-gtz v7, :cond_232

    iget-object v7, v6, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-eqz v7, :cond_22f

    goto :goto_232

    .line 959
    :cond_22f
    add-int/lit8 v3, v3, 0x1

    .line 960
    goto :goto_216

    .line 948
    :cond_232
    :goto_232
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v10

    .line 949
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v12

    .line 950
    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-lez v3, :cond_244

    cmp-long v3, v10, v12

    if-ltz v3, :cond_268

    .line 952
    :cond_244
    sub-long/2addr v12, v8

    invoke-virtual {v2, v12, v13}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applySegment: segment set end:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", later = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_268
    const-string v3, "applySegmentLocked: break 2"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_26d
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySegment: OK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return-void

    .line 853
    :cond_286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not exist! segmentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const-string v2, "segment not exist"

    invoke-direct {v1, v9, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 845
    :cond_2ac
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v2, 0x5

    const-string v3, "applySegment"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 837
    :cond_2b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is already has an owner:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const-string v2, "segment already has an owner"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/f/k;)Ljava/util/List;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    new-instance v1, Lcom/ss/android/socialbase/downloader/f/q;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/q;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_3b

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 300
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    new-instance v3, Lcom/ss/android/socialbase/downloader/f/q;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/ss/android/socialbase/downloader/f/q;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_3a
    goto :goto_1d

    .line 306
    :cond_3b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/f/n;->a(I)V

    .line 307
    return-void
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/f/k;)J
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .registers 6

    .line 310
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    .line 311
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->i()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->v:J

    .line 312
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->j()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->w:J

    .line 313
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->n()F

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->y:F

    .line 315
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->z:I

    .line 316
    if-lez v0, :cond_20

    .line 317
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Lcom/ss/android/socialbase/downloader/h/e$b;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/h/e;->a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V

    .line 319
    :cond_20
    return-void
.end method

.method private h()V
    .registers 5

    .line 322
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->w:J

    .line 323
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->x:J

    .line 325
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->C:Lcom/ss/android/socialbase/downloader/h/e$b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/h/e;->a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V

    .line 327
    :cond_15
    return-void
.end method

.method private i()V
    .registers 7

    .line 330
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->k()I

    move-result v0

    .line 331
    if-gtz v0, :cond_f

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    .line 333
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 334
    return-void

    .line 336
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/c;->a()Lcom/ss/android/socialbase/downloader/network/c;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/ss/android/socialbase/downloader/network/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    .line 338
    const/4 v2, 0x2

    if-le v0, v2, :cond_43

    .line 339
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_43

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 342
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 343
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/ss/android/socialbase/downloader/network/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    .line 345
    :cond_42
    goto :goto_2d

    .line 348
    :cond_43
    return-void
.end method

.method private j()Lcom/ss/android/socialbase/downloader/f/q;
    .registers 3

    .line 448
    monitor-enter p0

    .line 449
    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->p:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 450
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/n;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 452
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->p:I

    .line 454
    :cond_18
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/q;

    monitor-exit p0

    return-object v0

    .line 455
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private k()V
    .registers 3

    .line 720
    const-string v0, "SegmentDispatcher"

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    .line 723
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_f
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 725
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1
.end method

.method private l()Z
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 733
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->g()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 734
    const/4 v0, 0x0

    return v0

    .line 736
    :cond_1a
    goto :goto_6

    .line 737
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private m()V
    .registers 13

    .line 1034
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 1035
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 1036
    return-void

    .line 1038
    :cond_9
    monitor-enter p0

    .line 1039
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1040
    const/4 v1, 0x1

    if-gt v0, v1, :cond_15

    .line 1041
    monitor-exit p0

    return-void

    .line 1043
    :cond_15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    nop

    .line 1045
    const/4 v5, 0x0

    .line 1046
    :goto_1c
    if-ge v1, v0, :cond_7f

    .line 1047
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/socialbase/downloader/f/i;

    .line 1048
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/socialbase/downloader/f/i;

    .line 1049
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_6e

    .line 1051
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-gtz v8, :cond_6e

    iget-object v8, v7, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v8, :cond_6e

    .line 1052
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    const-string v8, "SegmentDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearCovered, covered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", prev = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    add-int/lit8 v1, v1, 0x1

    .line 1055
    goto :goto_1c

    .line 1058
    :cond_6e
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-lez v6, :cond_7c

    .line 1059
    add-int/lit8 v5, v5, 0x1

    .line 1061
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    .line 1062
    goto :goto_1c

    .line 1063
    :cond_7f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1064
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1067
    :cond_8a
    monitor-exit p0

    .line 1068
    return-void

    .line 1067
    :catchall_8c
    move-exception v0

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_a .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method private n()Z
    .registers 9

    .line 1074
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 1075
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_c

    .line 1076
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    .line 1077
    return v3

    .line 1079
    :cond_c
    monitor-enter p0

    .line 1080
    :try_start_d
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/f/o;->a(Ljava/util/List;)J

    move-result-wide v4

    .line 1081
    const-string v2, "SegmentDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllContentDownloaded: firstOffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    cmp-long v0, v4, v0

    if-ltz v0, :cond_34

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    .line 1085
    monitor-exit p0

    return v0

    .line 1087
    :cond_34
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    .line 1088
    monitor-exit p0

    return v3

    .line 1089
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private o()J
    .registers 6

    .line 1170
    nop

    .line 1171
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/f/m;

    .line 1172
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/m;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1173
    goto :goto_9

    .line 1174
    :cond_1b
    return-wide v1
.end method

.method private p()Lcom/ss/android/socialbase/downloader/f/i;
    .registers 16

    .line 1183
    const/4 v0, 0x0

    .line 1186
    :goto_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->q()Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object v1

    .line 1187
    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 1188
    return-object v2

    .line 1190
    :cond_9
    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 1191
    if-nez v13, :cond_e

    .line 1193
    return-object v1

    .line 1195
    :cond_e
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result v3

    .line 1196
    const/4 v14, 0x2

    if-lt v3, v14, :cond_16

    .line 1198
    return-object v2

    .line 1200
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1201
    invoke-direct {p0, v7, v8}, Lcom/ss/android/socialbase/downloader/f/k;->b(J)V

    .line 1204
    iget-wide v3, v13, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    sub-long v3, v7, v3

    .line 1205
    nop

    .line 1206
    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5f

    .line 1208
    sub-long v5, v7, v5

    const-wide/16 v9, 0x1f4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-object v4, v13

    invoke-direct/range {v3 .. v12}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/m;JJJD)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1212
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    if-eqz v0, :cond_5e

    .line 1213
    const-string v0, "SegmentDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obtainSegmentWhenNoNewSegment: isDownloadSpeedPoor segment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", owner.threadIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v13, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_5e
    return-object v1

    .line 1220
    :cond_5f
    add-int/lit8 v3, v0, 0x1

    if-le v0, v14, :cond_80

    .line 1222
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    if-eqz v0, :cond_7f

    .line 1223
    const-string v0, "SegmentDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_7f
    return-object v1

    .line 1228
    :cond_80
    :try_start_80
    monitor-enter p0
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_81} :catch_8e

    .line 1229
    const-wide/16 v0, 0x1f4

    :try_start_83
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1230
    monitor-exit p0

    .line 1233
    nop

    .line 1234
    move v0, v3

    goto/16 :goto_1

    .line 1230
    :catchall_8b
    move-exception v0

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v0
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_8e} :catch_8e

    .line 1231
    :catch_8e
    move-exception v0

    .line 1232
    return-object v2
.end method

.method private q()Lcom/ss/android/socialbase/downloader/f/i;
    .registers 9

    .line 1238
    nop

    .line 1239
    nop

    .line 1241
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/f/i;

    .line 1242
    invoke-direct {p0, v3}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    .line 1243
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result v4

    .line 1244
    if-ge v4, v2, :cond_2b

    .line 1245
    nop

    .line 1246
    move-object v1, v3

    move v2, v4

    .line 1249
    :cond_2b
    goto :goto_c

    .line 1250
    :cond_2c
    return-object v1
.end method

.method private r()J
    .registers 9

    .line 1359
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-eqz v0, :cond_9

    goto :goto_3e

    .line 1362
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1363
    monitor-enter p0

    .line 1365
    :try_start_e
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/f/k;->b(J)V

    .line 1367
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/n;->j()J

    move-result-wide v2

    .line 1368
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_37

    .line 1370
    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/f/k;->x:J

    .line 1371
    cmp-long v4, v6, v4

    if-lez v4, :cond_37

    sub-long v4, v0, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_37

    .line 1372
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/k;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1373
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->x:J

    .line 1374
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->z:I

    .line 1378
    :cond_37
    const-wide/16 v0, 0x7d0

    monitor-exit p0

    return-wide v0

    .line 1379
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3b

    throw v0

    .line 1360
    :cond_3e
    :goto_3e
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;
    .registers 4

    .line 533
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-eqz v0, :cond_9

    goto :goto_23

    .line 536
    :cond_9
    monitor-enter p0

    .line 537
    :try_start_a
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object p1

    .line 538
    if-eqz p1, :cond_1e

    .line 539
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->h()V

    .line 540
    iget-object p2, p1, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-eqz p2, :cond_1e

    .line 541
    new-instance p2, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {p2, p1}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lcom/ss/android/socialbase/downloader/f/i;)V

    monitor-exit p0

    return-object p2

    .line 544
    :cond_1e
    monitor-exit p0

    return-object p1

    .line 545
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw p1

    .line 534
    :cond_23
    :goto_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 997
    const-string v0, "SegmentDispatcher"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    .line 999
    monitor-enter p0

    .line 1000
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 1001
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    .line 1002
    goto :goto_11

    .line 1003
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2d

    .line 1004
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/g;->a()V

    .line 1005
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    .line 1006
    return-void

    .line 1003
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;)V
    .registers 4

    .line 528
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReaderRun, threadIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SegmentDispatcher"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_1e
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 3

    .line 550
    monitor-enter p0

    .line 551
    :try_start_1
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->i()V

    .line 552
    monitor-exit p0

    .line 553
    return-void

    .line 552
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/h;
        }
    .end annotation

    .line 587
    monitor-enter p0

    .line 588
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_3b

    .line 592
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/f/k;->b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V

    .line 594
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/f/m;->b(Z)V

    .line 596
    iget-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2e

    .line 598
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 599
    cmp-long p1, p1, v0

    if-gtz p1, :cond_2a

    .line 600
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 602
    :cond_2a
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    goto :goto_39

    .line 604
    :cond_2e
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/n;->f()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 606
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 609
    :cond_39
    :goto_39
    monitor-exit p0

    .line 610
    return-void

    .line 589
    :cond_3b
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string p2, "connected"

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 609
    :catchall_43
    move-exception p1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 7

    .line 665
    monitor-enter p0

    .line 666
    :try_start_1
    const-string p2, "SegmentDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSegmentFailed: segment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", e = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/f/m;->b(Z)V

    .line 669
    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    if-nez p1, :cond_2d

    .line 671
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 674
    :cond_2d
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->l()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 677
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez p1, :cond_39

    .line 678
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 681
    :cond_39
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 683
    :cond_3e
    monitor-exit p0

    .line 684
    return-void

    .line 683
    :catchall_40
    move-exception p1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;II)V
    .registers 8

    .line 645
    nop

    .line 646
    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_a

    .line 648
    move p2, p3

    goto :goto_b

    .line 646
    :cond_a
    const/4 p2, 0x0

    .line 650
    :goto_b
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p4

    .line 651
    const/16 v0, 0x417

    if-eq p4, v0, :cond_1a

    const/16 v0, 0x432

    if-ne p4, v0, :cond_18

    goto :goto_1a

    :cond_18
    move p3, p2

    goto :goto_1b

    .line 652
    :cond_1a
    :goto_1a
    nop

    .line 655
    :goto_1b
    if-nez p3, :cond_1f

    if-lt p5, p6, :cond_22

    .line 658
    :cond_1f
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 660
    :cond_22
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz v0, :cond_9

    goto :goto_36

    .line 355
    :cond_9
    const/4 v0, 0x0

    .line 357
    :try_start_a
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    .line 360
    goto :goto_13

    .line 358
    :catchall_f
    move-exception p2

    .line 359
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    :goto_13
    monitor-enter p0

    .line 362
    if-eqz v0, :cond_19

    .line 363
    :try_start_16
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 365
    :cond_19
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    .line 366
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/f/n;->a(I)V

    .line 367
    const-string p1, "SegmentDispatcher"

    const-string p2, "onDnsResolved: dispatchReadThread"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 369
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_33
    move-exception p1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_33

    throw p1

    .line 353
    :cond_36
    :goto_36
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->f()V

    .line 108
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->b(Ljava/util/List;)V

    .line 111
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 114
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->g()V

    .line 117
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->i()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_cf

    .line 122
    :try_start_14
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->c()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_be

    .line 124
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 125
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    .line 128
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    .line 129
    nop

    .line 131
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez p1, :cond_7e

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz p1, :cond_30

    goto :goto_7e

    .line 135
    :cond_30
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->d:Lcom/ss/android/socialbase/downloader/h/f;

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-interface {p1, v1, v2}, Lcom/ss/android/socialbase/downloader/h/f;->a(J)V

    .line 137
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->h()V

    .line 140
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->d()V
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_cf

    .line 143
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez p1, :cond_4f

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez p1, :cond_4f

    .line 144
    const-string p1, "SegmentDispatcher"

    const-string v1, "finally pause"

    invoke-static {p1, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 150
    :cond_4f
    :try_start_4f
    monitor-enter p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_73

    .line 152
    :goto_50
    :try_start_50
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_69

    .line 153
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 154
    if-nez p1, :cond_63

    .line 155
    goto :goto_50

    .line 157
    :cond_63
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v1, p1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 158
    goto :goto_50

    .line 159
    :cond_69
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/util/List;)V

    .line 160
    monitor-exit p0

    .line 163
    goto :goto_77

    .line 160
    :catchall_70
    move-exception p1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_50 .. :try_end_72} :catchall_70

    :try_start_72
    throw p1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 161
    :catchall_73
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    :goto_77
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/e;->b()V

    .line 165
    nop

    .line 166
    return-void

    .line 143
    :cond_7e
    :goto_7e
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez p1, :cond_90

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez p1, :cond_90

    .line 144
    const-string p1, "SegmentDispatcher"

    const-string v1, "finally pause"

    invoke-static {p1, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 150
    :cond_90
    :try_start_90
    monitor-enter p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_b4

    .line 152
    :goto_91
    :try_start_91
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_aa

    .line 153
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 154
    if-nez p1, :cond_a4

    .line 155
    goto :goto_91

    .line 157
    :cond_a4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v1, p1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 158
    goto :goto_91

    .line 159
    :cond_aa
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/util/List;)V

    .line 160
    monitor-exit p0

    .line 163
    goto :goto_b8

    .line 160
    :catchall_b1
    move-exception p1

    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw p1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    .line 161
    :catchall_b4
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    :goto_b8
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/e;->b()V

    .line 132
    return-void

    .line 124
    :catchall_be
    move-exception p1

    :try_start_bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 125
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    .line 128
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    throw p1
    :try_end_cf
    .catchall {:try_start_bf .. :try_end_cf} :catchall_cf

    .line 143
    :catchall_cf
    move-exception p1

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v1, :cond_e2

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v1, :cond_e2

    .line 144
    const-string v1, "SegmentDispatcher"

    const-string v2, "finally pause"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 150
    :cond_e2
    :try_start_e2
    monitor-enter p0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_106

    .line 152
    :goto_e3
    :try_start_e3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fc

    .line 153
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 154
    if-nez v1, :cond_f6

    .line 155
    goto :goto_e3

    .line 157
    :cond_f6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v2, v1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 158
    goto :goto_e3

    .line 159
    :cond_fc
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/util/List;)V

    .line 160
    monitor-exit p0

    .line 163
    goto :goto_10a

    .line 160
    :catchall_103
    move-exception v0

    monitor-exit p0
    :try_end_105
    .catchall {:try_start_e3 .. :try_end_105} :catchall_103

    :try_start_105
    throw v0
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_106

    .line 161
    :catchall_106
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    :goto_10a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/h/e;->b()V

    throw p1
.end method

.method public b()V
    .registers 3

    .line 1009
    const-string v0, "SegmentDispatcher"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    .line 1011
    monitor-enter p0

    .line 1012
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 1013
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    .line 1014
    goto :goto_11

    .line 1015
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2d

    .line 1016
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/g;->b()V

    .line 1017
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    .line 1018
    return-void

    .line 1015
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/m;)V
    .registers 5

    .line 688
    const-string v0, "SegmentDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReaderExit: threadIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    monitor-enter p0

    .line 690
    const/4 v0, 0x1

    :try_start_1c
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/f/m;->c(Z)V

    .line 691
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->m()V

    .line 693
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 695
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->k()V

    goto :goto_59

    .line 697
    :cond_33
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->n()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 698
    const-string p1, "SegmentDispatcher"

    const-string v0, "onReaderExit: allContentDownloaded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/m;

    .line 700
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    .line 701
    goto :goto_46

    .line 702
    :cond_56
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->k()V

    .line 705
    :cond_59
    :goto_59
    monitor-exit p0

    .line 706
    return-void

    .line 705
    :catchall_5b
    move-exception p1

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_1c .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 614
    monitor-enter p0

    .line 616
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->e(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 617
    monitor-exit p0

    .line 618
    return-void

    .line 617
    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 6

    .line 622
    monitor-enter p0

    .line 623
    :try_start_1
    iget-object v0, p2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-ne v0, p1, :cond_2a

    .line 624
    const-string v0, "SegmentDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unApplySegment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/socialbase/downloader/f/i;->d(J)V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 628
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->a()V

    .line 630
    :cond_2a
    monitor-exit p0

    .line 631
    return-void

    .line 630
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/f/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 635
    monitor-enter p0

    .line 636
    :try_start_1
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/l;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-direct {p1, v0, v1, p2}, Lcom/ss/android/socialbase/downloader/f/l;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/b;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 637
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/f/g;->a(Lcom/ss/android/socialbase/downloader/f/l;)V

    .line 638
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/l;->a()Lcom/ss/android/socialbase/downloader/f/e;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 639
    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method
