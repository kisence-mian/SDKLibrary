.class public final Lcom/anythink/basead/h/b;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ILcom/anythink/core/common/d/p;Ljava/lang/String;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 36
    :try_start_3
    const-string v0, ""

    .line 37
    packed-switch p1, :pswitch_data_9e

    goto :goto_36

    .line 63
    :pswitch_9
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->I()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 60
    :pswitch_e
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->H()Ljava/lang/String;

    move-result-object v0

    .line 61
    goto :goto_36

    .line 57
    :pswitch_13
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->G()Ljava/lang/String;

    move-result-object v0

    .line 58
    goto :goto_36

    .line 54
    :pswitch_18
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->F()Ljava/lang/String;

    move-result-object v0

    .line 55
    goto :goto_36

    .line 51
    :pswitch_1d
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->E()Ljava/lang/String;

    move-result-object v0

    .line 52
    goto :goto_36

    .line 48
    :pswitch_22
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->D()Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_36

    .line 45
    :pswitch_27
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->C()Ljava/lang/String;

    move-result-object v0

    .line 46
    goto :goto_36

    .line 42
    :pswitch_2c
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->B()Ljava/lang/String;

    move-result-object v0

    .line 43
    goto :goto_36

    .line 39
    :pswitch_31
    invoke-virtual {p2}, Lcom/anythink/core/common/d/p;->A()Ljava/lang/String;

    move-result-object v0

    .line 40
    nop

    .line 67
    :goto_36
    invoke-virtual {p2, v0}, Lcom/anythink/core/common/d/p;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/h/b;->a:Ljava/lang/String;

    .line 71
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_76
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    goto :goto_76

    .line 75
    :cond_90
    iget-object p1, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    const-string p2, "req_id"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_97} :catch_98

    .line 78
    return-void

    .line 77
    :catch_98
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 95
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

    .line 166
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 14

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/anythink/basead/h/b;->c()Ljava/util/Map;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_29

    .line 176
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

    .line 177
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_27

    .line 178
    goto :goto_13

    .line 180
    :catch_27
    move-exception v1

    goto :goto_2a

    .line 182
    :cond_29
    nop

    .line 184
    :goto_2a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    const-string v1, ""

    .line 186
    :goto_39
    invoke-virtual {p0}, Lcom/anythink/basead/h/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {}, Lcom/anythink/core/common/n;->a()Lcom/anythink/core/common/n;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/anythink/core/common/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/basead/h/b;->a:Ljava/lang/String;

    const-string v5, "tk"

    const-string v9, ""

    const-string v10, "1"

    const-string v11, ""

    invoke-static/range {v5 .. v11}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/h/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 157
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 84
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    return-void

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    const-string v1, "scenario"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 90
    return-void

    .line 89
    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
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

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object v0
.end method

.method protected final d()[B
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_1e

    .line 115
    :try_start_4
    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    .line 118
    goto :goto_13

    .line 116
    :catch_12
    move-exception v0

    .line 119
    :goto_13
    iget-object v0, p0, Lcom/anythink/basead/h/b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/h/b;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 121
    :cond_1e
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .line 161
    const-string v0, ""

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 146
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

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method
