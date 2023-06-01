.class Lcom/ssjj/fnsdk/core/share/price/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/price/a;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/price/a;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/b;->a:Lcom/ssjj/fnsdk/core/share/price/a;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/b;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    if-nez p1, :cond_18

    const-string p1, "savePath"

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/b;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_25

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p1, p3, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_25

    :cond_18
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/b;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_25

    new-instance p3, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    :goto_25
    return-void
.end method
