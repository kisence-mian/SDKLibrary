.class public final Lcom/mintegral/msdk/interstitial/a/a$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/interstitial/a/a;)V
    .registers 2

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1008
    :try_start_0
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====\u8d85\u65f6task \u5f00\u59cb\u6267\u884c mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 1009
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->b(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->j(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1012
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d85\u65f6task \u5df2\u7ecf\u6210\u529f\u83b7\u53d6ttcid excludeids mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 1014
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->i(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 1015
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->j(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8d85\u65f6task\u4e0d\u505a\u5904\u7406"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_62
    :goto_62
    return-void

    .line 1018
    :cond_63
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6ttcid excludeids\u8d85\u65f6 mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 1019
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->i(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    .line 1020
    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/a/a;->j(Lcom/mintegral/msdk/interstitial/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->n(Lcom/mintegral/msdk/interstitial/a/a;)Z

    .line 1022
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->l(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 1023
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$b;->a:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->l(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a4} :catch_a5

    goto :goto_62

    .line 1026
    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62
.end method
