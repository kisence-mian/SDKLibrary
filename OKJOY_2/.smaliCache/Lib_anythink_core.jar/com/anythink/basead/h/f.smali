.class public final Lcom/anythink/basead/h/f;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;

.field c:I

.field d:Ljava/lang/String;

.field e:Lcom/anythink/core/common/d/u;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/anythink/core/common/d/u;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/core/common/d/u;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 43
    iput p1, p0, Lcom/anythink/basead/h/f;->c:I

    .line 44
    iput-object p2, p0, Lcom/anythink/basead/h/f;->e:Lcom/anythink/core/common/d/u;

    .line 45
    iput-object p4, p0, Lcom/anythink/basead/h/f;->f:Ljava/util/Map;

    .line 46
    iput-object p3, p0, Lcom/anythink/basead/h/f;->d:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 62
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

    .line 149
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 14

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/anythink/basead/h/f;->c()Ljava/util/Map;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_29

    .line 159
    :try_start_b
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_27

    .line 161
    goto :goto_13

    .line 163
    :catch_27
    move-exception v1

    goto :goto_2a

    .line 165
    :cond_29
    nop

    .line 167
    :goto_2a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/anythink/basead/h/f;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    const-string v1, ""

    .line 169
    :goto_39
    invoke-virtual {p0}, Lcom/anythink/basead/h/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {}, Lcom/anythink/core/common/n;->a()Lcom/anythink/core/common/n;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/anythink/core/common/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/basead/h/f;->a:Ljava/lang/String;

    const-string v5, "tk"

    const-string v9, ""

    const-string v10, "1"

    const-string v11, ""

    invoke-static/range {v5 .. v11}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 5

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/h/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/basead/h/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/basead/h/f;->b:Lorg/json/JSONObject;

    .line 71
    iget-object v0, p0, Lcom/anythink/basead/h/f;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    iget-object v3, p0, Lcom/anythink/basead/h/f;->b:Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    .line 76
    goto :goto_1b

    .line 81
    :cond_37
    goto :goto_3c

    .line 80
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_3c
    invoke-static {}, Lcom/anythink/core/common/a/b;->a()Lcom/anythink/core/common/a/b;

    .line 1055
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

    .line 1056
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    goto :goto_6d

    .line 1061
    :cond_68
    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    .line 1058
    :cond_6d
    :goto_6d
    const-string v0, "https://adxtk.anythinktech.com/v1"

    .line 82
    :goto_6f
    iput-object v0, p0, Lcom/anythink/basead/h/f;->a:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 145
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    return-void

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/anythink/basead/h/f;->b:Lorg/json/JSONObject;

    const-string v1, "scenario"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 57
    return-void

    .line 56
    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
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

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/anythink/basead/h/f;->e:Lcom/anythink/core/common/d/u;

    if-eqz v1, :cond_34

    .line 94
    invoke-virtual {v1}, Lcom/anythink/core/common/d/u;->x()Lcom/anythink/core/common/d/v;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_34

    .line 96
    iget v2, p0, Lcom/anythink/basead/h/f;->c:I

    invoke-static {v2, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/j;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 97
    invoke-static {}, Lcom/anythink/core/common/g/d;->j()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 99
    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_34
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/anythink/basead/h/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/h/f;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 134
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

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method
