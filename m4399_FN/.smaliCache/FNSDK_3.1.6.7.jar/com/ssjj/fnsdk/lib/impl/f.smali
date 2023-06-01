.class Lcom/ssjj/fnsdk/lib/impl/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/FNShareListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/d;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/d;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/f;->a:Lcom/ssjj/fnsdk/lib/impl/d;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, -0x2

    const-string v2, "\u5206\u4eab\u53d6\u6d88"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1a
    return-void
.end method

.method public onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V
    .registers 5

    iget-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz p2, :cond_1a

    new-instance p2, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v0, -0x1

    const-string v1, "\u5206\u4eab\u5931\u8d25"

    invoke-interface {p1, v0, v1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1a
    return-void
.end method

.method public onSucceed(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/f;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, 0x1

    const-string v2, "\u5206\u4eab\u6210\u529f"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1a
    return-void
.end method
