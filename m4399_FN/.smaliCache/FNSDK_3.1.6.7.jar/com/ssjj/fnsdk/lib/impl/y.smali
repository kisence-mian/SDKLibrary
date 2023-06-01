.class Lcom/ssjj/fnsdk/lib/impl/y;
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

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/y;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/y;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iput-object p3, p0, Lcom/ssjj/fnsdk/lib/impl/y;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/y;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_33

    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/y;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-static {v0, p3}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/lib/impl/x;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    move-result-object p3

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    :goto_e
    const-string v0, "checkUpdate"

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p3, :cond_1f

    new-instance p3, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p3}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    :cond_1f
    const-string v0, "_keep_"

    const-string v1, "true"

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/y;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/y;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    iget-object v2, p0, Lcom/ssjj/fnsdk/lib/impl/y;->c:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/lib/impl/x;Ljava/lang/String;I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_33
    return-void
.end method
