.class Lcom/ssjj/fnsdk/unity/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/unity/sdk/g;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

.field private final synthetic c:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/g;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/h;->a:Lcom/ssjj/fnsdk/unity/sdk/g;

    iput-object p2, p0, Lcom/ssjj/fnsdk/unity/sdk/h;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iput-object p3, p0, Lcom/ssjj/fnsdk/unity/sdk/h;->c:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/h;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/h;->c:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method
