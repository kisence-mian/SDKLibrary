.class public Lcom/ss/android/socialbase/downloader/j/a;
.super Ljava/lang/Object;
.source "AsyncStreamReader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/j/c;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/ss/android/socialbase/downloader/j/b;

.field private g:Lcom/ss/android/socialbase/downloader/j/b;

.field private h:Lcom/ss/android/socialbase/downloader/j/b;

.field private i:Lcom/ss/android/socialbase/downloader/j/b;

.field private j:Lcom/ss/android/socialbase/downloader/j/b;

.field private k:Lcom/ss/android/socialbase/downloader/j/b;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Ljava/lang/Throwable;

.field private volatile o:Ljava/util/concurrent/Future;

.field private p:I

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    .line 27
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->e:Ljava/lang/Object;

    .line 91
    new-instance v2, Lcom/ss/android/socialbase/downloader/j/a$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/j/a$1;-><init>(Lcom/ss/android/socialbase/downloader/j/a;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->q:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->a:Ljava/io/InputStream;

    .line 46
    iput p2, p0, Lcom/ss/android/socialbase/downloader/j/a;->b:I

    .line 47
    if-ge p3, v0, :cond_28

    move p3, v0

    .line 52
    :cond_22
    :goto_22
    iput p3, p0, Lcom/ss/android/socialbase/downloader/j/a;->c:I

    .line 53
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/j/a;->c()V

    .line 54
    return-void

    .line 49
    :cond_28
    if-le p3, v1, :cond_22

    move p3, v1

    .line 50
    goto :goto_22
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/j/a;)Lcom/ss/android/socialbase/downloader/j/b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/j/d;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/j/a;->d()Lcom/ss/android/socialbase/downloader/j/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/j/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->n:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/j/a;Lcom/ss/android/socialbase/downloader/j/b;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/j/a;->c(Lcom/ss/android/socialbase/downloader/j/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/j/a;Z)Z
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/j/b;)V
    .registers 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->g:Lcom/ss/android/socialbase/downloader/j/b;

    .line 164
    if-nez v0, :cond_12

    .line 165
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->g:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->f:Lcom/ss/android/socialbase/downloader/j/b;

    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 171
    :goto_10
    monitor-exit v1

    .line 172
    return-void

    .line 168
    :cond_12
    iput-object p1, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    .line 169
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->g:Lcom/ss/android/socialbase/downloader/j/b;

    goto :goto_10

    .line 171
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/j/a;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->o:Ljava/util/concurrent/Future;

    .line 89
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/j/b;)V
    .registers 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->j:Lcom/ss/android/socialbase/downloader/j/b;

    .line 204
    if-nez v0, :cond_12

    .line 205
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->j:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->i:Lcom/ss/android/socialbase/downloader/j/b;

    .line 206
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 211
    :goto_10
    monitor-exit v1

    .line 212
    return-void

    .line 208
    :cond_12
    iput-object p1, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    .line 209
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/j/a;->j:Lcom/ss/android/socialbase/downloader/j/b;

    goto :goto_10

    .line 211
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private d()Lcom/ss/android/socialbase/downloader/j/b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/j/d;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->h:Lcom/ss/android/socialbase/downloader/j/b;

    .line 128
    if-eqz v0, :cond_16

    .line 129
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->l:Z

    if-eqz v1, :cond_f

    .line 130
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/j/d;-><init>()V

    throw v0

    .line 132
    :cond_f
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->h:Lcom/ss/android/socialbase/downloader/j/b;

    .line 133
    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    .line 157
    :goto_15
    return-object v0

    .line 137
    :cond_16
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_19
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->l:Z

    if-eqz v0, :cond_26

    .line 139
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/j/d;-><init>()V

    throw v0

    .line 158
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v0

    .line 141
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->f:Lcom/ss/android/socialbase/downloader/j/b;

    .line 142
    if-nez v0, :cond_41

    iget v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->p:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/j/a;->c:I

    if-ge v2, v3, :cond_41

    .line 143
    iget v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->p:I

    .line 144
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/b;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->b:I

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/j/b;-><init>(I)V

    .line 145
    monitor-exit v1

    goto :goto_15

    .line 152
    :cond_3f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->f:Lcom/ss/android/socialbase/downloader/j/b;

    .line 147
    :cond_41
    if-nez v0, :cond_52

    .line 148
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 149
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->l:Z

    if-eqz v0, :cond_3f

    .line 150
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/j/d;-><init>()V

    throw v0

    .line 154
    :cond_52
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->h:Lcom/ss/android/socialbase/downloader/j/b;

    .line 155
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->g:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->f:Lcom/ss/android/socialbase/downloader/j/b;

    .line 156
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    .line 157
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_26 .. :try_end_5f} :catchall_23

    goto :goto_15
.end method

.method private e()Lcom/ss/android/socialbase/downloader/j/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->k:Lcom/ss/android/socialbase/downloader/j/b;

    .line 177
    if-eqz v0, :cond_c

    .line 178
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->k:Lcom/ss/android/socialbase/downloader/j/b;

    .line 179
    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    .line 197
    :goto_b
    return-object v0

    .line 183
    :cond_c
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->i:Lcom/ss/android/socialbase/downloader/j/b;

    .line 185
    if-nez v0, :cond_23

    .line 187
    :cond_13
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->m:Z

    if-eqz v0, :cond_1a

    .line 188
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/j/a;->f()V

    .line 190
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->i:Lcom/ss/android/socialbase/downloader/j/b;

    .line 192
    if-eqz v0, :cond_13

    .line 194
    :cond_23
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->k:Lcom/ss/android/socialbase/downloader/j/b;

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->j:Lcom/ss/android/socialbase/downloader/j/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/j/a;->i:Lcom/ss/android/socialbase/downloader/j/b;

    .line 196
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ss/android/socialbase/downloader/j/b;->c:Lcom/ss/android/socialbase/downloader/j/b;

    .line 197
    monitor-exit v1

    goto :goto_b

    .line 198
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v0
.end method

.method private f()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->n:Ljava/lang/Throwable;

    .line 216
    if-eqz v0, :cond_17

    .line 217
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/j/d;

    if-eqz v1, :cond_12

    .line 218
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x42c

    const-string v2, "async reader closed!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 220
    :cond_12
    const-string v1, "async_read"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 223
    :cond_17
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x42d

    const-string v2, "async reader terminated!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/j/b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/j/a;->e()Lcom/ss/android/socialbase/downloader/j/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/j/b;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/j/a;->b(Lcom/ss/android/socialbase/downloader/j/b;)V

    .line 64
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->l:Z

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_18

    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->o:Ljava/util/concurrent/Future;

    .line 75
    if-eqz v0, :cond_17

    .line 77
    const/4 v1, 0x1

    :try_start_11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_1b

    .line 81
    :goto_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/j/a;->o:Ljava/util/concurrent/Future;

    .line 83
    :cond_17
    return-void

    .line 73
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 78
    :catch_1b
    move-exception v0

    goto :goto_14
.end method
