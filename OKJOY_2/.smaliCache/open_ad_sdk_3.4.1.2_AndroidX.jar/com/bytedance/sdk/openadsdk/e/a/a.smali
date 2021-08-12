.class public abstract Lcom/bytedance/sdk/openadsdk/e/a/a;
.super Ljava/lang/Object;
.source "AbstractBridge.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/bytedance/sdk/openadsdk/e/a/m;

.field protected c:Lcom/bytedance/sdk/openadsdk/e/a/h;

.field protected d:Landroid/os/Handler;

.field protected e:Ljava/lang/String;

.field protected volatile f:Z

.field g:Lcom/bytedance/sdk/openadsdk/e/a/g;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/e/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->d:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->f:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->h:Ljava/util/Map;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/e/a/a;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/p;
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/p;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/p;
    .registers 10

    .line 226
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 227
    return-object v1

    .line 229
    :cond_6
    const-string v0, "__callback_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v2, "func"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 232
    if-nez v3, :cond_21

    .line 233
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->b:Lcom/bytedance/sdk/openadsdk/e/a/m;

    if-eqz p1, :cond_20

    .line 234
    const/4 v0, 0x3

    invoke-interface {p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    :cond_20
    return-object v1

    .line 239
    :cond_21
    :try_start_21
    const-string v1, "__msg_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    const-string v4, "params"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    const-string v5, "JSSDK"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    const-string v6, "namespace"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    const-string v7, "__iframe_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/e/a/p;->a()Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v7

    .line 245
    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v5

    .line 246
    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/p$a;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/e/a/p$a;->a()Lcom/bytedance/sdk/openadsdk/e/a/p;

    move-result-object p1
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_63} :catch_64

    .line 244
    return-object p1

    .line 253
    :catch_64
    move-exception p1

    .line 254
    const-string v1, "Failed to create call."

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/e/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->b:Lcom/bytedance/sdk/openadsdk/e/a/m;

    if-eqz p1, :cond_72

    .line 256
    const/4 v1, 0x1

    invoke-interface {p1, v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/e/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    :cond_72
    const/4 p1, -0x1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/p;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/e/a/p;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/g;
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 268
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/e/a/g;

    goto :goto_1a

    .line 266
    :cond_18
    :goto_18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->g:Lcom/bytedance/sdk/openadsdk/e/a/g;

    .line 270
    :goto_1a
    return-object p1
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/openadsdk/e/a/j;)Landroid/content/Context;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/e/a/j;Lcom/bytedance/sdk/openadsdk/e/a/u;)V
    .registers 4

    .line 157
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a(Lcom/bytedance/sdk/openadsdk/e/a/j;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->a:Landroid/content/Context;

    .line 158
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/e/a/j;->d:Lcom/bytedance/sdk/openadsdk/e/a/h;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->c:Lcom/bytedance/sdk/openadsdk/e/a/h;

    .line 159
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/e/a/j;->i:Lcom/bytedance/sdk/openadsdk/e/a/m;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->b:Lcom/bytedance/sdk/openadsdk/e/a/m;

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/g;

    invoke-direct {v0, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/e/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/e/a/j;Lcom/bytedance/sdk/openadsdk/e/a/a;Lcom/bytedance/sdk/openadsdk/e/a/u;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->g:Lcom/bytedance/sdk/openadsdk/e/a/g;

    .line 161
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/e/a/j;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->b(Lcom/bytedance/sdk/openadsdk/e/a/j;)V

    .line 163
    return-void
.end method

.method protected final a(Lcom/bytedance/sdk/openadsdk/e/a/p;)V
    .registers 6

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->f:Z

    if-eqz v0, :cond_5

    .line 112
    return-void

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_c

    .line 116
    return-void

    .line 118
    :cond_c
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/e/a/p;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/g;

    move-result-object v1

    .line 119
    const/4 v2, 0x2

    if-nez v1, :cond_61

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received call with unknown namespace, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->b(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->b:Lcom/bytedance/sdk/openadsdk/e/a/m;

    if-eqz v0, :cond_38

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/e/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/e/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    :cond_38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/r;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/e/a/p;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/a/r;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V

    .line 126
    return-void

    .line 129
    :cond_61
    new-instance v3, Lcom/bytedance/sdk/openadsdk/e/a/f;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/e/a/f;-><init>()V

    .line 130
    iput-object v0, v3, Lcom/bytedance/sdk/openadsdk/e/a/f;->b:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->a:Landroid/content/Context;

    iput-object v0, v3, Lcom/bytedance/sdk/openadsdk/e/a/f;->a:Landroid/content/Context;

    .line 132
    iput-object v1, v3, Lcom/bytedance/sdk/openadsdk/e/a/f;->c:Lcom/bytedance/sdk/openadsdk/e/a/g;

    .line 134
    :try_start_6e
    invoke-virtual {v1, p1, v3}, Lcom/bytedance/sdk/openadsdk/e/a/g;->a(Lcom/bytedance/sdk/openadsdk/e/a/p;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lcom/bytedance/sdk/openadsdk/e/a/g$a;

    move-result-object v0

    .line 135
    if-nez v0, :cond_c0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received call but not registered, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->b(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->b:Lcom/bytedance/sdk/openadsdk/e/a/m;

    if-eqz v0, :cond_97

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/e/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/e/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    :cond_97
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/r;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/e/a/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/a/r;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V

    .line 142
    return-void

    .line 144
    :cond_c0
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/e/a/g$a;->a:Z

    if-eqz v1, :cond_c9

    .line 145
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/e/a/g$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V

    .line 147
    :cond_c9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->b:Lcom/bytedance/sdk/openadsdk/e/a/m;

    if-eqz v0, :cond_d6

    .line 148
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/e/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_d6} :catch_d7

    .line 153
    :cond_d6
    goto :goto_f5

    .line 150
    :catch_d7
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call finished with error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V

    .line 154
    :goto_f5
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V
    .registers 3

    .line 97
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->f:Z

    if-eqz v0, :cond_5

    .line 167
    return-void

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->c:Lcom/bytedance/sdk/openadsdk/e/a/h;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/e/a/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending js event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"__msg_type\":\"event\",\"__event_id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"__params\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method protected abstract b(Lcom/bytedance/sdk/openadsdk/e/a/j;)V
.end method

.method final b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V
    .registers 7

    .line 183
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->f:Z

    if-eqz v0, :cond_5

    .line 184
    return-void

    .line 186
    :cond_5
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/e/a/p;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "By passing js callback due to empty callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;)V

    .line 188
    return-void

    .line 190
    :cond_24
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "}"

    if-eqz v0, :cond_34

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 191
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal callback data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/RuntimeException;)V

    .line 193
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking js callback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/e/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"__msg_type\":\"callback\",\"__callback_id\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/e/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"__params\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/p;)V

    .line 199
    return-void
.end method

.method protected invokeMethod(Ljava/lang/String;)V
    .registers 4

    .line 44
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->f:Z

    if-eqz v0, :cond_5

    .line 45
    return-void

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/e/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/e/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
