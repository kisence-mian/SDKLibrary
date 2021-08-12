.class public final Lcom/anythink/core/common/e/a/a;
.super Lcom/anythink/core/common/e/a/b;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/anythink/core/common/e/a/b;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/anythink/core/common/e/a/a;->a:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/e/a/a;->b:I

    .line 36
    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 7

    .line 1092
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    nop

    .line 1101
    invoke-static {}, Lcom/anythink/core/common/e/c;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    nop

    .line 70
    :try_start_a
    const-string v2, "app_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "nw_ver"

    invoke-static {}, Lcom/anythink/core/common/g/d;->i()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 73
    iget-object v3, p0, Lcom/anythink/core/common/e/a/a;->a:Ljava/util/List;

    if-eqz v3, :cond_50

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 74
    iget-object v3, p0, Lcom/anythink/core/common/e/a/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 75
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 76
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    :cond_4f
    goto :goto_35

    .line 81
    :cond_50
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_55} :catch_56

    .line 87
    goto :goto_57

    .line 83
    :catch_56
    move-exception v2

    .line 92
    :goto_57
    :try_start_57
    const-string v2, "tcp_tk_da_type"

    iget v3, p0, Lcom/anythink/core/common/e/a/a;->h:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v2, "tcp_rate"

    iget-object v3, p0, Lcom/anythink/core/common/e/a/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_65} :catch_66

    .line 98
    goto :goto_67

    .line 94
    :catch_66
    move-exception v2

    .line 101
    :goto_67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v3, "api_ver"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "p2"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_c0

    .line 117
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_c0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    goto :goto_a9

    .line 125
    :cond_d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/anythink/core/common/e/a/a;->b:I

    return v0
.end method

.method public final b()I
    .registers 2

    .line 44
    const/4 v0, 0x2

    return v0
.end method

.method public final c()I
    .registers 2

    .line 49
    const/4 v0, 0x3

    return v0
.end method

.method public final d()[B
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/anythink/core/common/e/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method
