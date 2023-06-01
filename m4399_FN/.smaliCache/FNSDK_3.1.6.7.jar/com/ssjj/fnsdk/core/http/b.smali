.class Lcom/ssjj/fnsdk/core/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/http/FNHttpResponse;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/b;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/http/b;->b:Lcom/ssjj/fnsdk/core/http/FNHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/b;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->f(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/b;->b:Lcom/ssjj/fnsdk/core/http/FNHttpResponse;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;->onResponse(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)V

    return-void
.end method
