.class abstract Lcom/bytedance/sdk/openadsdk/i/a;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/k;


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected volatile a:Lcom/bytedance/sdk/openadsdk/i/a/a;

.field protected final b:Lcom/bytedance/sdk/openadsdk/i/b/c;

.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Lcom/bytedance/sdk/openadsdk/i/d/a;

.field protected volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile g:Ljava/lang/String;

.field protected volatile h:Ljava/lang/String;

.field protected volatile i:Lcom/bytedance/sdk/openadsdk/i/i;

.field protected volatile j:Lcom/bytedance/sdk/openadsdk/i/l;

.field protected volatile k:Z

.field public final l:J

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a/a;Lcom/bytedance/sdk/openadsdk/i/b/c;)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Z

    .line 44
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/i/a;->l:J

    .line 55
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->o:I

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    .line 48
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/a;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->o:I

    return p0
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/openadsdk/i/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/e/a;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e/c;->a()Lcom/bytedance/sdk/openadsdk/i/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/e/c;->b()Lcom/bytedance/sdk/openadsdk/i/e/b;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/e/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/e/f;-><init>()V

    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/i/l$a;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/i/e/f;->b:Ljava/lang/String;

    .line 91
    const/4 v3, 0x0

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/i/e/f;->a:I

    .line 92
    const-string v4, "HEAD"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 93
    const/4 p4, 0x4

    iput p4, v1, Lcom/bytedance/sdk/openadsdk/i/e/f;->a:I

    .line 95
    :cond_24
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/i/a;->f:Ljava/util/List;

    .line 96
    const-string v4, "Range"

    if-eqz p4, :cond_6f

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 97
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_34
    :goto_34
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 98
    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 99
    const-string v7, "Connection"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 100
    const-string v7, "Proxy-Connection"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 101
    const-string v7, "Host"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 102
    goto :goto_34

    .line 104
    :cond_67
    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/i/i$b;->b:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    goto :goto_34

    .line 113
    :cond_6f
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(II)Ljava/lang/String;

    move-result-object p2

    .line 114
    if-eqz p2, :cond_78

    .line 115
    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_78
    sget-boolean p2, Lcom/bytedance/sdk/openadsdk/i/e;->f:Z

    if-eqz p2, :cond_83

    .line 138
    const-string p2, "Cache-Control"

    const-string p3, "no-cache"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object p2

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f;->a()Lcom/bytedance/sdk/openadsdk/i/f;

    move-result-object p3

    .line 143
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/i/a;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    if-nez p4, :cond_91

    const/4 p4, 0x1

    goto :goto_92

    :cond_91
    move p4, v3

    .line 144
    :goto_92
    if-eqz p4, :cond_99

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/d;->a()Lcom/bytedance/sdk/openadsdk/i/c;

    move-result-object v4

    goto :goto_9d

    :cond_99
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/i/f;->b()Lcom/bytedance/sdk/openadsdk/i/c;

    move-result-object v4

    .line 145
    :goto_9d
    if-eqz p4, :cond_a4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/d;->b()Lcom/bytedance/sdk/openadsdk/i/c;

    move-result-object p2

    goto :goto_a8

    :cond_a4
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/i/f;->c()Lcom/bytedance/sdk/openadsdk/i/c;

    move-result-object p2

    .line 147
    :goto_a8
    if-nez v4, :cond_ac

    if-eqz p2, :cond_c0

    .line 148
    :cond_ac
    if-eqz v4, :cond_b6

    .line 149
    iget p3, p1, Lcom/bytedance/sdk/openadsdk/i/l$a;->b:I

    invoke-virtual {v4, p3}, Lcom/bytedance/sdk/openadsdk/i/c;->a(I)J

    move-result-wide p3

    iput-wide p3, v1, Lcom/bytedance/sdk/openadsdk/i/e/f;->c:J

    .line 151
    :cond_b6
    if-eqz p2, :cond_c0

    .line 152
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/i/l$a;->b:I

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/i/c;->a(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/bytedance/sdk/openadsdk/i/e/f;->d:J

    .line 156
    :cond_c0
    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/i/e/f;->e:Ljava/util/Map;

    .line 158
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Z

    if-eqz p1, :cond_ca

    .line 159
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/i/a;->k:Z

    .line 160
    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_ca
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/e/b;->a(Lcom/bytedance/sdk/openadsdk/i/e/f;)Lcom/bytedance/sdk/openadsdk/i/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 60
    return-void
.end method

.method protected a(II)V
    .registers 7

    .line 188
    if-lez p1, :cond_35

    if-gez p2, :cond_5

    goto :goto_35

    .line 191
    :cond_5
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->g:I

    .line 192
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a;->f()I

    move-result v1

    .line 193
    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x2

    if-ne v0, v3, :cond_31

    if-ne v1, v2, :cond_31

    .line 197
    :cond_13
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 198
    const/16 p2, 0x64

    if-le p1, p2, :cond_1f

    .line 199
    move p1, p2

    .line 202
    :cond_1f
    monitor-enter p0

    .line 203
    :try_start_20
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/i/a;->o:I

    if-gt p1, p2, :cond_26

    .line 204
    monitor-exit p0

    return-void

    .line 206
    :cond_26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/a;->o:I

    .line 207
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_32

    .line 210
    new-instance p1, Lcom/bytedance/sdk/openadsdk/i/a$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/i/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->b(Ljava/lang/Runnable;)V

    .line 221
    :cond_31
    return-void

    .line 207
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1

    .line 189
    :cond_35
    :goto_35
    return-void
.end method

.method protected a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 239
    return-void
.end method

.method public b()Z
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected c()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 73
    return-void
.end method

.method public d()Z
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method protected e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/a;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 84
    return-void

    .line 82
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/c/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/i/c/a;-><init>()V

    throw v0
.end method

.method protected f()I
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    goto :goto_f

    .line 171
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 173
    :goto_f
    return v0
.end method

.method protected g()Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method
