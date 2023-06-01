.class Lcom/ssjj/fnsdk/lib/impl/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/d;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/d;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/g;->a:Lcom/ssjj/fnsdk/lib/impl/d;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, 0x4

    const-string v2, "cancel share dialog"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1a
    return-void
.end method

.method public onClickShareTo(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    const-string p2, "shareTo"

    invoke-virtual {v0, p2, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p2, v1, p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_2c
    return-void
.end method

.method public onShowFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_27

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show dialog fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-interface {p1, v1, p2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_27
    return-void
.end method

.method public onShowSucc(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/g;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, 0x2

    const-string v2, "show dialog succ"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_1a
    return-void
.end method
