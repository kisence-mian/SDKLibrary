.class Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/o$a;


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

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Z

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$3;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Z)V
    .registers 5

    .line 773
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 10

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 808
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u56fe\u7247\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "splashLoad"

    const-string v1, "\u56fe\u7247\u6570\u636e\u9884\u52a0\u8f7d\u5931\u8d25...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-eqz v0, :cond_29

    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-wide/16 v6, -0x7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 814
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 815
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 818
    :cond_4e
    return-void
.end method

.method public a([B)V
    .registers 10

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 779
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 782
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-nez v0, :cond_24

    .line 783
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->e(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 783
    const-string v3, "splash_ad"

    const-string v4, "download_creative_duration"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;J)V

    .line 787
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    .line 790
    const-string v0, "SplashAdCacheManager"

    const-string v1, "\u56fe\u7247\u6570\u636e\u52a0\u8f7d\u7684\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v0, "splashLoad"

    const-string v1, "\u9884\u52a0\u8f7d\u6210\u529f\uff0c\u5e7f\u544a\u7f13\u5b58\u5230\u672c\u5730----10"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1, v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 794
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->c:Z

    if-eqz p1, :cond_69

    .line 795
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->f(Lcom/bytedance/sdk/openadsdk/component/splash/a;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 797
    :cond_69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 798
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 799
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;->d:Lcom/bytedance/sdk/openadsdk/component/splash/a$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 801
    :cond_8e
    return-void
.end method
