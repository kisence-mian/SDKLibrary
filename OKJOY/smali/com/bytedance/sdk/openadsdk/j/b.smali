.class public Lcom/bytedance/sdk/openadsdk/j/b;
.super Ljava/lang/Object;
.source "TrackAdUrlImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/j/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/j/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/j/f;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/b;->b:Lcom/bytedance/sdk/openadsdk/j/f;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/j/b;)Lcom/bytedance/sdk/openadsdk/j/f;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->b:Lcom/bytedance/sdk/openadsdk/j/f;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/j/b;Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/j/e;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/r;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/j/e;

    .line 92
    new-instance v2, Lcom/bytedance/sdk/openadsdk/j/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/bytedance/sdk/openadsdk/j/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/j/b;Lcom/bytedance/sdk/openadsdk/j/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/b$1;)V

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/j/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a

    .line 96
    :cond_2b
    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/j/a;
    .registers 1

    .prologue
    .line 223
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/d;->b()Lcom/bytedance/sdk/openadsdk/j/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 83
    :goto_6
    return-void

    .line 70
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/b$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/j/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/j/b;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 63
    :cond_6
    return-void

    .line 55
    :cond_7
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/r;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/e;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v0, p3, v4}, Lcom/bytedance/sdk/openadsdk/j/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 59
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v3, p1, v2}, Lcom/bytedance/sdk/openadsdk/j/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/j/b;Lcom/bytedance/sdk/openadsdk/j/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/b$1;)V

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/b;->a:Landroid/content/Context;

    goto :goto_8
.end method
