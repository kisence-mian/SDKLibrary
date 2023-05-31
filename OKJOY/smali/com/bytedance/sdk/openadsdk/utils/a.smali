.class public Lcom/bytedance/sdk/openadsdk/utils/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_4

    .line 76
    :cond_3
    :goto_3
    return v0

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 24
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 60
    if-eqz p1, :cond_f

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_f
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 43
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 35
    if-eqz p1, :cond_f

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_f
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 56
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-lez v0, :cond_e

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    :cond_e
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    :cond_e
    return-void
.end method
