.class public Lcom/bytedance/sdk/openadsdk/d/a;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/d/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private final b:Lcom/bytedance/sdk/openadsdk/d/b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    .line 38
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 39
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 5

    .line 75
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 76
    return-object v0

    .line 78
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 79
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lorg/json/JSONObject;)V

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 81
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->m(Ljava/lang/String;)V

    .line 84
    :cond_15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_1a

    .line 85
    return-object v1

    .line 88
    :cond_1a
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p1

    .line 93
    :cond_31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p1

    .line 97
    :cond_4c
    return-object v1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/d/a;
    .registers 3

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/d/a;-><init>(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/a;)Lcom/bytedance/sdk/openadsdk/d/b;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
    .registers 7

    .line 270
    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    move-result-object p4

    .line 271
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/a$2;

    invoke-direct {v0, p0, p3}, Lcom/bytedance/sdk/openadsdk/d/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;Lorg/json/JSONObject;)V

    invoke-interface {p4, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 332
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/a$3;

    invoke-direct {v0, p0, p3}, Lcom/bytedance/sdk/openadsdk/d/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;Lorg/json/JSONObject;)V

    invoke-interface {p4, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;)V

    .line 356
    new-instance p3, Lcom/bytedance/sdk/openadsdk/d/a$4;

    invoke-direct {p3, p0, p5, p1, p2}, Lcom/bytedance/sdk/openadsdk/d/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    const/4 p1, 0x3

    invoke-interface {p4, p1, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 399
    return-object p4
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 5

    .line 157
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_36

    .line 160
    :cond_b
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    .line 163
    if-eqz p2, :cond_2c

    .line 164
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->g()V

    .line 165
    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/a$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/d/a;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 207
    :cond_2c
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    if-eqz p2, :cond_35

    .line 208
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->W()V

    .line 210
    :cond_35
    return-void

    .line 158
    :cond_36
    :goto_36
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;IZ)V
    .registers 13

    .line 113
    if-eqz p1, :cond_46

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_46

    if-eqz p3, :cond_46

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    if-nez v0, :cond_11

    goto :goto_46

    .line 117
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    .line 118
    if-eqz v0, :cond_24

    .line 119
    return-void

    .line 121
    :cond_24
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 123
    return-void

    .line 125
    :cond_2f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    move-result-object p1

    .line 126
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void

    .line 115
    :cond_46
    :goto_46
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    if-eqz v0, :cond_47

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 228
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :try_start_22
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    const-string v0, "message"

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v0, "status"

    const-string v1, "unsubscribed"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v0, "appad"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    const-string v0, "app_ad_event"

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_41} :catch_42

    .line 239
    goto :goto_46

    .line 237
    :catch_42
    move-exception p1

    .line 238
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 241
    :cond_46
    :goto_46
    return-void

    .line 226
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 48
    if-eqz v1, :cond_1b

    .line 49
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 51
    :cond_1b
    goto :goto_a

    .line 52
    :cond_1c
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    .line 131
    if-eqz p1, :cond_16

    if-nez p2, :cond_5

    goto :goto_16

    .line 134
    :cond_5
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 135
    if-eqz p2, :cond_15

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 140
    :cond_15
    return-void

    .line 132
    :cond_16
    :goto_16
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .registers 13

    .line 102
    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    .line 105
    :cond_5
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_18

    .line 107
    invoke-direct {p0, v4, p3}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v3

    .line 108
    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;IZ)V

    .line 110
    :cond_18
    return-void

    .line 103
    :cond_19
    :goto_19
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .line 214
    if-nez p1, :cond_3

    .line 215
    return-void

    .line 217
    :cond_3
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 218
    if-eqz p1, :cond_13

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V

    .line 222
    :cond_13
    return-void
.end method

.method public b()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 57
    if-eqz v1, :cond_1b

    .line 58
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 60
    :cond_1b
    goto :goto_a

    .line 61
    :cond_1c
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 3

    .line 245
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lcom/bytedance/sdk/openadsdk/d/b;

    if-nez v0, :cond_7

    goto :goto_2a

    .line 248
    :cond_7
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 249
    if-eqz p1, :cond_29

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;

    .line 252
    if-eqz p1, :cond_29

    .line 253
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;->f()V

    .line 256
    :cond_29
    return-void

    .line 246
    :cond_2a
    :goto_2a
    return-void
.end method

.method public c()V
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/d/a;->b()V

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 67
    if-eqz v1, :cond_1e

    .line 68
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 70
    :cond_1e
    goto :goto_d

    .line 71
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method
