.class Lcom/kwad/sdk/core/request/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/b;->loadRewardVideoAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/request/b$b;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 10
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v3, v0

    :cond_d
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/kwad/sdk/c/g/b/a;->C(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {v6}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v0}, Lcom/kwad/sdk/reward/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v3

    if-nez v3, :cond_37

    move v3, v2

    goto :goto_d

    :cond_37
    new-instance v1, Lcom/kwad/sdk/reward/a;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/reward/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v3, v2

    goto :goto_d

    :cond_42
    if-nez v3, :cond_63

    sget-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v0, v0, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_DATA_EMPTY:Lcom/kwad/sdk/core/request/ErrorCode;

    iget-object v2, v2, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u65e0\u89c6\u9891\u8d44\u6e90)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/request/b$b;->onError(ILjava/lang/String;)V

    :goto_62
    return-void

    :cond_63
    if-nez v1, :cond_6f

    sget-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_CACHE_VIDEO_FAIL:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v1, v0, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/request/b$b;->onError(ILjava/lang/String;)V

    goto :goto_62

    :cond_6f
    invoke-static {}, Lcom/kwad/sdk/core/request/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/request/b$b$b;

    invoke-direct {v1, p0, v4}, Lcom/kwad/sdk/core/request/b$b$b;-><init>(Lcom/kwad/sdk/core/request/b$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_62
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/request/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/request/b$b$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/request/b$b$a;-><init>(Lcom/kwad/sdk/core/request/b$b;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
