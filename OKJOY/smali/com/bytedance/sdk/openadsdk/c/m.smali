.class public Lcom/bytedance/sdk/openadsdk/c/m;
.super Lcom/bytedance/sdk/openadsdk/c/b;
.source "StatsDispatcher4MultiProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/c/b",
        "<",
        "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/m;->b:Z

    .line 18
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/c/m;->b:Z

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 24
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/c/m;->b:Z

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Z)V

    .line 26
    :cond_e
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/c/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/m;->a(Lcom/bytedance/sdk/openadsdk/f/b/c$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/b/c$a;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/b/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/c/m;->b:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;Z)V

    .line 38
    :cond_11
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method
