.class Lcom/ss/android/socialbase/downloader/impls/r$a;
.super Ljava/lang/Object;
.source "RetryScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/impls/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Z

.field final g:[I

.field private h:I

.field private i:I

.field private j:Z

.field private k:J

.field private l:Z


# direct methods
.method constructor <init>(IIIIIZ[I)V
    .registers 9

    .prologue
    const/16 v0, 0x4e20

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    if-ge p4, v0, :cond_8

    move p4, v0

    .line 610
    :cond_8
    if-ge p5, v0, :cond_b

    move p5, v0

    .line 613
    :cond_b
    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    .line 614
    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->b:I

    .line 615
    iput p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    .line 616
    iput p4, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->d:I

    .line 617
    iput p5, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->e:I

    .line 618
    iput-boolean p6, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->f:Z

    .line 619
    iput-object p7, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->g:[I

    .line 620
    iput p4, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    .line 621
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I

    return v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z
    .registers 2

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/r$a;)Z
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z
    .registers 2

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->l:Z

    return p1
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 3

    .prologue
    .line 644
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 645
    monitor-exit p0

    return-void

    .line 644
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(J)V
    .registers 4

    .prologue
    .line 648
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->k:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 649
    monitor-exit p0

    return-void

    .line 648
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(JIIZ)Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->l:Z

    if-nez v1, :cond_d

    .line 625
    const-string v1, "RetryScheduler"

    const-string v2, "canRetry: mIsWaitingRetry is false, return false!!!"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_c
    :goto_c
    return v0

    .line 628
    :cond_d
    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->b:I

    if-lt v1, p3, :cond_c

    .line 631
    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    if-ge v1, v2, :cond_c

    .line 634
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->j:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    if-ne p4, v1, :cond_c

    .line 637
    :cond_1e
    if-nez p5, :cond_2b

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->k:J

    sub-long v2, p1, v2

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->d:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_c

    .line 640
    :cond_2b
    const/4 v0, 0x1

    goto :goto_c
.end method

.method declared-synchronized b()V
    .registers 2

    .prologue
    .line 652
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 653
    monitor-exit p0

    return-void

    .line 652
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .registers 2

    .prologue
    .line 656
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->d:I

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    .line 657
    return-void
.end method

.method d()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    return v0
.end method
