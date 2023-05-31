.class Lcom/bytedance/sdk/openadsdk/c/k$b;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 146
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->e:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/c/k$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/c/k$b;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/k$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/k$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/c/k$b;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    return-object p0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 161
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 167
    :cond_c
    const-string v0, "materialMeta or eventTag is null, pls check"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)V

    .line 173
    :goto_11
    return-void

    .line 171
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "dpl_success"

    .line 172
    :goto_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/k$b;->e:Ljava/util/Map;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_11

    .line 171
    :cond_2a
    const-string v0, "dpl_failed"

    goto :goto_1c
.end method
