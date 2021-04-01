.class public Lcom/bytedance/sdk/openadsdk/d/a;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/c;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private final b:Lcom/bytedance/sdk/openadsdk/d/b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 36
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_4

    .line 95
    :goto_3
    return-object v0

    .line 76
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;-><init>()V

    .line 77
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b(Lorg/json/JSONObject;)V

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 79
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->i(Ljava/lang/String;)V

    .line 82
    :cond_15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v2, :cond_1b

    move-object v0, v1

    .line 83
    goto :goto_3

    .line 86
    :cond_1b
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    goto :goto_3

    .line 91
    :cond_32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    goto :goto_3

    :cond_4d
    move-object v0, v1

    .line 95
    goto :goto_3
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/d/a;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/d/a;-><init>(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/a;)Lcom/bytedance/sdk/openadsdk/d/b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/a$1;

    invoke-direct {v1, p0, p3}, Lcom/bytedance/sdk/openadsdk/d/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;Lorg/json/JSONObject;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V

    .line 273
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/a$2;

    invoke-direct {v1, p0, p3}, Lcom/bytedance/sdk/openadsdk/d/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;)V

    .line 297
    const/4 v1, 0x3

    new-instance v2, Lcom/bytedance/sdk/openadsdk/d/a$3;

    invoke-direct {v2, p0, p5, p1, p2}, Lcom/bytedance/sdk/openadsdk/d/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 340
    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 5

    .prologue
    .line 140
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-nez v0, :cond_b

    .line 151
    :cond_a
    :goto_a
    return-void

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    .line 145
    if-eqz v0, :cond_20

    .line 146
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->h()V

    .line 148
    :cond_20
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/video/b/b;

    if-eqz v0, :cond_a

    .line 149
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/b/b;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/b;->P()V

    goto :goto_a
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;IZ)V
    .registers 12

    .prologue
    .line 111
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz p3, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    if-nez v0, :cond_11

    .line 125
    :cond_10
    :goto_10
    return-void

    .line 115
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    .line 116
    if-nez v0, :cond_10

    .line 119
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-nez v0, :cond_d

    .line 182
    :cond_c
    :goto_c
    return-void

    .line 169
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 171
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :try_start_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    const-string v1, "message"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v1, "status"

    const-string v2, "unsubscribed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v1, "appad"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    const-string v2, "app_ad_event"

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_41} :catch_42

    goto :goto_c

    .line 178
    :catch_42
    move-exception v0

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 45
    if-eqz v0, :cond_a

    .line 46
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_a

    .line 49
    :cond_1c
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 129
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 137
    :cond_4
    :goto_4
    return-void

    .line 132
    :cond_5
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .registers 12

    .prologue
    .line 100
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 108
    :cond_4
    :goto_4
    return-void

    .line 103
    :cond_5
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    invoke-direct {p0, v3, p3}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;IZ)V

    goto :goto_4
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 155
    if-nez p1, :cond_3

    .line 163
    :cond_2
    :goto_2
    return-void

    .line 158
    :cond_3
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    .line 161
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public b()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 54
    if-eqz v0, :cond_a

    .line 55
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_a

    .line 58
    :cond_1c
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 186
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    if-nez v0, :cond_7

    .line 197
    :cond_6
    :goto_6
    return-void

    .line 189
    :cond_7
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_6

    .line 191
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    .line 193
    if-eqz v0, :cond_6

    .line 194
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->g()V

    goto :goto_6
.end method

.method public c()V
    .registers 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/a;->b()V

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 64
    if-eqz v0, :cond_d

    .line 65
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    goto :goto_d

    .line 68
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    return-void
.end method
