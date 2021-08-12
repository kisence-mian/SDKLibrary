.class public Lcom/anythink/core/common/e/h;
.super Lcom/anythink/core/common/e/a;


# static fields
.field public static final a:Ljava/lang/String; = "sdk_custom"

.field private static final d:Ljava/lang/String;


# instance fields
.field b:J

.field c:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/anythink/core/common/e/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/e/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/anythink/core/common/e/h;->i:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/anythink/core/common/e/h;->l:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/anythink/core/common/e/h;->h:Landroid/content/Context;

    .line 55
    iput-object p4, p0, Lcom/anythink/core/common/e/h;->g:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e/h;->e:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e/h;->f:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/anythink/core/common/e/h;->m:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/anythink/core/common/e/h;->n:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 196
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/anythink/core/common/e/h;->n:Ljava/util/Map;

    if-eqz v1, :cond_19

    .line 198
    const-string v1, "sdk_custom"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/e/h;->n:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    :cond_19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 203
    goto :goto_1f

    .line 201
    :catch_1e
    move-exception v0

    .line 204
    :goto_1f
    iget-object v1, p0, Lcom/anythink/core/common/e/h;->g:Ljava/lang/String;

    iget-wide v2, p0, Lcom/anythink/core/common/e/h;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/anythink/core/common/e/h;->c:J

    sub-long/2addr v6, v8

    const-string v0, "placement"

    invoke-static/range {v0 .. v7}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 205
    return-object p1
.end method

.method public final a(ILcom/anythink/core/common/e/g;)V
    .registers 5

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/e/h;->b:J

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/e/h;->c:J

    .line 66
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/e/a;->a(ILcom/anythink/core/common/e/g;)V

    .line 67
    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 211
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "https://api.anythinktech.com/v1/open/placement"

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 9

    .line 217
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/common/e/h;->g:Ljava/lang/String;

    const-string v0, "placement"

    const/4 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
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

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method protected final d()[B
    .registers 3

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/e/h;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 91
    :catch_b
    move-exception v0

    .line 94
    invoke-virtual {p0}, Lcom/anythink/core/common/e/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 6

    .line 129
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    :try_start_4
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/anythink/core/common/e/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "pl_id"

    iget-object v2, p0, Lcom/anythink/core/common/e/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/anythink/core/common/e/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "nw_ver"

    invoke-static {}, Lcom/anythink/core/common/g/d;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "exclude_myofferid"

    invoke-static {}, Lcom/anythink/core/common/m;->a()Lcom/anythink/core/common/m;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/e/h;->h:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/m;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_31} :catch_c5

    .line 139
    :try_start_31
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->f()Ljava/util/List;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 141
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 142
    const-string v1, "ecpoffer"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4b} :catch_4c
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_c5

    .line 148
    :cond_4b
    goto :goto_4d

    .line 144
    :catch_4c
    move-exception v1

    .line 151
    :goto_4d
    :try_start_4d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->n()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 153
    const-string v2, "sy_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_60
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->o()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_6c} :catch_c5

    const-string v3, "bk_id"

    if-nez v2, :cond_74

    .line 158
    :try_start_70
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8e

    .line 160
    :cond_74
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->h(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :goto_8e
    iget-object v1, p0, Lcom/anythink/core/common/e/h;->n:Ljava/util/Map;

    if-eqz v1, :cond_c4

    .line 166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    iget-object v2, p0, Lcom/anythink/core/common/e/h;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lcom/anythink/core/common/e/h;->n:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_bc

    .line 170
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_bc
    goto :goto_a1

    .line 173
    :cond_bd
    iput-object v1, p0, Lcom/anythink/core/common/e/h;->o:Lorg/json/JSONObject;

    .line 174
    const-string v2, "custom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_c4} :catch_c5

    .line 180
    :cond_c4
    goto :goto_c6

    .line 176
    :catch_c5
    move-exception v1

    .line 181
    :goto_c6
    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/anythink/core/common/e/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/e/h;->h:Landroid/content/Context;

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/anythink/core/common/e/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 124
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

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final m()Lorg/json/JSONObject;
    .registers 2

    .line 186
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 187
    return-object v0
.end method
