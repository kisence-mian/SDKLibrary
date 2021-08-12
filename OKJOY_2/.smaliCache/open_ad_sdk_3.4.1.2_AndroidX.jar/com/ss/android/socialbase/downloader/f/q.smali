.class Lcom/ss/android/socialbase/downloader/f/q;
.super Ljava/lang/Object;
.source "UrlRecord.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/m;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->e:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    .line 58
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    .line 59
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/q;->b:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/f/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->e:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    .line 51
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    .line 52
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/q;->b:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 66
    :try_start_6
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 67
    if-lez v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1b

    return-object p1

    .line 72
    :cond_1a
    goto :goto_1f

    .line 70
    :catchall_1b
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()Ljava/lang/String;
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->i:Ljava/lang/String;

    if-nez v0, :cond_2f

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/q;->b:Ljava/lang/String;

    if-nez v2, :cond_1b

    const-string v2, ""

    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->i:Ljava/lang/String;

    .line 130
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 90
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 108
    return-void
.end method

.method public declared-synchronized a(Lcom/ss/android/socialbase/downloader/f/m;)V
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->f:I

    .line 95
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->g:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 96
    monitor-exit p0

    return-void

    .line 93
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/ss/android/socialbase/downloader/f/m;)V
    .registers 3

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 86
    goto :goto_8

    .line 84
    :catchall_7
    move-exception p1

    .line 87
    :goto_8
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    .line 99
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->g:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    .line 103
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 103
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 135
    if-ne p0, p1, :cond_4

    .line 136
    const/4 p1, 0x1

    return p1

    .line 138
    :cond_4
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/f/q;

    if-nez v0, :cond_a

    .line 139
    const/4 p1, 0x0

    return p1

    .line 141
    :cond_a
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/q;->e()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/q;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/f/q;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->h:I

    if-nez v0, :cond_e

    .line 121
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->h:I

    .line 123
    :cond_e
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/q;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UrlRecord{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ipFamily=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMainUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failedTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCurrentFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/q;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
