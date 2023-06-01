.class Lcom/ssjj/fnsdk/core/stat/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/n;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/stat/q;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/n;Lcom/ssjj/fnsdk/core/stat/q;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/p;->a:Lcom/ssjj/fnsdk/core/stat/n;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/p;->b:Lcom/ssjj/fnsdk/core/stat/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRequest(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/p;->b:Lcom/ssjj/fnsdk/core/stat/q;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    iget-object v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/p;->b:Lcom/ssjj/fnsdk/core/stat/q;

    const/4 v1, 0x1

    goto :goto_18

    :cond_15
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/p;->b:Lcom/ssjj/fnsdk/core/stat/q;

    const/4 v1, 0x0

    :goto_18
    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/stat/q;->a(Z)V

    return-object p1
.end method
