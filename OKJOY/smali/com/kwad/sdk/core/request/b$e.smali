.class Lcom/kwad/sdk/core/request/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/b;->loadDrawAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/request/b$e;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 6
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lcom/kwad/sdk/d/a;

    invoke-direct {v3, v0}, Lcom/kwad/sdk/d/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

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

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/request/b$e;->onError(ILjava/lang/String;)V

    :goto_52
    return-void

    :cond_53
    invoke-static {}, Lcom/kwad/sdk/core/request/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/kwad/sdk/core/request/b$e$b;

    invoke-direct {v2, p0, v1}, Lcom/kwad/sdk/core/request/b$e$b;-><init>(Lcom/kwad/sdk/core/request/b$e;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_52
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/request/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/request/b$e$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/request/b$e$a;-><init>(Lcom/kwad/sdk/core/request/b$e;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
