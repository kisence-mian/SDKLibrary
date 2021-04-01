.class public final Lcom/mintegral/msdk/reward/a/c$i;
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
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2309
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$i;->b:Ljava/lang/String;

    .line 2310
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 2316
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====\u8d85\u65f6task \u5f00\u59cb\u6267\u884c mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  RewardMVVideoAdapter.this.mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2317
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2316
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->k(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2320
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d85\u65f6task \u5df2\u7ecf\u6210\u529f\u83b7\u53d6ttcid excludeids mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2322
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->j(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2323
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->k(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8d85\u65f6task\u4e0d\u505a\u5904\u7406"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2320
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :cond_62
    :goto_62
    return-void

    .line 2326
    :cond_63
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6ttcid excludeids\u8d85\u65f6 mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2328
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->j(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 2329
    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->k(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2326
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->n(Lcom/mintegral/msdk/reward/a/c;)Z

    .line 2331
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 2332
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2333
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$i;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2334
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2335
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$i;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b4} :catch_b5

    goto :goto_62

    .line 2338
    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62
.end method
