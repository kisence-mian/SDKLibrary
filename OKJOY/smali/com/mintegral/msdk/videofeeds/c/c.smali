.class public final Lcom/mintegral/msdk/videofeeds/c/c;
.super Ljava/lang/Object;
.source "MTGShowVFInnerListener.java"

# interfaces
.implements Lcom/mintegral/msdk/videofeeds/c/d;


# instance fields
.field private a:Lcom/mintegral/msdk/out/VideoFeedsListener;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/out/VideoFeedsListener;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    .line 30
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/c/c;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private c()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 67
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/c/c;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 74
    :cond_12
    :goto_12
    return-object v0

    .line 71
    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onAdClicked()V

    .line 45
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onShowFail(Ljava/lang/String;)V

    .line 38
    :cond_9
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_18

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/c/c;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 52
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/c/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    :cond_13
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/c;->a:Lcom/mintegral/msdk/out/VideoFeedsListener;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onAdShowSuccess(I)V

    .line 56
    :cond_18
    return-void
.end method
