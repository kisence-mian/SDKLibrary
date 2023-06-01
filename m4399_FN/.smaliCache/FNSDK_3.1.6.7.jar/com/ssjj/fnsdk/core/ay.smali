.class Lcom/ssjj/fnsdk/core/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ay;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ay;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/ay;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/ay;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/ay;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "orderId"

    const v1, 0xf4241

    :try_start_5
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/ay;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ay;->b:Ljava/lang/String;

    const-string v4, "GET"

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/ay;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v2, v3, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ay;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_5 .. :try_end_2d} :catch_92

    :try_start_2d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ay;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ay;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v0, v3}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onCompleted(Landroid/os/Bundle;)V

    goto :goto_a6

    :cond_66
    const-string v0, "error_code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "error"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/core/SsjjFNException;

    invoke-direct {v3, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ay;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v0, v3}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_7c} :catch_7d
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_2d .. :try_end_7c} :catch_92

    goto :goto_a6

    :catch_7d
    move-exception v0

    :try_start_7e
    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNException;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ay;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ay;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v3, v2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_91
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_7e .. :try_end_91} :catch_92

    goto :goto_a6

    :catch_92
    move-exception v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNException;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ay;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ay;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v1, v2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :goto_a6
    return-void
.end method
