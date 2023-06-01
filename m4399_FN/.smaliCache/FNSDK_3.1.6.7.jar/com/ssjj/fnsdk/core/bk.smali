.class Lcom/ssjj/fnsdk/core/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bk;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bk;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bk;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->isSucc()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    if-eqz v0, :cond_24

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->fromJson(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bk;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->msg:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_2d

    :cond_24
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bk;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_2d
    return-void
.end method
