.class public final Lcom/anythink/core/common/e/a/d;
.super Lcom/anythink/core/common/e/a/b;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field j:Z

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/anythink/core/common/e/a/b;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/e/a/d;->k:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/e/a/d;->j:Z

    .line 45
    iput-object p1, p0, Lcom/anythink/core/common/e/a/d;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/e;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/anythink/core/common/e/a/b;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/e/a/d;->k:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/anythink/core/common/e/a/d;->a:Ljava/util/List;

    .line 38
    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .registers 9

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1092
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    nop

    .line 1101
    invoke-static {}, Lcom/anythink/core/common/e/c;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 103
    nop

    .line 106
    :try_start_f
    const-string v3, "app_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v3, "tcp_tk_da_type"

    iget v4, p0, Lcom/anythink/core/common/e/a/d;->h:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    const-string v3, "tcp_rate"

    iget-object v4, p0, Lcom/anythink/core/common/e/a/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_41} :catch_43

    .line 113
    goto :goto_2e

    .line 119
    :cond_42
    goto :goto_44

    .line 115
    :catch_43
    move-exception v2

    .line 122
    :goto_44
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 126
    iget-object v3, p0, Lcom/anythink/core/common/e/a/d;->a:Ljava/util/List;

    if-eqz v3, :cond_7c

    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/d/e;

    .line 128
    invoke-virtual {v4}, Lcom/anythink/core/common/d/e;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 129
    if-eqz p1, :cond_78

    if-eqz v4, :cond_78

    .line 131
    :try_start_6d
    const-string v5, "ofl"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_73} :catch_74

    .line 134
    goto :goto_78

    .line 133
    :catch_74
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    :cond_78
    :goto_78
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    goto :goto_59

    .line 140
    :cond_7c
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api_ver=1.0&common="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    :try_start_b1
    const-string v3, "common"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string p1, "api_ver"

    const-string v1, "1.0"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string p1, "sign"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c7} :catch_c8

    .line 155
    goto :goto_c9

    .line 151
    :catch_c8
    move-exception p1

    .line 160
    :goto_c9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 78
    iget-boolean v0, p0, Lcom/anythink/core/common/e/a/d;->j:Z

    if-nez v0, :cond_49

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 84
    iget-object p3, p0, Lcom/anythink/core/common/e/a/d;->a:Ljava/util/List;

    if-eqz p3, :cond_25

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_26

    :cond_25
    const/4 p3, 0x0

    :goto_26
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    const-string v0, "tk"

    const-string v6, "1"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    nop

    .line 90
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/anythink/core/common/e/a/d;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 91
    nop

    .line 94
    invoke-static {}, Lcom/anythink/core/common/n;->a()Lcom/anythink/core/common/n;

    move-result-object p2

    const/4 p3, 0x3

    const-string p4, ""

    invoke-virtual {p2, p3, p4, p4, p1}, Lcom/anythink/core/common/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_49
    return-void
.end method

.method public final b()I
    .registers 2

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .registers 2

    .line 55
    const/4 v0, 0x3

    return v0
.end method

.method public final d()[B
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/anythink/core/common/e/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 61
    iget-object v0, p0, Lcom/anythink/core/common/e/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/e/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 64
    :cond_f
    iget-object v0, p0, Lcom/anythink/core/common/e/a/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 65
    invoke-direct {p0, v1}, Lcom/anythink/core/common/e/a/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 67
    :cond_23
    new-array v0, v1, [B

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/anythink/core/common/e/a/d;->j:Z

    return v0
.end method
