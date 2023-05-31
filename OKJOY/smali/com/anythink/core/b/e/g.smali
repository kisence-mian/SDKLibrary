.class public final Lcom/anythink/core/b/e/g;
.super Lcom/anythink/core/b/e/a;


# instance fields
.field G:Lcom/anythink/core/b/c/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/c/f;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    iget v0, v0, Lcom/anythink/core/b/c/f;->b:I

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 113
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    iget-object v0, v0, Lcom/anythink/core/b/c/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 123
    return-void
.end method

.method protected final c()Ljava/util/Map;
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

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    iget-object v0, v0, Lcom/anythink/core/b/c/f;->c:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 48
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_12

    :catch_26
    move-exception v0

    .line 56
    :cond_27
    return-object v1
.end method

.method protected final d()[B
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    iget-object v2, v2, Lcom/anythink/core/b/c/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    iget-object v2, v2, Lcom/anythink/core/b/c/f;->c:Ljava/lang/String;

    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 62
    :goto_14
    const/4 v4, 0x0

    .line 64
    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    iget-object v2, v2, Lcom/anythink/core/b/c/f;->e:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_33

    .line 65
    :try_start_1e
    const-string v2, "ofl"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_4a

    .line 71
    :goto_24
    if-eqz v0, :cond_3c

    .line 72
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/e/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    :goto_30
    return-object v0

    :cond_31
    move v0, v1

    .line 61
    goto :goto_14

    .line 68
    :catch_33
    move-exception v2

    move-object v3, v4

    :goto_35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 72
    :cond_39
    new-array v0, v1, [B

    goto :goto_30

    .line 75
    :cond_3c
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_30

    :cond_47
    new-array v0, v1, [B

    goto :goto_30

    .line 68
    :catch_4a
    move-exception v2

    goto :goto_35
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lcom/anythink/core/b/c/f;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/core/b/e/g;->G:Lcom/anythink/core/b/c/f;

    return-object v0
.end method
