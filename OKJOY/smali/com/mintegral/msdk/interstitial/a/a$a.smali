.class public final Lcom/mintegral/msdk/interstitial/a/a$a;
.super Ljava/lang/Object;
.source "IntersAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/interstitial/a/a;)V
    .registers 2

    .prologue
    .line 945
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 952
    :try_start_0
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u5f00\u59cb\u83b7\u53d6 mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->b(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->h(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 955
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->h(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 956
    if-eqz v0, :cond_54

    .line 957
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 959
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->f(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/interstitial/a/a;->b(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 962
    :cond_54
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {}, Lcom/mintegral/msdk/interstitial/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->c(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 964
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6\u5b8c\u6bd5 mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->b(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->i(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 967
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6ttcid\u548cexcludeids\u8d85\u65f6 mIsGetTtcExcIdsTimeout\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 969
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->i(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 970
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->j(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_b9
    :goto_b9
    return-void

    .line 974
    :cond_ba
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6ttcid\u548cexcludeids\u6ca1\u6709\u8d85\u65f6 mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 976
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->i(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 977
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->j(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->k(Lcom/mintegral/msdk/interstitial/a/a;)Lcom/mintegral/msdk/interstitial/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 980
    const-string v0, "IntersAdapter"

    const-string v1, "=====getTtcRunnable \u5220\u9664 \u83b7\u53d6ttcid\u7684\u8d85\u65f6\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->l(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/a/a;->k(Lcom/mintegral/msdk/interstitial/a/a;)Lcom/mintegral/msdk/interstitial/a/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 983
    :cond_102
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->m(Lcom/mintegral/msdk/interstitial/a/a;)Z

    .line 984
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u7ed9handler\u53d1\u9001\u6d88\u606f mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 985
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->b(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->l(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 987
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$a;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->l(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_143} :catch_145

    goto/16 :goto_b9

    .line 990
    :catch_145
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b9
.end method
