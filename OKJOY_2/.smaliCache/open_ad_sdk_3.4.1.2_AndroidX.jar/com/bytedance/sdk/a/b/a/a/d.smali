.class public final Lcom/bytedance/sdk/a/b/a/a/d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/a/d$b;,
        Lcom/bytedance/sdk/a/b/a/a/d$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic j:Z


# instance fields
.field final b:Lcom/bytedance/sdk/a/b/a/f/a;

.field final c:I

.field d:Lcom/bytedance/sdk/a/a/d;

.field final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/a/b/a/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field private k:J

.field private l:J

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/a/d;->j:Z

    .line 92
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/a/d;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    .line 655
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->b()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    .line 658
    monitor-exit p0

    return-void

    .line 656
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 654
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/bytedance/sdk/a/b/a/a/d$a;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 538
    :try_start_1
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/a/d$a;->a:Lcom/bytedance/sdk/a/b/a/a/d$b;

    .line 539
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-ne v1, p1, :cond_f8

    .line 544
    const/4 v1, 0x0

    if-eqz p2, :cond_49

    iget-boolean v2, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->e:Z

    if-nez v2, :cond_49

    .line 545
    move v2, v1

    :goto_f
    iget v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->c:I

    if-ge v2, v3, :cond_49

    .line 546
    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/a/d$a;->b:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2d

    .line 550
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    iget-object v4, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->d:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/a/b/a/f/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 551
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/a/d$a;->b()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_fe

    .line 552
    monitor-exit p0

    return-void

    .line 545
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 547
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/a/d$a;->b()V

    .line 548
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 557
    :cond_49
    nop

    :goto_4a
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->c:I

    if-ge v1, p1, :cond_82

    .line 558
    iget-object p1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->d:[Ljava/io/File;

    aget-object p1, p1, v1

    .line 559
    if-eqz p2, :cond_7a

    .line 560
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/a/b/a/f/a;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 561
    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 562
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v3, p1, v2}, Lcom/bytedance/sdk/a/b/a/f/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 563
    iget-object p1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    aget-wide v3, p1, v1

    .line 564
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/a/b/a/f/a;->c(Ljava/io/File;)J

    move-result-wide v5

    .line 565
    iget-object p1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    aput-wide v5, p1, v1

    .line 566
    iget-wide v7, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    .line 567
    goto :goto_7f

    .line 569
    :cond_7a
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v2, p1}, Lcom/bytedance/sdk/a/b/a/f/a;->a(Ljava/io/File;)V

    .line 557
    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 573
    :cond_82
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    .line 574
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    .line 575
    iget-boolean p1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->e:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_be

    .line 576
    iput-boolean v1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->e:Z

    .line 577
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 578
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 579
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/a/d$b;->a(Lcom/bytedance/sdk/a/a/d;)V

    .line 580
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 581
    if-eqz p2, :cond_dc

    .line 582
    iget-wide p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->m:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->m:J

    iput-wide p1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->g:J

    goto :goto_dc

    .line 585
    :cond_be
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 587
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    iget-object p2, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 588
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 590
    :cond_dc
    :goto_dc
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V

    .line 592
    iget-wide p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->k:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_ef

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->a()Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 593
    :cond_ef
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f6
    .catchall {:try_start_2d .. :try_end_f6} :catchall_fe

    .line 595
    :cond_f6
    monitor-exit p0

    return-void

    .line 540
    :cond_f8
    :try_start_f8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_fe
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_fe

    .line 537
    :catchall_fe
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()Z
    .registers 3

    .line 602
    nop

    .line 603
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_11

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    .line 604
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 603
    :goto_12
    return v0
.end method

.method a(Lcom/bytedance/sdk/a/b/a/a/d$b;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-eqz v0, :cond_9

    .line 627
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/a/d$a;->a()V

    .line 630
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->c:I

    if-ge v0, v1, :cond_29

    .line 631
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->c:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/a/b/a/f/a;->a(Ljava/io/File;)V

    .line 632
    iget-wide v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    .line 633
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 636
    :cond_29
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->a()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 641
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 644
    :cond_5c
    return v1
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    .line 651
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 651
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    :goto_0
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/a/d$b;

    .line 696
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/a/d;->a(Lcom/bytedance/sdk/a/b/a/a/d$b;)Z

    .line 697
    goto :goto_0

    .line 698
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->i:Z

    .line 699
    return-void
.end method

.method public declared-synchronized close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 677
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z

    if-eqz v0, :cond_b

    goto :goto_40

    .line 682
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/a/b/a/a/d$b;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/a/d$b;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_31

    aget-object v4, v0, v3

    .line 683
    iget-object v5, v4, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-eqz v5, :cond_2e

    .line 684
    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/a/d$a;->b()V

    .line 682
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 687
    :cond_31
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->c()V

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->close()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    .line 690
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_44

    .line 691
    monitor-exit p0

    return-void

    .line 678
    :cond_40
    :goto_40
    :try_start_40
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_44

    .line 679
    monitor-exit p0

    return-void

    .line 676
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 665
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 667
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->d()V

    .line 668
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->c()V

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    .line 670
    monitor-exit p0

    return-void

    .line 664
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
