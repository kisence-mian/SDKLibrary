.class Lcom/ssjj/fnsdk/core/listener/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    const-string v0, "eventName"

    invoke-virtual {p2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/listener/a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v0, v1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
