.class final Lcom/bytedance/sdk/a/b/a/e/i$a;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/e/i;

.field private final e:Lcom/bytedance/sdk/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 492
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/i;)V
    .registers 3

    .prologue
    .line 492
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    return-void
.end method

.method private a(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v1

    .line 524
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_31

    .line 526
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_34

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_34

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->l()V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_28

    goto :goto_a

    .line 530
    :catchall_28
    move-exception v0

    :try_start_29
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 531
    throw v0

    .line 536
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v0

    .line 530
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 533
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->k()V

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    .line 536
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_31

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V

    .line 540
    :try_start_5d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    if-eqz p1, :cond_7f

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_7f

    const/4 v2, 0x1

    :goto_72
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IZLcom/bytedance/sdk/a/a/c;J)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_81

    .line 542
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 544
    return-void

    .line 540
    :cond_7f
    const/4 v2, 0x0

    goto :goto_72

    .line 542
    :catchall_81
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 543
    throw v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 511
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 512
    :goto_17
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/i$a;->a(Z)V

    goto :goto_17

    .line 515
    :cond_28
    return-void
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 565
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 566
    :cond_15
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v1

    .line 567
    :try_start_18
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v0, :cond_1e

    monitor-exit v1

    .line 585
    :goto_1d
    return-void

    .line 568
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3f

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v0, :cond_4e

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    .line 572
    :goto_31
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4e

    .line 573
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/a/b/a/e/i$a;->a(Z)V

    goto :goto_31

    .line 568
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 577
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IZLcom/bytedance/sdk/a/a/c;J)V

    .line 580
    :cond_4e
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v1

    .line 581
    const/4 v0, 0x1

    :try_start_52
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    .line 582
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_62

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b()V

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->j()V

    goto :goto_1d

    .line 582
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 549
    :cond_12
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v1

    .line 550
    :try_start_15
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->k()V

    .line 551
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_33

    .line 552
    :goto_1b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/i$a;->a(Z)V

    .line 554
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b()V

    goto :goto_1b

    .line 551
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 556
    :cond_36
    return-void
.end method
