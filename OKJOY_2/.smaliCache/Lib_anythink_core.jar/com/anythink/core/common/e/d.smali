.class public Lcom/anythink/core/common/e/d;
.super Lcom/anythink/core/common/e/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:J

.field b:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/anythink/core/common/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/e/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/anythink/core/common/e/d;->d:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/anythink/core/common/e/d;->e:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/anythink/core/common/e/d;->f:Landroid/content/Context;

    .line 51
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-wide v2, p0, Lcom/anythink/core/common/e/d;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/anythink/core/common/e/d;->b:J

    sub-long v6, v0, v6

    const-string v0, "app"

    const/4 v1, 0x0

    invoke-static/range {v0 .. v7}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 160
    return-object p1
.end method

.method public final a(ILcom/anythink/core/common/e/g;)V
    .registers 5

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/e/d;->a:J

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/e/d;->b:J

    .line 57
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/e/a;->a(ILcom/anythink/core/common/e/g;)V

    .line 58
    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 166
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "https://api.anythinktech.com/v1/open/app"

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 9

    .line 170
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    const-string v0, "app"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
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

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method protected final d()[B
    .registers 3

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/e/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 82
    :catch_b
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lcom/anythink/core/common/e/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 5

    .line 122
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    :try_start_4
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/anythink/core/common/e/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v1, "nw_ver"

    invoke-static {}, Lcom/anythink/core/common/g/d;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->n()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 130
    const-string v2, "sy_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_27
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->o()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_33} :catch_56

    const-string v3, "bk_id"

    if-nez v2, :cond_3b

    .line 135
    :try_start_37
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_57

    .line 137
    :cond_3b
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->h(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_55} :catch_56

    .line 145
    goto :goto_57

    .line 141
    :catch_56
    move-exception v1

    .line 146
    :goto_57
    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/anythink/core/common/e/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/anythink/core/common/e/d;->f:Landroid/content/Context;

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/anythink/core/common/e/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 110
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

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final m()Lorg/json/JSONObject;
    .registers 2

    .line 151
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 152
    return-object v0
.end method
