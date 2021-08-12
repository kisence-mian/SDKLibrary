.class public abstract Lcom/sigmob/sdk/common/e/k;
.super Lcom/sigmob/volley/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sigmob/volley/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/sigmob/volley/o$a;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/common/e/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/sigmob/volley/m;-><init>(ILjava/lang/String;Lcom/sigmob/volley/o$a;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/e/k;->b:Ljava/lang/String;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p2, 0x2710

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/k;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/k;->a(Z)Lcom/sigmob/volley/m;

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/b$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/volley/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/t;
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/volley/m;->b(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/t;

    move-result-object p1

    return-object p1
.end method

.method public b()[B
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/k;->n()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/k;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/e/m;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_32
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    sget-object v2, Lcom/sigmob/sdk/common/e/i;->c:Lcom/sigmob/sdk/common/e/i;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/e/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "token"

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    return-object v0
.end method
