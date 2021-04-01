.class public final Lcom/mintegral/msdk/reward/a/c$h;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2242
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$h;->b:Ljava/lang/String;

    .line 2244
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 2251
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u5f00\u59cb\u83b7\u53d6 mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2254
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 2255
    if-eqz v0, :cond_54

    .line 2256
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 2257
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 2258
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->d(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)Ljava/lang/String;

    .line 2261
    :cond_54
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->i(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)Ljava/lang/String;

    .line 2263
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6\u5b8c\u6bd5 mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->j(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 2266
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6ttcid\u548cexcludeids\u8d85\u65f6 mIsGetTtcExcIdsTimeout\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2268
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->j(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2269
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->k(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2266
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_bb
    :goto_bb
    return-void

    .line 2273
    :cond_bc
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6ttcid\u548cexcludeids\u6ca1\u6709\u8d85\u65f6 mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2275
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->j(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2276
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->k(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2273
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->l(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/c$i;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 2279
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "=====getTtcRunnable \u5220\u9664 \u83b7\u53d6ttcid\u7684\u8d85\u65f6\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->l(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/c$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2282
    :cond_104
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->m(Lcom/mintegral/msdk/reward/a/c;)Z

    .line 2283
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u7ed9handler\u53d1\u9001\u6d88\u606f mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2284
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2283
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 2286
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2287
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$h;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2288
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2289
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$h;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_155} :catch_157

    goto/16 :goto_bb

    .line 2293
    :catch_157
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_bb
.end method
