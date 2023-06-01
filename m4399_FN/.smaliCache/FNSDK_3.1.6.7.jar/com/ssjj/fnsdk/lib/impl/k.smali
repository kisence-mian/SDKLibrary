.class Lcom/ssjj/fnsdk/lib/impl/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/i;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/i;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/k;->a:Lcom/ssjj/fnsdk/lib/impl/i;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/lib/impl/k;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/k;->a:Lcom/ssjj/fnsdk/lib/impl/i;

    invoke-static {v0}, Lcom/ssjj/fnsdk/lib/impl/i;->a(Lcom/ssjj/fnsdk/lib/impl/i;)Lcom/ssjj/fnsdk/lib/impl/h;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/lib/impl/h;->a(Lcom/ssjj/fnsdk/lib/impl/h;)Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/k;->c:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    const/4 v3, -0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method
