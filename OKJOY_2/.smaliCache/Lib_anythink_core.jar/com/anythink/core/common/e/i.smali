.class public final Lcom/anythink/core/common/e/i;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Lcom/anythink/core/common/d/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/n;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    .line 32
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    iget v0, v0, Lcom/anythink/core/common/d/n;->b:I

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 124
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 130
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    iget-object v0, v0, Lcom/anythink/core/common/d/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 120
    return-void
.end method

.method protected final c()Ljava/util/Map;
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

    .line 50
    iget-object v0, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    iget-object v0, v0, Lcom/anythink/core/common/d/n;->c:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_27

    .line 58
    goto :goto_12

    .line 61
    :cond_26
    goto :goto_28

    .line 59
    :catch_27
    move-exception v0

    .line 63
    :goto_28
    return-object v1
.end method

.method protected final d()[B
    .registers 7

    .line 68
    iget-object v0, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    iget-object v0, v0, Lcom/anythink/core/common/d/n;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    iget-object v0, v0, Lcom/anythink/core/common/d/n;->c:Ljava/lang/String;

    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 69
    :goto_17
    const/4 v3, 0x0

    .line 71
    :try_start_18
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    iget-object v5, v5, Lcom/anythink/core/common/d/n;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_2a

    .line 72
    :try_start_21
    const-string v3, "ofl"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_27

    .line 76
    goto :goto_2f

    .line 75
    :catch_27
    move-exception v1

    move-object v3, v4

    goto :goto_2b

    :catch_2a
    move-exception v1

    :goto_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 78
    :goto_2f
    if-eqz v0, :cond_3f

    .line 79
    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/i;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_3c
    new-array v0, v2, [B

    .line 80
    return-object v0

    .line 82
    :cond_3f
    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_4a
    new-array v0, v2, [B

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Lcom/anythink/core/common/d/n;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/anythink/core/common/e/i;->a:Lcom/anythink/core/common/d/n;

    return-object v0
.end method
