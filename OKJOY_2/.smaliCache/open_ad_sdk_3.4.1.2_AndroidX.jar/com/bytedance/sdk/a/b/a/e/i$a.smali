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

    .line 492
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/i;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/i;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance p1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    return-void
.end method

.method private a(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8a

    .line 526
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_28

    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v1, :cond_28

    .line 527
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i;->l()V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_81

    goto :goto_a

    .line 530
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 531
    nop

    .line 533
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i;->k()V

    .line 534
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 535
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v2, v1, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    .line 536
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_8a

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V

    .line 540
    :try_start_52
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget v6, v0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_68

    const/4 p1, 0x1

    goto :goto_69

    :cond_68
    const/4 p1, 0x0

    :goto_69
    move v7, p1

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IZLcom/bytedance/sdk/a/a/c;J)V
    :try_end_6f
    .catchall {:try_start_52 .. :try_end_6f} :catchall_78

    .line 542
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 543
    nop

    .line 544
    return-void

    .line 542
    :catchall_78
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 543
    throw p1

    .line 530
    :catchall_81
    move-exception p1

    :try_start_82
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 531
    throw p1

    .line 536
    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_8a

    throw p1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 511
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 512
    :goto_18
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_29

    .line 513
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/i$a;->a(Z)V

    goto :goto_18

    .line 515
    :cond_29
    return-void
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 566
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v0

    .line 567
    :try_start_16
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v1, :cond_1c

    monitor-exit v0

    return-void

    .line 568
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_65

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_40

    .line 572
    :goto_32
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_4f

    .line 573
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/e/i$a;->a(Z)V

    goto :goto_32

    .line 577
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget v3, v0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IZLcom/bytedance/sdk/a/a/c;J)V

    .line 580
    :cond_4f
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v2

    .line 581
    :try_start_52
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    .line 582
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_62

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b()V

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->j()V

    .line 585
    return-void

    .line 582
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    .line 568
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->c:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 549
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v0

    .line 550
    :try_start_16
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i;->k()V

    .line 551
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_35

    .line 552
    :goto_1c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/i$a;->a(Z)V

    .line 554
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$a;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b()V

    goto :goto_1c

    .line 556
    :cond_34
    return-void

    .line 551
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method
