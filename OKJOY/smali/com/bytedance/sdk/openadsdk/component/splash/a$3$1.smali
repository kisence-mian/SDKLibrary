.class Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic c:Z

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$3;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;Z)V
    .registers 5

    .prologue
    .line 762
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 793
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 794
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u56fe\u7247\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "splashLoad"

    const-string v1, "\u56fe\u7247\u6570\u636e\u9884\u52a0\u8f7d\u5931\u8d25...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-eqz v0, :cond_29

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 800
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 801
    return-void
.end method

.method public a([B)V
    .registers 14
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 768
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 771
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-nez v0, :cond_27

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v1, "splash_ad"

    const-string v3, "download_creative_duration"

    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 772
    invoke-static {v0, v1, v3, v8, v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;J)V

    .line 776
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    .line 779
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u56fe\u7247\u6570\u636e\u52a0\u8f7d\u7684\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v0, "splashLoad"

    const-string v1, "\u9884\u52a0\u8f7d\u6210\u529f\uff0c\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730----10"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v1, v3, v4, p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    .line 783
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-eqz v0, :cond_67

    .line 784
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 786
    :cond_67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 787
    return-void
.end method
