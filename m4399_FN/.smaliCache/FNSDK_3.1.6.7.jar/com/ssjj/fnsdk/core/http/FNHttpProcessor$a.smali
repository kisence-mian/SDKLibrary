.class Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->b:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;->beforeRequest(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V

    :cond_17
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Landroid/content/Context;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->c(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->c(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;->afterRequest(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;

    move-result-object v0

    if-eqz v0, :cond_61

    goto :goto_5c

    :cond_42
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->d(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->d(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListenerType;->afterRequest(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V

    goto :goto_61

    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->a(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V

    :cond_61
    :goto_61
    return-void

    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The url of request can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;->a()V

    return-void
.end method
