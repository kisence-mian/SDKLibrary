.class Lcom/ssjj/fnsdk/lib/impl/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/x;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/x;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/z;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/z;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iput-object p3, p0, Lcom/ssjj/fnsdk/lib/impl/z;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/z;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_1b

    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/z;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-static {v0, p3}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/lib/impl/x;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    move-result-object p3

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    :goto_e
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/z;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/z;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/z;->c:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/lib/impl/x;Ljava/lang/String;I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1b
    return-void
.end method
