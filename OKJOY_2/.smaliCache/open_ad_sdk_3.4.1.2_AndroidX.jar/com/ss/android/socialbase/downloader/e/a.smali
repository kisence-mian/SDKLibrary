.class public Lcom/ss/android/socialbase/downloader/e/a;
.super Ljava/lang/Object;
.source "AsyncStreamReader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/e/b;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/ss/android/socialbase/downloader/f/a;

.field private g:Lcom/ss/android/socialbase/downloader/f/a;

.field private h:Lcom/ss/android/socialbase/downloader/f/a;

.field private i:Lcom/ss/android/socialbase/downloader/f/a;

.field private j:Lcom/ss/android/socialbase/downloader/f/a;

.field private k:Lcom/ss/android/socialbase/downloader/f/a;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Ljava/lang/Throwable;

.field private volatile o:Ljava/util/concurrent/Future;

.field private p:I

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/e/a$1;-><init>(Lcom/ss/android/socialbase/downloader/e/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->q:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->a:Ljava/io/InputStream;

    .line 48
    iput p2, p0, Lcom/ss/android/socialbase/downloader/e/a;->b:I

    .line 49
    const/16 p1, 0x40

    const/4 p2, 0x1

    if-ge p3, p2, :cond_23

    .line 50
    move p3, p2

    goto :goto_26

    .line 51
    :cond_23
    if-le p3, p1, :cond_26

    .line 52
    move p3, p1

    .line 54
    :cond_26
    :goto_26
    iput p3, p0, Lcom/ss/android/socialbase/downloader/e/a;->c:I

    .line 55
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->c()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;)Lcom/ss/android/socialbase/downloader/f/a;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->d()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->n:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/f/a;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/e/a;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 162
    if-nez v1, :cond_11

    .line 163
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 164
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_15

    .line 166
    :cond_11
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 167
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 169
    :goto_15
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->o:Ljava/util/concurrent/Future;

    .line 91
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    .line 202
    if-nez v1, :cond_11

    .line 203
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 204
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_15

    .line 206
    :cond_11
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 207
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    .line 209
    :goto_15
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private d()Lcom/ss/android/socialbase/downloader/f/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 126
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 127
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    if-nez v2, :cond_10

    .line 130
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 131
    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 132
    return-object v0

    .line 128
    :cond_10
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_1b
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    if-nez v2, :cond_58

    .line 139
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 140
    if-nez v2, :cond_36

    iget v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->p:I

    iget v4, p0, Lcom/ss/android/socialbase/downloader/e/a;->c:I

    if-ge v3, v4, :cond_36

    .line 141
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->p:I

    .line 142
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/a;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->b:I

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;-><init>(I)V

    .line 143
    monitor-exit v0

    return-object v1

    .line 145
    :cond_36
    :goto_36
    if-nez v2, :cond_4c

    .line 146
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 147
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    if-nez v2, :cond_44

    .line 150
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    goto :goto_36

    .line 148
    :cond_44
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_4c
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 153
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 154
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 155
    monitor-exit v0

    return-object v2

    .line 137
    :cond_58
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_1b .. :try_end_62} :catchall_60

    throw v1
.end method

.method private e()Lcom/ss/android/socialbase/downloader/f/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->k:Lcom/ss/android/socialbase/downloader/f/a;

    .line 175
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 176
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->k:Lcom/ss/android/socialbase/downloader/f/a;

    .line 177
    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 178
    return-object v0

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 183
    if-nez v2, :cond_23

    .line 185
    :cond_13
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->m:Z

    if-eqz v2, :cond_1a

    .line 186
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->f()V

    .line 188
    :cond_1a
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 189
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 190
    if-eqz v2, :cond_13

    .line 192
    :cond_23
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->k:Lcom/ss/android/socialbase/downloader/f/a;

    .line 193
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 194
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 195
    monitor-exit v0

    return-object v2

    .line 196
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private f()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->n:Ljava/lang/Throwable;

    .line 214
    if-eqz v0, :cond_17

    .line 215
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/f/p;

    if-eqz v1, :cond_12

    .line 216
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x42c

    const-string v2, "async reader closed!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 218
    :cond_12
    const-string v1, "async_read"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 221
    :cond_17
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x42d

    const-string v2, "async reader terminated!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/a;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->e()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/a;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 66
    return-void
.end method

.method public b()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    .line 74
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 75
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_19

    .line 76
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->o:Ljava/util/concurrent/Future;

    .line 77
    if-eqz v0, :cond_18

    .line 79
    :try_start_10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 82
    goto :goto_15

    .line 80
    :catchall_14
    move-exception v0

    .line 83
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->o:Ljava/util/concurrent/Future;

    .line 85
    :cond_18
    return-void

    .line 75
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method
