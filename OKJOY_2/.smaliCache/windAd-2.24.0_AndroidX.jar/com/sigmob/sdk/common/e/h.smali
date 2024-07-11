.class Lcom/sigmob/sdk/common/e/h;
.super Lcom/sigmob/volley/toolbox/j;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/sigmob/volley/toolbox/j;-><init>(Lcom/sigmob/volley/toolbox/j$b;Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/e/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/volley/toolbox/i;"
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    :cond_d
    sget-object v0, Lcom/sigmob/sdk/common/e/i;->b:Lcom/sigmob/sdk/common/e/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/e/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/common/e/h;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lcom/sigmob/volley/toolbox/j;->a(Lcom/sigmob/volley/m;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/i;

    move-result-object p1

    return-object p1
.end method
