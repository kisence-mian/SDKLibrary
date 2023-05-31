.class public final Lcom/mintegral/msdk/videofeeds/a/a$a;
.super Ljava/lang/Object;
.source "VideofeedsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/videofeeds/a/a;)V
    .registers 2

    .prologue
    .line 995
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1002
    :try_start_0
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u5f00\u59cb\u83b7\u53d6 mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->b(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->f(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1005
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->f(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 1006
    if-eqz v0, :cond_54

    .line 1007
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 1009
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->e(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/videofeeds/a/a;->b(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1012
    :cond_54
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {}, Lcom/mintegral/msdk/videofeeds/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/a/a;->c(Lcom/mintegral/msdk/videofeeds/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6\u5b8c\u6bd5 mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->b(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->g(Lcom/mintegral/msdk/videofeeds/a/a;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1017
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6ttcid\u548cexcludeids\u8d85\u65f6 mIsGetTtcExcIdsTimeout\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 1019
    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->g(Lcom/mintegral/msdk/videofeeds/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 1020
    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->h(Lcom/mintegral/msdk/videofeeds/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_b9
    :goto_b9
    return-void

    .line 1024
    :cond_ba
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u83b7\u53d6ttcid\u548cexcludeids\u6ca1\u6709\u8d85\u65f6 mIsGetTtcExcIdsTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 1026
    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->g(Lcom/mintegral/msdk/videofeeds/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsGetTtcExcIdsSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 1027
    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->h(Lcom/mintegral/msdk/videofeeds/a/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->i(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 1030
    const-string v0, "VideofeedsAdapter"

    const-string v1, "=====getTtcRunnable \u5220\u9664 \u83b7\u53d6ttcid\u7684\u8d85\u65f6\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->j(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/a/a;->i(Lcom/mintegral/msdk/videofeeds/a/a;)Lcom/mintegral/msdk/videofeeds/a/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1033
    :cond_102
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->k(Lcom/mintegral/msdk/videofeeds/a/a;)Z

    .line 1034
    const-string v0, "VideofeedsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=====getTtcRunnable \u7ed9handler\u53d1\u9001\u6d88\u606f mTtcIds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    .line 1035
    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mExcludes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/a/a;->b(Lcom/mintegral/msdk/videofeeds/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->j(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 1037
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/a/a$a;->a:Lcom/mintegral/msdk/videofeeds/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->j(Lcom/mintegral/msdk/videofeeds/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_143} :catch_145

    goto/16 :goto_b9

    .line 1040
    :catch_145
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b9
.end method
