.class public abstract Lcom/anythink/core/b/d;
.super Ljava/lang/Object;


# instance fields
.field protected l:Lcom/anythink/core/common/d/a;

.field protected m:Z


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/a;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/anythink/core/b/d;->l:Lcom/anythink/core/common/d/a;

    .line 29
    return-void
.end method

.method protected static a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 44
    :try_start_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 45
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v3, "network_firm_id"

    iget v4, v1, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v3, "ad_source_id"

    iget-object v4, v1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v3, "content"

    iget-object v4, v1, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-wide v3, v1, Lcom/anythink/core/c/c$b;->m:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3e

    .line 51
    const-string v3, "price"

    iget-wide v4, v1, Lcom/anythink/core/c/c$b;->m:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    :cond_3e
    iget-object v3, v1, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 54
    const-string v3, "error"

    iget-object v1, v1, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_4d
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_52

    .line 57
    goto :goto_9

    .line 60
    :cond_51
    goto :goto_53

    .line 58
    :catch_52
    move-exception p0

    .line 62
    :goto_53
    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/anythink/core/b/b/a;)V
.end method

.method protected abstract a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V
.end method

.method protected a(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/anythink/core/b/d;->m:Z

    .line 33
    return-void
.end method
