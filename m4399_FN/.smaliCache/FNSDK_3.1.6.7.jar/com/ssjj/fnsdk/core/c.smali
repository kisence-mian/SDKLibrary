.class Lcom/ssjj/fnsdk/core/c;
.super Lcom/ssjj/fnsdk/core/DownUtil$a;


# instance fields
.field private final synthetic h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic i:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/c;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/DownUtil$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(III)V
    .registers 4

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/c;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v1, "savePath"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/c;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v0, "\u4e0b\u8f7d\u6210\u529f"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_15
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/c;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_a
    return-void
.end method
