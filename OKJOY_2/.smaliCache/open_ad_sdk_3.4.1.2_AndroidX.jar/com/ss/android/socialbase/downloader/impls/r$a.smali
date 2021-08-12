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

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    const/16 v0, 0xbb8

    if-ge p4, v0, :cond_8

    .line 661
    move p4, v0

    .line 663
    :cond_8
    const/16 v0, 0x1388

    if-ge p5, v0, :cond_d

    .line 664
    move p5, v0

    .line 666
    :cond_d
    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    .line 667
    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->b:I

    .line 668
    iput p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    .line 669
    iput p4, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->d:I

    .line 670
    iput p5, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->e:I

    .line 671
    iput-boolean p6, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->f:Z

    .line 672
    iput-object p7, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->g:[I

    .line 673
    iput p4, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    .line 674
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I
    .registers 1

    .line 643
    iget p0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/r$a;)Z
    .registers 1

    .line 643
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z
    .registers 2

    .line 643
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->l:Z

    return p1
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 697
    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 698
    monitor-exit p0

    return-void

    .line 696
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(J)V
    .registers 3

    monitor-enter p0

    .line 701
    :try_start_1
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->k:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 702
    monitor-exit p0

    return-void

    .line 700
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(JIIZ)Z
    .registers 8

    .line 677
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 678
    const-string p1, "RetryScheduler"

    const-string p2, "canRetry: mIsWaitingRetry is false, return false!!!"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return v1

    .line 681
    :cond_d
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->b:I

    if-ge v0, p3, :cond_12

    .line 682
    return v1

    .line 684
    :cond_12
    iget p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I

    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    if-lt p3, v0, :cond_19

    .line 685
    return v1

    .line 687
    :cond_19
    iget-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->j:Z

    if-eqz p3, :cond_21

    const/4 p3, 0x2

    if-eq p4, p3, :cond_21

    .line 688
    return v1

    .line 690
    :cond_21
    if-nez p5, :cond_2e

    iget-wide p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->k:J

    sub-long/2addr p1, p3

    iget p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->d:I

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_2e

    .line 691
    return v1

    .line 693
    :cond_2e
    const/4 p1, 0x1

    return p1
.end method

.method declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 705
    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->i:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 706
    monitor-exit p0

    return-void

    .line 704
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .registers 2

    .line 709
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->d:I

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    .line 710
    return-void
.end method

.method d()I
    .registers 2

    .line 713
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$a;->h:I

    return v0
.end method
