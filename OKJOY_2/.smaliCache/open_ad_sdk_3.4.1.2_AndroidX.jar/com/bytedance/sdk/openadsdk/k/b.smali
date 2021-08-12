.class public Lcom/bytedance/sdk/openadsdk/k/b;
.super Ljava/lang/Object;
.source "TrackAdUrlImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/k/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/k/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/k/f;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/b;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/b;->b:Lcom/bytedance/sdk/openadsdk/k/f;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/b;)Lcom/bytedance/sdk/openadsdk/k/f;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->b:Lcom/bytedance/sdk/openadsdk/k/f;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/k/b;Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/k/b;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/k/e;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/s;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/k/e;

    .line 93
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/k/b;Lcom/bytedance/sdk/openadsdk/k/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/b$1;)V

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    goto :goto_a

    .line 97
    :cond_27
    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/k/a;
    .registers 1

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/d;->b()Lcom/bytedance/sdk/openadsdk/k/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 69
    return-void

    .line 71
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/b$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/k/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/b;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 54
    return-void

    .line 56
    :cond_7
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/s;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/e;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v0, p3, v3}, Lcom/bytedance/sdk/openadsdk/k/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 60
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/k/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/k/b;Lcom/bytedance/sdk/openadsdk/k/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/k/b$1;)V

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    goto :goto_11

    .line 64
    :cond_57
    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/b;->a:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method
