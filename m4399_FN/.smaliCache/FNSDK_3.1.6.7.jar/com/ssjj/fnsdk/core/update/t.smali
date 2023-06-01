.class Lcom/ssjj/fnsdk/core/update/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/t;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/t;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    move-result-object v2

    iget v2, v2, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updatetype"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/t;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x7

    invoke-interface {v1, v2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/t;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    move-result-object v2

    iget v2, v2, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updatetype"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tempfile"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "downurl"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/t;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object p1

    const/4 v2, 0x6

    invoke-interface {p1, v2, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method
