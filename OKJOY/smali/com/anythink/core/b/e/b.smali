.class public final Lcom/anythink/core/b/e/b;
.super Lcom/anythink/core/b/e/a;


# instance fields
.field G:Landroid/content/Context;

.field H:I

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/anythink/core/b/e/b;->G:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/b;->I:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/b;->J:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/anythink/core/b/e/b;->K:Ljava/util/List;

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/b/e/b;->H:I

    .line 43
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 152
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lcom/anythink/core/b/e/b;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 158
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/e/b;->G:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/e/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 55
    const-string v0, "https://dd.toponad.com/v1/open/da"

    .line 56
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 57
    invoke-virtual {v1}, Lcom/anythink/core/c/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_1e
    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .prologue
    .line 143
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
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/anythink/core/b/e/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/e/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/anythink/core/b/e/b;->I:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anythink/core/b/e/b;->G:Landroid/content/Context;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/anythink/core/b/e/b;->J:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
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
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 107
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_49

    .line 110
    :try_start_6
    const-string v0, "app_id"

    iget-object v2, p0, Lcom/anythink/core/b/e/b;->I:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "nw_ver"

    invoke-static {}, Lcom/anythink/core/b/g/c;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/anythink/core/b/e/b;->K:Ljava/util/List;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/anythink/core/b/e/b;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 115
    iget-object v0, p0, Lcom/anythink/core/b/e/b;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 117
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    :catch_48
    move-exception v0

    .line 131
    :cond_49
    :goto_49
    return-object v1

    .line 122
    :cond_4a
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4f} :catch_48

    goto :goto_49
.end method
