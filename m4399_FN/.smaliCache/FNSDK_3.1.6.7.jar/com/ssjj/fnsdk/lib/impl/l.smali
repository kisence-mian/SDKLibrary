.class Lcom/ssjj/fnsdk/lib/impl/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/h;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/l;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/l;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/l;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/l;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-static {v1}, Lcom/ssjj/fnsdk/lib/impl/h;->b(Lcom/ssjj/fnsdk/lib/impl/h;)I

    move-result v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/l;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-static {v2}, Lcom/ssjj/fnsdk/lib/impl/h;->c(Lcom/ssjj/fnsdk/lib/impl/h;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/lib/impl/l;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-static {v3}, Lcom/ssjj/fnsdk/lib/impl/h;->d(Lcom/ssjj/fnsdk/lib/impl/h;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method
