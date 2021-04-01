.class abstract Lcom/sigmob/sdk/base/c/s;
.super Lcom/sigmob/volley/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sigmob/volley/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "application/json; charset=UTF-8"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/sigmob/volley/y;)V
    .registers 8

    invoke-static {p1}, Lcom/sigmob/sdk/base/c/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/sigmob/volley/q;-><init>(ILjava/lang/String;Lcom/sigmob/volley/y;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/s;->c:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0x2710

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/s;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/s;->a(Z)Lcom/sigmob/volley/q;

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/ae;
    .registers 3

    invoke-super {p0, p1}, Lcom/sigmob/volley/q;->b(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/ae;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/volley/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/s;->s()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/s;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/c/v;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_f
.end method

.method public d()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ab()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_32
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    sget-object v3, Lcom/sigmob/sdk/base/c/p;->c:Lcom/sigmob/sdk/base/c/p;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/c/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "token"

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    return-object v2

    :cond_58
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3d
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/s;->c:Ljava/lang/String;

    return-object v0
.end method
