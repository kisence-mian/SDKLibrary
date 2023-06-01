.class Lcom/ssjj/fnsdk/lib/impl/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/s;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

.field private final synthetic c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/s;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/t;->a:Lcom/ssjj/fnsdk/lib/impl/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/t;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iput-object p3, p0, Lcom/ssjj/fnsdk/lib/impl/t;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/t;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_c

    const-string v1, "cancel"

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/t;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    const/4 v3, -0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_c
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/t;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_a

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/t;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_a
    return-void
.end method

.method public onSucceed()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/t;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_c

    const-string v1, "succ"

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/t;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_c
    return-void
.end method
