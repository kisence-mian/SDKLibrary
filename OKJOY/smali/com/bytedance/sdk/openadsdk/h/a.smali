.class abstract Lcom/bytedance/sdk/openadsdk/h/a;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/k;


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected volatile a:Lcom/bytedance/sdk/openadsdk/h/a/a;

.field protected final b:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Lcom/bytedance/sdk/openadsdk/h/d/a;

.field protected volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile g:Ljava/lang/String;

.field protected volatile h:Ljava/lang/String;

.field protected volatile i:Lcom/bytedance/sdk/openadsdk/h/i;

.field protected volatile j:Lcom/bytedance/sdk/openadsdk/h/l;

.field protected volatile k:Z

.field public final l:J

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/a;Lcom/bytedance/sdk/openadsdk/h/b/c;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->k:Z

    .line 44
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->l:J

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    .line 48
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a;)I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    return v0
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/openadsdk/h/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/e/a;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e/c;->a()Lcom/bytedance/sdk/openadsdk/h/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/e/c;->b()Lcom/bytedance/sdk/openadsdk/h/e/b;

    move-result-object v4

    .line 88
    new-instance v5, Lcom/bytedance/sdk/openadsdk/h/e/f;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/h/e/f;-><init>()V

    .line 89
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/bytedance/sdk/openadsdk/h/e/f;->b:Ljava/lang/String;

    .line 91
    iput v3, v5, Lcom/bytedance/sdk/openadsdk/h/e/f;->a:I

    .line 92
    const-string v0, "HEAD"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 93
    const/4 v0, 0x4

    iput v0, v5, Lcom/bytedance/sdk/openadsdk/h/e/f;->a:I

    .line 95
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->f:Ljava/util/List;

    .line 96
    if-eqz v0, :cond_6e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 98
    const-string v2, "Range"

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "Connection"

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "Proxy-Connection"

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "Host"

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 104
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 113
    :cond_6e
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_79

    .line 115
    const-string v1, "Range"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_79
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->f:Z

    if-eqz v0, :cond_84

    .line 138
    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v7

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object v8

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-nez v0, :cond_c1

    const/4 v0, 0x1

    move v2, v0

    .line 144
    :goto_92
    if-eqz v2, :cond_c3

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object v0

    move-object v1, v0

    .line 145
    :goto_99
    if-eqz v2, :cond_c9

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object v0

    .line 147
    :goto_9f
    if-nez v1, :cond_a3

    if-eqz v0, :cond_b7

    .line 148
    :cond_a3
    if-eqz v1, :cond_ad

    .line 149
    iget v2, p1, Lcom/bytedance/sdk/openadsdk/h/l$a;->b:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/c;->a(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    .line 151
    :cond_ad
    if-eqz v0, :cond_b7

    .line 152
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/h/l$a;->b:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/c;->a(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/bytedance/sdk/openadsdk/h/e/f;->d:J

    .line 156
    :cond_b7
    iput-object v6, v5, Lcom/bytedance/sdk/openadsdk/h/e/f;->e:Ljava/util/Map;

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->k:Z

    if-eqz v0, :cond_ce

    .line 159
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/h/a;->k:Z

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_c0
    return-object v0

    :cond_c1
    move v2, v3

    .line 143
    goto :goto_92

    .line 144
    :cond_c3
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/h/f;->b()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_99

    .line 145
    :cond_c9
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/h/f;->c()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object v0

    goto :goto_9f

    .line 162
    :cond_ce
    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/h/e/b;->a(Lcom/bytedance/sdk/openadsdk/h/e/f;)Lcom/bytedance/sdk/openadsdk/h/e/a;

    move-result-object v0

    goto :goto_c0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 60
    return-void
.end method

.method protected a(II)V
    .registers 8

    .prologue
    const/16 v0, 0x64

    const/4 v4, 0x1

    .line 188
    if-lez p1, :cond_7

    if-gez p2, :cond_8

    .line 221
    :cond_7
    :goto_7
    return-void

    .line 191
    :cond_8
    sget v1, Lcom/bytedance/sdk/openadsdk/h/e;->g:I

    .line 192
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->f()I

    move-result v2

    .line 193
    if-eq v1, v4, :cond_15

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    if-ne v2, v4, :cond_7

    .line 197
    :cond_15
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 198
    if-le v1, v0, :cond_34

    .line 202
    :goto_1e
    monitor-enter p0

    .line 203
    :try_start_1f
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    if-gt v0, v1, :cond_28

    .line 204
    monitor-exit p0

    goto :goto_7

    .line 207
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_25

    throw v0

    .line 206
    :cond_28
    :try_start_28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    .line 207
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 210
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_34
    move v0, v1

    goto :goto_1e
.end method

.method protected a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected c()V
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 73
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/a;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/c/a;-><init>()V

    throw v0

    .line 84
    :cond_c
    return-void
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    .line 173
    :goto_a
    return v0

    .line 171
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/b;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected g()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->f()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
