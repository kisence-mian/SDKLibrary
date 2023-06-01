.class Lcom/ssjj/fnsdk/lib/impl/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/h;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

.field private final synthetic c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/i;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iput-object p3, p0, Lcom/ssjj/fnsdk/lib/impl/i;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/impl/i;)Lcom/ssjj/fnsdk/lib/impl/h;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    return-object p0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/i;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_14
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-static {v0}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;)Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/k;

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/i;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0, p0, p1, v1}, Lcom/ssjj/fnsdk/lib/impl/k;-><init>(Lcom/ssjj/fnsdk/lib/impl/i;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->post(Ljava/lang/Runnable;J)V

    :cond_28
    return-void
.end method

.method public onSucceed()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    const-string v2, "succ"

    invoke-static {v0, v2}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_16

    iget-object v3, p0, Lcom/ssjj/fnsdk/lib/impl/i;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-interface {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_16
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/i;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-static {v0}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;)Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    move-result-object v0

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/j;

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/i;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0, p0, v1}, Lcom/ssjj/fnsdk/lib/impl/j;-><init>(Lcom/ssjj/fnsdk/lib/impl/i;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->post(Ljava/lang/Runnable;J)V

    :cond_2a
    return-void
.end method
