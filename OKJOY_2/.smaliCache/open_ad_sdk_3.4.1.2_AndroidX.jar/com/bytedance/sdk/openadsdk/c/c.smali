.class public Lcom/bytedance/sdk/openadsdk/c/c;
.super Lcom/bytedance/sdk/openadsdk/c/b;
.source "AdEventDispatcher4MultiProcess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/c/b<",
        "Lcom/bytedance/sdk/openadsdk/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->c()V

    .line 24
    :cond_c
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/a;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;)V

    .line 36
    :cond_f
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 2

    .line 12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/c/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/c;->a(Lcom/bytedance/sdk/openadsdk/c/a;)V

    return-void
.end method

.method public b()V
    .registers 1

    .line 29
    return-void
.end method
