.class public Lcom/anythink/core/b/e/f;
.super Lcom/anythink/core/b/e/a;


# static fields
.field public static final G:Ljava/lang/String; = "sdk_custom"

.field private static final I:Ljava/lang/String;


# instance fields
.field H:J

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Landroid/content/Context;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private R:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/anythink/core/b/e/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/e/f;->I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/anythink/core/b/e/f;->N:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/anythink/core/b/e/f;->O:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/anythink/core/b/e/f;->M:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Lcom/anythink/core/b/e/f;->L:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/f;->J:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/f;->K:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/anythink/core/b/e/f;->P:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/anythink/core/b/e/f;->Q:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 160
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/anythink/core/b/e/f;->Q:Ljava/util/Map;

    if-eqz v2, :cond_19

    .line 162
    const-string v2, "sdk_custom"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/anythink/core/b/e/f;->Q:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_19
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_2c

    move-result-object v0

    move-object v6, v0

    .line 168
    :goto_1e
    const-string v0, "placement"

    iget-object v1, p0, Lcom/anythink/core/b/e/f;->L:Ljava/lang/String;

    iget-wide v2, p0, Lcom/anythink/core/b/e/f;->H:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 169
    return-object v6

    :catch_2c
    move-exception v1

    move-object v6, v0

    goto :goto_1e
.end method

.method public final a(ILcom/anythink/core/b/e/e;)V
    .registers 5

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/e/f;->H:J

    .line 57
    invoke-super {p0, p1, p2}, Lcom/anythink/core/b/e/a;->a(ILcom/anythink/core/b/e/e;)V

    .line 58
    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 8

    .prologue
    .line 181
    const-string v0, "placement"

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/anythink/core/b/e/f;->L:Ljava/lang/String;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "https://aa.toponad.com/v1/open/placement"

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 175
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
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

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/b/e/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 85
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {p0}, Lcom/anythink/core/b/e/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_a
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anythink/core/b/e/f;->N:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/anythink/core/b/e/f;->M:Landroid/content/Context;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/anythink/core/b/e/f;->O:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "1.0"

    return-object v0
.end method

.method protected final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 120
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 122
    :try_start_4
    const-string v0, "app_id"

    iget-object v2, p0, Lcom/anythink/core/b/e/f;->N:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "pl_id"

    iget-object v2, p0, Lcom/anythink/core/b/e/f;->L:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "session_id"

    iget-object v2, p0, Lcom/anythink/core/b/e/f;->K:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "nw_ver"

    invoke-static {}, Lcom/anythink/core/b/g/c;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "exclude_myofferid"

    invoke-static {}, Lcom/anythink/core/b/k;->a()Lcom/anythink/core/b/k;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/e/f;->M:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/k;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "gdpr_cs"

    iget-object v2, p0, Lcom/anythink/core/b/e/f;->M:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object v0, p0, Lcom/anythink/core/b/e/f;->Q:Ljava/util/Map;

    if-eqz v0, :cond_74

    .line 130
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/anythink/core/b/e/f;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57
    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lcom/anythink/core/b/e/f;->Q:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    if-eqz v4, :cond_57

    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_57

    :catch_73
    move-exception v0

    .line 145
    :cond_74
    :goto_74
    return-object v1

    .line 137
    :cond_75
    iput-object v2, p0, Lcom/anythink/core/b/e/f;->R:Lorg/json/JSONObject;

    .line 138
    const-string v0, "custom"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7c} :catch_73

    goto :goto_74
.end method

.method protected final l()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    return-object v0
.end method
