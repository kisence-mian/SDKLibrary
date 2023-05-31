.class Lcom/bytedance/sdk/openadsdk/component/splash/a$3;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;)V
    .registers 2

    .prologue
    .line 729
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 732
    const-string v0, "splashLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u7269\u6599\u9884\u52a0\u8f7d\u5931\u8d25...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "SplashAdCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 735
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 739
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 740
    const-string v0, "splashLoad"

    const-string v1, "\u5e7f\u544a\u7269\u6599\u9884\u52a0\u8f7d\u6210\u529f...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 744
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 747
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    move v2, v1

    .line 749
    :goto_26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->D()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    .line 750
    if-nez v1, :cond_36

    .line 751
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 754
    :cond_36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 755
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v1

    .line 756
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    .line 759
    if-eqz v2, :cond_4a

    const/4 v3, 0x2

    :cond_4a
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    .line 761
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    .line 762
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;

    invoke-direct {v5, p0, p1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$3;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;Z)V

    invoke-static {v3, v4, v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/n$a;)V

    .line 807
    :cond_64
    :goto_64
    return-void

    :cond_65
    move v2, v3

    .line 747
    goto :goto_26

    .line 805
    :cond_67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_64
.end method
