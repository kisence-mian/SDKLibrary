.class Lcom/kwad/sdk/core/request/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/b;->loadNativeAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/request/b$c;->a:Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;

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

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_9

    new-instance v3, Lcom/kwad/sdk/nativead/a;

    invoke-direct {v3, v0}, Lcom/kwad/sdk/nativead/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    invoke-static {}, Lcom/kwad/sdk/core/request/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/kwad/sdk/core/request/b$c$b;

    invoke-direct {v2, p0, v1}, Lcom/kwad/sdk/core/request/b$c$b;-><init>(Lcom/kwad/sdk/core/request/b$c;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/request/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/request/b$c$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/request/b$c$a;-><init>(Lcom/kwad/sdk/core/request/b$c;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
