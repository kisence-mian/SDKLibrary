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
            "Ljava/util/Map<",
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
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/a/b/a/e/l;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/g;->s:Z

    .line 73
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 75
    const-string v1, "OkHttp Http2Connection"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g$a;)V
    .registers 18

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    .line 113
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 124
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 132
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v2}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 134
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    .line 820
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    .line 142
    iget-object v4, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->f:Lcom/bytedance/sdk/a/b/a/e/m;

    iput-object v4, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    .line 143
    iget-boolean v4, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    iput-boolean v4, v0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    .line 144
    iget-object v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->e:Lcom/bytedance/sdk/a/b/a/e/g$b;

    iput-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->c:Lcom/bytedance/sdk/a/b/a/e/g$b;

    .line 146
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3e

    move v5, v7

    goto :goto_3f

    :cond_3e
    move v5, v6

    :goto_3f
    iput v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 147
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v5, :cond_4a

    .line 148
    iget v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 151
    :cond_4a
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    if-eqz v5, :cond_4f

    move v6, v7

    :cond_4f
    iput v6, v0, Lcom/bytedance/sdk/a/b/a/e/g;->v:I

    .line 157
    iget-boolean v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    const/4 v6, 0x7

    if-eqz v5, :cond_5d

    .line 158
    iget-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v8}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 161
    :cond_5d
    iget-object v5, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    .line 164
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v3

    .line 166
    const-string v3, "OkHttp %s Push Observer"

    invoke-static {v3, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    move-object v8, v15

    move-object v5, v15

    move-object v15, v3

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v5, v0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    .line 167
    const v3, 0xffff

    invoke-virtual {v2, v6, v3}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 168
    const/4 v3, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v2, v3, v5}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 169
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 170
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->a:Ljava/net/Socket;

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->o:Ljava/net/Socket;

    .line 171
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v3, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->d:Lcom/bytedance/sdk/a/a/d;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/j;-><init>(Lcom/bytedance/sdk/a/a/d;Z)V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    .line 173
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/g$c;

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/h;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g$a;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-direct {v3, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;-><init>(Lcom/bytedance/sdk/a/a/e;Z)V

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/a/b/a/e/g$c;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Lcom/bytedance/sdk/a/b/a/e/h;)V

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->q:Lcom/bytedance/sdk/a/b/a/e/g$c;

    .line 174
    return-void
.end method

.method private b(ILjava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
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

    .line 229
    nop

    .line 230
    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 235
    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v7

    .line 236
    :try_start_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6b

    .line 237
    :try_start_8
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-nez v0, :cond_62

    .line 240
    iget v8, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 241
    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    .line 242
    new-instance v9, Lcom/bytedance/sdk/a/b/a/e/i;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/i;-><init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V

    .line 243
    if-eqz p3, :cond_2f

    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2f

    iget-wide v0, v9, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p3, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p3, 0x1

    .line 244
    :goto_30
    invoke-virtual {v9}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_68

    .line 248
    if-nez p1, :cond_48

    .line 249
    :try_start_42
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZIILjava/util/List;)V

    goto :goto_51

    .line 250
    :cond_48
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    if-nez v0, :cond_5a

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p1, v8, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IILjava/util/List;)V

    .line 255
    :goto_51
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_6b

    .line 257
    if-eqz p3, :cond_59

    .line 258
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/j;->b()V

    .line 261
    :cond_59
    return-object v9

    .line 251
    :cond_5a
    :try_start_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_6b

    .line 238
    :cond_62
    :try_start_62
    new-instance p1, Lcom/bytedance/sdk/a/b/a/e/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/b/a/e/a;-><init>()V

    throw p1

    .line 247
    :catchall_68
    move-exception p1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw p1

    .line 255
    :catchall_6b
    move-exception p1

    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6b

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 3

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->c(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 201
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 3

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/i;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    .line 191
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->b(ILjava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object p1

    return-object p1
.end method

.method a(IJ)V
    .registers 13

    .line 339
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/a/b/a/e/g$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$2;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method a(ILcom/bytedance/sdk/a/a/e;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 872
    new-instance v5, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v5}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 873
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(J)V

    .line 874
    invoke-interface {p2, v5, v0, v1}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    .line 875
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_35

    .line 876
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/a/b/a/e/g$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$6;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/a/c;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 891
    return-void

    .line 875
    :cond_35
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 11

    .line 323
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/g$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$1;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method a(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 823
    monitor-enter p0

    .line 824
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 825
    sget-object p2, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 826
    monitor-exit p0

    return-void

    .line 828
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/g$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$4;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 845
    return-void

    .line 829
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method a(ILjava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/a/b/a/e/g$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/a/b/a/e/g$5;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 864
    return-void
.end method

.method public a(IZLcom/bytedance/sdk/a/a/c;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 284
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p4, p2, p1, p3, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILcom/bytedance/sdk/a/a/c;I)V

    .line 285
    return-void

    .line 288
    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    if-lez v2, :cond_62

    .line 290
    monitor-enter p0

    .line 292
    :goto_12
    :try_start_12
    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_30

    .line 295
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 296
    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_59
    .catchall {:try_start_12 .. :try_end_30} :catchall_57

    .line 302
    :cond_30
    nop

    .line 304
    :try_start_31
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 305
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/e/j;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 306
    iget-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 307
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_57

    .line 309
    sub-long/2addr p4, v6

    .line 310
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    if-eqz p2, :cond_52

    cmp-long v5, p4, v0

    if-nez v5, :cond_52

    const/4 v5, 0x1

    goto :goto_53

    :cond_52
    move v5, v3

    :goto_53
    invoke-virtual {v4, v5, p1, p3, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILcom/bytedance/sdk/a/a/c;I)V

    .line 311
    goto :goto_d

    .line 307
    :catchall_57
    move-exception p1

    goto :goto_60

    .line 300
    :catch_59
    move-exception p1

    .line 301
    :try_start_5a
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 307
    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_57

    throw p1

    .line 312
    :cond_62
    return-void
.end method

.method a(J)V
    .registers 5

    .line 318
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 319
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 320
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

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v0

    .line 408
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 409
    :try_start_4
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-eqz v1, :cond_b

    .line 410
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    .line 412
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    .line 413
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    .line 414
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 417
    :try_start_11
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;[B)V

    .line 418
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 419
    return-void

    .line 414
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    .line 418
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/g;->s:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 432
    :cond_11
    :goto_11
    nop

    .line 434
    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_18

    .line 437
    move-object p1, v0

    goto :goto_1a

    .line 435
    :catch_18
    move-exception p1

    .line 436
    nop

    .line 439
    :goto_1a
    nop

    .line 440
    nop

    .line 441
    monitor-enter p0

    .line 442
    :try_start_1d
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 443
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/bytedance/sdk/a/b/a/e/i;

    .line 444
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_40

    .line 442
    :cond_3f
    move-object v1, v0

    .line 446
    :goto_40
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v2, :cond_59

    .line 447
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/bytedance/sdk/a/b/a/e/l;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/bytedance/sdk/a/b/a/e/l;

    .line 448
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    move-object v0, v2

    .line 450
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_91

    .line 452
    const/4 v2, 0x0

    if-eqz v1, :cond_6e

    .line 453
    array-length v3, v1

    move v4, v2

    :goto_5f
    if-ge v4, v3, :cond_6e

    aget-object v5, v1, v4

    .line 455
    :try_start_63
    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 458
    goto :goto_6b

    .line 456
    :catch_67
    move-exception v5

    .line 457
    if-eqz p1, :cond_6b

    move-object p1, v5

    .line 453
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 462
    :cond_6e
    if-eqz v0, :cond_7b

    .line 463
    array-length p2, v0

    :goto_71
    if-ge v2, p2, :cond_7b

    aget-object v1, v0, v2

    .line 464
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/l;->c()V

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 470
    :cond_7b
    :try_start_7b
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/a/e/j;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_80} :catch_81

    .line 473
    goto :goto_85

    .line 471
    :catch_81
    move-exception p2

    .line 472
    if-nez p1, :cond_85

    move-object p1, p2

    .line 477
    :cond_85
    :goto_85
    :try_start_85
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g;->o:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8a} :catch_8b

    .line 480
    goto :goto_8d

    .line 478
    :catch_8b
    move-exception p1

    .line 479
    nop

    .line 482
    :goto_8d
    if-nez p1, :cond_90

    .line 483
    return-void

    .line 482
    :cond_90
    throw p1

    .line 450
    :catchall_91
    move-exception p1

    :try_start_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p1
.end method

.method a(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    if-eqz p1, :cond_21

    .line 499
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/j;->a()V

    .line 500
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->b(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 501
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result p1

    .line 502
    const v0, 0xffff

    if-eq p1, v0, :cond_21

    .line 503
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IJ)V

    .line 506
    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->q:Lcom/bytedance/sdk/a/b/a/e/g$c;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tt_pangle_thread_http2_connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 509
    return-void
.end method

.method a(ZIILcom/bytedance/sdk/a/b/a/e/l;)V
    .registers 15

    .line 372
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/bytedance/sdk/a/b/a/e/g$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 373
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/a/b/a/e/g$3;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/bytedance/sdk/a/b/a/e/l;)V

    .line 372
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method declared-synchronized b(I)Lcom/bytedance/sdk/a/b/a/e/i;
    .registers 3

    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/i;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 197
    monitor-exit p0

    return-object p1

    .line 194
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/j;->b()V

    .line 398
    return-void
.end method

.method b(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 336
    return-void
.end method

.method b(ZIILcom/bytedance/sdk/a/b/a/e/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    monitor-enter v0

    .line 387
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lcom/bytedance/sdk/a/b/a/e/l;->a()V

    .line 388
    :cond_8
    iget-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    invoke-virtual {p4, p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZII)V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method declared-synchronized c(I)Lcom/bytedance/sdk/a/b/a/e/l;
    .registers 3

    monitor-enter p0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->u:Ljava/util/Map;

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/a/b/a/e/l;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit p0

    return-object p1

    .line 393
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Z)V

    .line 491
    return-void
.end method

.method c(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 11

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/g$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/e/g$7;-><init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 903
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 428
    return-void
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    .line 527
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 527
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)Z
    .registers 3

    .line 816
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
