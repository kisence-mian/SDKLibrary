.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/b;
.super Ljava/lang/Object;
.source "GeckoConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

.field private final e:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

.field private final f:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

.field private final j:Ljava/lang/Long;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/io/File;

.field private final q:Z


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)V
    .registers 12

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a:Landroid/content/Context;

    .line 44
    if-eqz v0, :cond_11a

    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->g:Ljava/util/List;

    .line 49
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->e(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->f(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j:Ljava/lang/Long;

    .line 53
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->g(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 54
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k:Ljava/lang/String;

    goto :goto_40

    .line 56
    :cond_3a
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->g(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k:Ljava/lang/String;

    .line 58
    :goto_40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->h(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->l:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->j(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->o:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->k(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_66

    .line 63
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v5, "gecko_offline_res_x"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->p:Ljava/io/File;

    goto :goto_6c

    .line 65
    :cond_66
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->k(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->p:Ljava/io/File;

    .line 68
    :goto_6c
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->l(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 73
    if-eqz v1, :cond_10a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 84
    if-eqz v2, :cond_102

    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fa

    .line 92
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->m(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_ab

    .line 93
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 104
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b:Ljava/util/concurrent/Executor;

    .line 105
    goto :goto_b1

    .line 106
    :cond_ab
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->m(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b:Ljava/util/concurrent/Executor;

    .line 108
    :goto_b1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->n(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_d3

    .line 109
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$2;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 120
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->c:Ljava/util/concurrent/Executor;

    .line 121
    goto :goto_d9

    .line 122
    :cond_d3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->n(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->c:Ljava/util/concurrent/Executor;

    .line 124
    :goto_d9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->o(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object v0

    if-nez v0, :cond_e7

    .line 125
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->f:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    goto :goto_ed

    .line 127
    :cond_e7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->o(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->f:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    .line 129
    :goto_ed
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->p(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    .line 133
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->q(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q:Z

    .line 134
    return-void

    .line 89
    :cond_fa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceId key empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appId == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_10a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "access key empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_11a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/Executor;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/Executor;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->f:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/io/File;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->p:Ljava/io/File;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->l:Ljava/lang/String;

    return-object v0
.end method
