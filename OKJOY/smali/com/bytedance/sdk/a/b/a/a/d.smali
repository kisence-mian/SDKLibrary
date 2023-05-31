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
            "Ljava/util/LinkedHashMap",
            "<",
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

    .prologue
    .line 85
    const-class v0, Lcom/bytedance/sdk/a/b/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/a/d;->j:Z

    .line 92
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/a/d;->a:Ljava/util/regex/Pattern;

    return-void

    .line 85
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private declared-synchronized d()V
    .registers 3

    .prologue
    .line 655
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 655
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 658
    :cond_12
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/bytedance/sdk/a/b/a/a/d$a;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 538
    monitor-enter p0

    :try_start_2
    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/a/d$a;->a:Lcom/bytedance/sdk/a/b/a/a/d$b;

    .line 539
    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-eq v1, p1, :cond_11

    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    .line 538
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 544
    :cond_11
    if-eqz p2, :cond_52

    :try_start_13
    iget-boolean v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->e:Z

    if-nez v1, :cond_52

    move v1, v0

    .line 545
    :goto_18
    iget v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->c:I

    if-ge v1, v3, :cond_52

    .line 546
    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/a/d$a;->b:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_3e

    .line 547
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/a/d$a;->b()V

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_3e
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    iget-object v4, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->d:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/a/b/a/f/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 551
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/a/d$a;->b()V
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_e

    .line 595
    :cond_4d
    :goto_4d
    monitor-exit p0

    return-void

    .line 545
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 557
    :cond_52
    :goto_52
    :try_start_52
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->c:I

    if-ge v0, v1, :cond_8b

    .line 558
    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->d:[Ljava/io/File;

    aget-object v1, v1, v0

    .line 559
    if-eqz p2, :cond_85

    .line 560
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/a/b/a/f/a;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 561
    iget-object v3, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->c:[Ljava/io/File;

    aget-object v3, v3, v0

    .line 562
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v4, v1, v3}, Lcom/bytedance/sdk/a/b/a/f/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 563
    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    aget-wide v4, v1, v0

    .line 564
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v1, v3}, Lcom/bytedance/sdk/a/b/a/f/a;->c(Ljava/io/File;)J

    move-result-wide v6

    .line 565
    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    aput-wide v6, v1, v0

    .line 566
    iget-wide v8, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    .line 557
    :cond_82
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 569
    :cond_85
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/a/b/a/f/a;->a(Ljava/io/File;)V

    goto :goto_82

    .line 573
    :cond_8b
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    .line 574
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    .line 575
    iget-boolean v0, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->e:Z

    or-int/2addr v0, p2

    if-eqz v0, :cond_e3

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->e:Z

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 578
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/a/a/d$b;->a(Lcom/bytedance/sdk/a/a/d;)V

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 581
    if-eqz p2, :cond_c7

    .line 582
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bytedance/sdk/a/b/a/a/d;->m:J

    iput-wide v0, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->g:J

    .line 590
    :cond_c7
    :goto_c7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V

    .line 592
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->k:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_da

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 593
    :cond_da
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4d

    .line 585
    :cond_e3
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    iget-object v1, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    .line 588
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;
    :try_end_105
    .catchall {:try_start_52 .. :try_end_105} :catchall_e

    goto :goto_c7
.end method

.method a()Z
    .registers 3

    .prologue
    .line 602
    .line 603
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    .line 604
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    .line 603
    :goto_11
    return v0

    .line 604
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method a(Lcom/bytedance/sdk/a/b/a/a/d$b;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/a/b/a/a/d;->l:J

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

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->f:I

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 644
    :cond_5c
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    .prologue
    .line 651
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

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

    .prologue
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

    goto :goto_0

    .line 698
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->i:Z

    .line 699
    return-void
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->g:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z

    if-eqz v0, :cond_e

    .line 678
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_43

    .line 691
    :goto_c
    monitor-exit p0

    return-void

    .line 682
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/bytedance/sdk/a/b/a/a/d$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/a/d$b;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 683
    iget-object v4, v3, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-eqz v4, :cond_31

    .line 684
    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/a/d$a;->b()V

    .line 682
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 687
    :cond_34
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/a/d;->c()V

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->close()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->d:Lcom/bytedance/sdk/a/a/d;

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->h:Z
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_43

    goto :goto_c

    .line 677
    :catchall_43
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

    .prologue
    .line 665
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    .line 670
    :goto_5
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
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    .line 665
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
