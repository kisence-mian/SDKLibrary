.class public final Lcom/anythink/basead/h/d;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:[Ljava/lang/String;

.field i:I


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/i;II[Ljava/lang/String;)V
    .registers 6

    .line 42
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/basead/h/d;->a:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/basead/h/d;->b:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/basead/h/d;->c:Ljava/lang/String;

    .line 47
    iget v0, p1, Lcom/anythink/core/common/d/i;->e:I

    iput v0, p0, Lcom/anythink/basead/h/d;->i:I

    .line 48
    iput p2, p0, Lcom/anythink/basead/h/d;->f:I

    .line 49
    iput p3, p0, Lcom/anythink/basead/h/d;->g:I

    .line 50
    iput-object p4, p0, Lcom/anythink/basead/h/d;->h:[Ljava/lang/String;

    .line 52
    iget p2, p1, Lcom/anythink/core/common/d/i;->h:I

    iput p2, p0, Lcom/anythink/basead/h/d;->d:I

    .line 53
    iget p1, p1, Lcom/anythink/core/common/d/i;->i:I

    iput p1, p0, Lcom/anythink/basead/h/d;->e:I

    .line 54
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 58
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

    .line 146
    return-object p1
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 7

    .line 151
    const-string v0, "4001"

    const-string v1, ""

    if-nez p2, :cond_10

    .line 152
    invoke-static {v0, v1, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string p2, "Return Empty Ad."

    invoke-virtual {p0, p2, p1}, Lcom/anythink/basead/h/d;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 153
    return-void

    .line 156
    :cond_10
    :try_start_10
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/anythink/basead/h/d;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_3a

    .line 159
    return-void

    .line 164
    :cond_35
    nop

    .line 165
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/e/a;->a(ILjava/lang/Object;)V

    .line 166
    return-void

    .line 161
    :catchall_3a
    move-exception p1

    .line 162
    if-eqz p2, :cond_42

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_46
    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4f

    :cond_4d
    const-string p2, "Online Api Service Error."

    :goto_4f
    invoke-static {v0, v1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/h/d;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 163
    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 171
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 3

    .line 63
    invoke-static {}, Lcom/anythink/core/common/a/b;->a()Lcom/anythink/core/common/a/b;

    .line 1065
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_31

    .line 1071
    :cond_2c
    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0

    .line 1068
    :cond_31
    :goto_31
    const-string v0, "https://adx.anythinktech.com/openapi/req"

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 206
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

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v0
.end method

.method protected final d()[B
    .registers 3

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/h/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 78
    :catch_b
    move-exception v0

    .line 81
    invoke-virtual {p0}, Lcom/anythink/basead/h/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 5

    .line 86
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    :try_start_4
    const-string v1, "app_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v1, "pl_id"

    iget-object v2, p0, Lcom/anythink/basead/h/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "session_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/h/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "t_g_id"

    iget v2, p0, Lcom/anythink/basead/h/d;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v1, "gro_id"

    iget v2, p0, Lcom/anythink/basead/h/d;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->n()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 97
    const-string v2, "sy_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_48
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->o()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_77

    const-string v3, "bk_id"

    if-nez v2, :cond_5c

    .line 102
    :try_start_58
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_78

    .line 104
    :cond_5c
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->h(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_76} :catch_77

    .line 110
    goto :goto_78

    .line 108
    :catch_77
    move-exception v1

    .line 111
    :goto_78
    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 7

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/anythink/basead/h/d;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/anythink/basead/h/d;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v3, "p"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "p2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/anythink/basead/h/d;->a:Ljava/lang/String;

    const-string v2, "request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/anythink/basead/h/d;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_source_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget v1, p0, Lcom/anythink/basead/h/d;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_num"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/anythink/basead/h/d;->h:[Ljava/lang/String;

    if-eqz v1, :cond_67

    array-length v1, v1

    if-lez v1, :cond_67

    .line 126
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/anythink/basead/h/d;->h:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_58
    if-ge v4, v3, :cond_62

    aget-object v5, v2, v4

    .line 128
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 130
    :cond_62
    const-string v2, "exclude_offers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_67
    iget v1, p0, Lcom/anythink/basead/h/d;->f:I

    if-lez v1, :cond_83

    iget v2, p0, Lcom/anythink/basead/h/d;->g:I

    if-lez v2, :cond_83

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget v1, p0, Lcom/anythink/basead/h/d;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 140
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 195
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

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method
