.class Lcom/ss/android/socialbase/downloader/f/b;
.super Ljava/lang/Object;
.source "BufferQueue.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/c;
.implements Lcom/ss/android/socialbase/downloader/f/d;
.implements Lcom/ss/android/socialbase/downloader/f/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:Lcom/ss/android/socialbase/downloader/f/a;

.field private f:Lcom/ss/android/socialbase/downloader/f/a;

.field private g:Lcom/ss/android/socialbase/downloader/f/a;

.field private h:Lcom/ss/android/socialbase/downloader/f/a;

.field private i:Lcom/ss/android/socialbase/downloader/f/a;

.field private volatile j:Z

.field private k:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    .line 32
    const/16 v0, 0x40

    if-ge p1, v0, :cond_16

    .line 33
    move p1, v0

    .line 35
    :cond_16
    const/16 v0, 0x2000

    if-ge p2, v0, :cond_1b

    .line 36
    move p2, v0

    .line 38
    :cond_1b
    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->a:I

    .line 39
    iput p2, p0, Lcom/ss/android/socialbase/downloader/f/b;->b:I

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 48
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 49
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 50
    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 51
    return-object v0

    .line 54
    :cond_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 56
    :goto_11
    if-nez v2, :cond_27

    .line 57
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    if-nez v2, :cond_1f

    .line 60
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 61
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    goto :goto_11

    .line 58
    :cond_1f
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, "read"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_27
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/f/b;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 64
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 65
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 66
    monitor-exit v0

    return-object v2

    .line 67
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_33

    throw v1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 74
    if-nez v1, :cond_c

    .line 75
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    goto :goto_10

    .line 77
    :cond_c
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 78
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 80
    :goto_10
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public b()Lcom/ss/android/socialbase/downloader/f/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    if-nez v1, :cond_43

    .line 91
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    .line 92
    if-nez v1, :cond_34

    .line 93
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->k:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->a:I

    if-ge v1, v2, :cond_1e

    .line 94
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->k:I

    .line 95
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/a;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->b:I

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;-><init>(I)V

    .line 96
    monitor-exit v0

    return-object v1

    .line 99
    :cond_1e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 100
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    if-nez v1, :cond_2c

    .line 103
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    .line 104
    if-eqz v1, :cond_1e

    goto :goto_34

    .line 101
    :cond_2c
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, "obtain"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_34
    :goto_34
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    .line 107
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3f

    .line 108
    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 110
    :cond_3f
    iput-object v3, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 111
    monitor-exit v0

    return-object v1

    .line 89
    :cond_43
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, "obtain"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 119
    if-nez v1, :cond_11

    .line 120
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 121
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_15

    .line 123
    :cond_11
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 124
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 126
    :goto_15
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public c()V
    .registers 3

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    .line 132
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_19

    .line 136
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0

    .line 135
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method
