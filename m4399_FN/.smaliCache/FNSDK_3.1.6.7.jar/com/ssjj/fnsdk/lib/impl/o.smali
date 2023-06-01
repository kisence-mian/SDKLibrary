.class Lcom/ssjj/fnsdk/lib/impl/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/h;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/o;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/o;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/o;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "cancel exit"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onExit()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/o;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "exit app"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method
