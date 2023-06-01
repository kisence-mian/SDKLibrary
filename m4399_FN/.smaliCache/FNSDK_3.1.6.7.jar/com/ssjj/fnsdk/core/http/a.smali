.class Lcom/ssjj/fnsdk/core/http/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/http/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->e(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->b(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpOnStartListener;->onStart(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V

    :cond_17
    new-instance v0, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/http/a;->a:Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/http/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor$a;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/http/FNHttp;->b(Ljava/lang/Runnable;)V

    return-void
.end method
