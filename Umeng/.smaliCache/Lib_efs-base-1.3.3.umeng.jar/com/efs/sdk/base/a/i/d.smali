.class public final Lcom/efs/sdk/base/a/i/d;
.super Lcom/efs/sdk/base/a/i/a;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/efs/sdk/base/a/i/a;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    .line 122
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_29

    .line 124
    return-void

    .line 127
    :cond_29
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->a:Lcom/efs/sdk/base/a/d/a;

    if-eqz v0, :cond_bd

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 127
    if-nez v0, :cond_37

    goto/16 :goto_bd

    .line 131
    :cond_37
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->a:Lcom/efs/sdk/base/a/d/a;

    .line 2083
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 2084
    iget-object v2, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2085
    iget-object v3, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 2086
    iget-object v4, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 2087
    iget-object v5, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 3053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v6

    .line 3211
    iget-object v6, v6, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    .line 2106
    iget-object v6, v6, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    .line 2107
    new-instance v7, Lcom/efs/sdk/base/a/i/b;

    const-string v8, "efs_core"

    const-string v9, "lf_st"

    invoke-direct {v7, v8, v9, v6}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "create_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "cache_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "req_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "err_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "expire_cnt"

    invoke-virtual {v7, v8, v6}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2090
    iget-object v6, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2091
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2092
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2093
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2094
    iget-object v1, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2095
    nop

    .line 131
    invoke-virtual {v0, v7}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 132
    return-void

    .line 128
    :cond_bd
    :goto_bd
    return-void
.end method

.method public final b()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 47
    return-void
.end method

.method public final c()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 54
    return-void
.end method

.method public final d()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 68
    return-void
.end method

.method public final e()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 75
    return-void
.end method
