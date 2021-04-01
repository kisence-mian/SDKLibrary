.class public final Lcom/bytedance/sdk/a/b/a/e/g;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/g$b;,
        Lcom/bytedance/sdk/a/b/a/e/g$c;,
        Lcom/bytedance/sdk/a/b/a/e/g$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z


# instance fields
.field final b:Z

.field final c:Lcom/bytedance/sdk/a/b/a/e/g$b;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/a/b/a/e/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Lcom/bytedance/sdk/a/b/a/e/m;

.field j:J

.field k:J

.field l:Lcom/bytedance/sdk/a/b/a/e/n;

.field final m:Lcom/bytedance/sdk/a/b/a/e/n;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Lcom/bytedance/sdk/a/b/a/e/j;

.field final q:Lcom/bytedance/sdk/a/b/a/e/g$c;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/a/b/a/e/l;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 56
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/g;->s:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    .line 72
    invoke-static {v0, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    .line 70
    return-void

    :cond_27
    move v0, v2

    .line 56
    goto :goto_b
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g$a;)V
    .registers 13

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    .line 110
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 121
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 129
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 131
    iput-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    .line 815
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    .line 139
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->f:Lcom/bytedance/sdk/a/b/a/e/m;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    .line 140
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    .line 141
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->e:Lcom/bytedance/sdk/a/b/a/e/g$b;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->c:Lcom/bytedance/sdk/a/b/a/e/g$b;

    .line 143
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v0, :cond_b5

    move v0, v3

    :goto_3a
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 144
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v0, :cond_46

    .line 145
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 148
    :cond_46
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v0, :cond_4b

    move v1, v3

    :cond_4b
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->v:I

    .line 154
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v0, :cond_58

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 158
    :cond_58
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    .line 161
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 163
    invoke-static {v0, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    const v1, 0xffff

    invoke-virtual {v0, v10, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 167
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->o:Ljava/net/Socket;

    .line 168
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->d:Lcom/bytedance/sdk/a/a/d;

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;-><init>(Lcom/bytedance/sdk/a/a/d;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    .line 170
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$c;

    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/h;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/a/e/g$a;->c:Lcom/bytedance/sdk/a/a/e;

    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/h;-><init>(Lcom/bytedance/sdk/a/a/e;Z)V

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/a/b/a/e/g$c;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Lcom/bytedance/sdk/a/b/a/e/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->q:Lcom/bytedance/sdk/a/b/a/e/g$c;

    .line 171
    return-void

    :cond_b5
    move v0, v1

    .line 143
    goto :goto_3a
.end method

.method private b(ILjava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)",
            "Lcom/bytedance/sdk/a/b/a/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 226
    if-nez p3, :cond_1c

    move v3, v6

    .line 227
    :goto_7
    const/4 v4, 0x0

    .line 232
    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v8

    .line 233
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_19

    .line 234
    :try_start_c
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-eqz v0, :cond_1e

    .line 235
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/a;-><init>()V

    throw v0

    .line 244
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    .line 252
    :catchall_19
    move-exception v0

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    move v3, v7

    .line 226
    goto :goto_7

    .line 237
    :cond_1e
    :try_start_1e
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 238
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 239
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/i;-><init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V

    .line 240
    if-eqz p3, :cond_3b

    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3b

    iget-wide v4, v0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_3c

    :cond_3b
    move v7, v6

    .line 241
    :cond_3c
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 242
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1e .. :try_end_4c} :catchall_16

    .line 245
    if-nez p1, :cond_5c

    .line 246
    :try_start_4e
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v2, v3, v1, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZIILjava/util/List;)V

    .line 252
    :goto_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_19

    .line 254
    if-eqz v7, :cond_5b

    .line 255
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/j;->b()V

    .line 258
    :cond_5b
    return-object v0

    .line 247
    :cond_5c
    :try_start_5c
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    if-eqz v2, :cond_68

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_68
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v2, p1, v1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IILjava/util/List;)V
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_19

    goto :goto_53
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->c(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 4

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/e/i;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)",
            "Lcom/bytedance/sdk/a/b/a/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->b(ILjava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .registers 12

    .prologue
    .line 336
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/g$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$2;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method a(ILcom/bytedance/sdk/a/a/e;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    new-instance v5, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v5}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 868
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 869
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    .line 870
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_37
    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$6;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/a/c;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 886
    return-void
.end method

.method a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 10

    .prologue
    .line 320
    sget-object v6, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/g$1;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method a(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    monitor-enter p0

    .line 819
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 820
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 821
    monitor-exit p0

    .line 840
    :goto_13
    return-void

    .line 823
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 824
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    .line 825
    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/g$4;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 824
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method a(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 844
    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$5;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public a(IZLcom/bytedance/sdk/a/a/c;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 280
    cmp-long v0, p4, v8

    if-nez v0, :cond_33

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILcom/bytedance/sdk/a/a/c;I)V

    .line 309
    :cond_c
    return-void

    .line 301
    :cond_d
    :try_start_d
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 302
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/e/j;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 303
    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 304
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_59

    .line 306
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 307
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    if-eqz p2, :cond_60

    cmp-long v0, p4, v8

    if-nez v0, :cond_60

    const/4 v0, 0x1

    :goto_30
    invoke-virtual {v3, v0, p1, p3, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILcom/bytedance/sdk/a/a/c;I)V

    .line 285
    :cond_33
    cmp-long v0, p4, v8

    if-lez v0, :cond_c

    .line 287
    monitor-enter p0

    .line 289
    :goto_38
    :try_start_38
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_d

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 293
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_52} :catch_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_59

    .line 297
    :catch_52
    move-exception v0

    .line 298
    :try_start_53
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 304
    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v0

    .line 295
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_52
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_38

    :cond_60
    move v0, v1

    .line 307
    goto :goto_30
.end method

.method a(J)V
    .registers 6

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 316
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 317
    :cond_e
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v1

    .line 405
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    .line 406
    :try_start_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-eqz v0, :cond_b

    .line 407
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    .line 416
    :goto_a
    return-void

    .line 409
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    .line 410
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    .line 411
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    .line 414
    :try_start_11
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    invoke-virtual {v2, v0, p1, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;[B)V

    .line 415
    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0

    .line 411
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 428
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/g;->s:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 431
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_66

    move-object v1, v2

    .line 438
    :goto_16
    monitor-enter p0

    .line 439
    :try_start_17
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/e/i;

    .line 441
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    .line 443
    :goto_39
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v0, :cond_96

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/a/b/a/e/l;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/e/l;

    .line 445
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    move-object v4, v0

    .line 447
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_69

    .line 449
    if-eqz v5, :cond_72

    .line 450
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_5b
    if-ge v2, v6, :cond_71

    aget-object v1, v5, v2

    .line 452
    :try_start_5f
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6c

    .line 450
    :cond_62
    :goto_62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5b

    .line 432
    :catch_66
    move-exception v0

    move-object v1, v0

    .line 433
    goto :goto_16

    .line 447
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    .line 453
    :catch_6c
    move-exception v1

    .line 454
    if-eqz v0, :cond_62

    move-object v0, v1

    goto :goto_62

    :cond_71
    move-object v1, v0

    .line 459
    :cond_72
    if-eqz v4, :cond_80

    .line 460
    array-length v2, v4

    move v0, v3

    :goto_76
    if-ge v0, v2, :cond_80

    aget-object v3, v4, v0

    .line 461
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/l;->c()V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 467
    :cond_80
    :try_start_80
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/j;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_8e

    move-object v0, v1

    .line 474
    :cond_86
    :goto_86
    :try_start_86
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->o:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8b} :catch_94

    .line 479
    :goto_8b
    if-eqz v0, :cond_93

    throw v0

    .line 468
    :catch_8e
    move-exception v0

    .line 469
    if-eqz v1, :cond_86

    move-object v0, v1

    goto :goto_86

    .line 480
    :cond_93
    return-void

    .line 475
    :catch_94
    move-exception v0

    goto :goto_8b

    :cond_96
    move-object v4, v2

    goto :goto_55

    :cond_98
    move-object v5, v2

    goto :goto_39
.end method

.method a(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xffff

    .line 495
    if-eqz p1, :cond_21

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a()V

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->b(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v0

    .line 499
    if-eq v0, v3, :cond_21

    .line 500
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IJ)V

    .line 503
    :cond_21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->q:Lcom/bytedance/sdk/a/b/a/e/g$c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 504
    return-void
.end method

.method a(ZIILcom/bytedance/sdk/a/b/a/e/l;)V
    .registers 14

    .prologue
    .line 369
    sget-object v8, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$3;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/a/b/a/e/l;)V

    .line 369
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method declared-synchronized b(I)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 4

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/e/i;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 194
    monitor-exit p0

    return-object v0

    .line 192
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/j;->b()V

    .line 395
    return-void
.end method

.method b(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 333
    return-void
.end method

.method b(ZIILcom/bytedance/sdk/a/b/a/e/l;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v1

    .line 384
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/a/e/l;->a()V

    .line 385
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZII)V

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method declared-synchronized c(I)Lcom/bytedance/sdk/a/b/a/e/l;
    .registers 4

    .prologue
    .line 390
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/e/l;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Z)V

    .line 488
    return-void
.end method

.method c(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 10

    .prologue
    .line 889
    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/g$7;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 898
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 425
    return-void
.end method

.method public declared-synchronized d()Z
    .registers 2

    .prologue
    .line 522
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)Z
    .registers 3

    .prologue
    .line 811
    if-eqz p1, :cond_8

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
