.class public Lcom/ss/android/socialbase/downloader/i/d;
.super Ljava/lang/Object;
.source "DownloadStenographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/i/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/i/d$a;

.field private b:Lcom/ss/android/socialbase/downloader/i/d$a;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->d:I

    .line 18
    return-void
.end method

.method private a()Lcom/ss/android/socialbase/downloader/i/d$a;
    .registers 4

    .line 83
    iget v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->c:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/i/d;->d:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_16

    .line 84
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/d;->b:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 85
    if-eqz v1, :cond_16

    .line 86
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/i/d$a;->d:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 87
    iput-object v2, v1, Lcom/ss/android/socialbase/downloader/i/d$a;->d:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 88
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->b:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 89
    if-eqz v0, :cond_15

    .line 90
    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->c:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 92
    :cond_15
    return-object v1

    .line 95
    :cond_16
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->c:I

    .line 96
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/d$a;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/i/d$a;-><init>(Lcom/ss/android/socialbase/downloader/i/d$1;)V

    return-object v0
.end method

.method private a(J)Lcom/ss/android/socialbase/downloader/i/d$a;
    .registers 10

    .line 100
    nop

    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->a:Lcom/ss/android/socialbase/downloader/i/d$a;

    const/4 v1, 0x0

    .line 102
    :goto_4
    if-eqz v0, :cond_13

    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_13

    .line 103
    nop

    .line 104
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->c:Lcom/ss/android/socialbase/downloader/i/d$a;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 106
    :cond_13
    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    if-eq v0, v1, :cond_25

    .line 107
    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    sub-long/2addr v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_25

    .line 109
    return-object v0

    .line 112
    :cond_25
    return-object v1
.end method


# virtual methods
.method public a(JJ)Z
    .registers 11

    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->a:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 30
    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 31
    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->a:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_27

    iget-wide v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    cmp-long v2, p3, v2

    if-gez v2, :cond_13

    goto :goto_27

    .line 35
    :cond_13
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->c:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 36
    if-eqz v2, :cond_2a

    iget-wide v2, v2, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2a

    .line 38
    iput-wide p1, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->a:J

    .line 39
    iput-wide p3, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    .line 40
    monitor-exit p0

    return v1

    .line 33
    :cond_27
    :goto_27
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 43
    :cond_2a
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/i/d;->a()Lcom/ss/android/socialbase/downloader/i/d$a;

    move-result-object v2

    .line 45
    iput-wide p1, v2, Lcom/ss/android/socialbase/downloader/i/d$a;->a:J

    .line 46
    iput-wide p3, v2, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    .line 48
    if-eqz v0, :cond_38

    .line 49
    iput-object v0, v2, Lcom/ss/android/socialbase/downloader/i/d$a;->c:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 50
    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->d:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 52
    :cond_38
    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/i/d;->a:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 53
    monitor-exit p0

    return v1

    .line 54
    :catchall_3c
    move-exception p1

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public b(JJ)J
    .registers 12

    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/d;->a:Lcom/ss/android/socialbase/downloader/i/d$a;

    .line 66
    const-wide/16 v1, -0x1

    if-nez v0, :cond_9

    .line 67
    monitor-exit p0

    return-wide v1

    .line 69
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/i/d;->a(J)Lcom/ss/android/socialbase/downloader/i/d$a;

    move-result-object p1

    .line 70
    if-nez p1, :cond_11

    .line 71
    monitor-exit p0

    return-wide v1

    .line 73
    :cond_11
    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/i/d$a;->a:J

    iget-wide v5, p1, Lcom/ss/android/socialbase/downloader/i/d$a;->a:J

    sub-long/2addr v3, v5

    .line 74
    iget-wide p1, p1, Lcom/ss/android/socialbase/downloader/i/d$a;->b:J

    sub-long/2addr p3, p1

    .line 75
    const-wide/16 p1, 0x0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_26

    cmp-long p1, p3, p1

    if-lez p1, :cond_26

    .line 76
    div-long/2addr v3, p3

    monitor-exit p0

    return-wide v3

    .line 78
    :cond_26
    monitor-exit p0

    return-wide v1

    .line 79
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method
