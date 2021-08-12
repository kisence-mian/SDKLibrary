.class public final Lcom/anythink/core/common/e/b;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/anythink/core/common/e/b;->a:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e/b;->c:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e/b;->d:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/anythink/core/common/e/b;->e:Ljava/util/List;

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/e/b;->b:I

    .line 51
    iput p2, p0, Lcom/anythink/core/common/e/b;->f:I

    .line 52
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 189
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 190
    :catch_7
    move-exception p0

    .line 193
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 57
    const/4 v0, 0x1

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

    .line 178
    iget p1, p0, Lcom/anythink/core/common/e/b;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 184
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/e/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 64
    nop

    .line 65
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 66
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->M()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 68
    :cond_1e
    const-string v0, "https://da.anythinktech.com/v1/open/da"

    :goto_20
    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 199
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/anythink/core/common/e/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/b;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 7

    .line 116
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_8f

    .line 119
    :try_start_6
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/anythink/core/common/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "nw_ver"

    invoke-static {}, Lcom/anythink/core/common/g/d;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->g()Ljava/util/Map;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_8e

    .line 124
    if-eqz v1, :cond_57

    :try_start_20
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 125
    if-eqz v1, :cond_57

    .line 126
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 127
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 129
    if-eqz v5, :cond_4e

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_4e
    goto :goto_35

    .line 133
    :cond_4f
    const-string v1, "custom"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_55

    goto :goto_57

    .line 136
    :catchall_55
    move-exception v1

    goto :goto_58

    .line 138
    :cond_57
    :goto_57
    nop

    .line 140
    :goto_58
    :try_start_58
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/anythink/core/common/e/b;->e:Ljava/util/List;

    if-eqz v2, :cond_88

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_88

    .line 142
    iget-object v2, p0, Lcom/anythink/core/common/e/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 144
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    :cond_87
    goto :goto_6d

    .line 149
    :cond_88
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_8d} :catch_8e

    .line 155
    goto :goto_8f

    .line 151
    :catch_8e
    move-exception v1

    .line 158
    :cond_8f
    :goto_8f
    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/anythink/core/common/e/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/anythink/core/common/e/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/anythink/core/common/e/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "1.0"

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

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final m()Lorg/json/JSONObject;
    .registers 4

    .line 163
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_f

    .line 166
    :try_start_6
    const-string v1, "tcp_tk_da_type"

    iget v2, p0, Lcom/anythink/core/common/e/b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    .line 171
    goto :goto_f

    .line 167
    :catch_e
    move-exception v1

    .line 173
    :cond_f
    :goto_f
    return-object v0
.end method
