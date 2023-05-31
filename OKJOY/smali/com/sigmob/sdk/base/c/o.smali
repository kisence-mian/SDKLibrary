.class Lcom/sigmob/sdk/base/c/o;
.super Lcom/sigmob/volley/toolbox/m;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/c/o;-><init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/sigmob/volley/toolbox/m;-><init>(Lcom/sigmob/volley/toolbox/o;Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/o;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/l;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/volley/toolbox/l;"
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
    sget-object v0, Lcom/sigmob/sdk/base/c/p;->b:Lcom/sigmob/sdk/base/c/p;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/p;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/o;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lcom/sigmob/volley/toolbox/m;->a(Lcom/sigmob/volley/q;Ljava/util/Map;)Lcom/sigmob/volley/toolbox/l;

    move-result-object v0

    return-object v0
.end method
