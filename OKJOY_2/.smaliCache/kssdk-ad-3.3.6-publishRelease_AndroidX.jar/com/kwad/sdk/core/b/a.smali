.class public final Lcom/kwad/sdk/core/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Lcom/kwad/sdk/utils/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/b/b;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/b/b;->a([B[B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/b/c;->a()Lcom/kwad/sdk/core/b/c$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kwad/sdk/core/b/c$b;->a([B)[B

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    return-object v2

    :catch_25
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/core/b/f;->a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/core/b/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ks-PkgId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Ks-Encoding"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/kwad/sdk/utils/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/b/c;->b()Lcom/kwad/sdk/core/b/c$a;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/b/c$a;->a([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/b/b;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/b/b;->b([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    return-object p1
.end method
