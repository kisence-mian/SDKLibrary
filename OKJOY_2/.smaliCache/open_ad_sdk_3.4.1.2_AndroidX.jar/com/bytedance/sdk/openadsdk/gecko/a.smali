.class public Lcom/bytedance/sdk/openadsdk/gecko/a;
.super Ljava/lang/Object;
.source "GeckoHub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/gecko/a$a;
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    const-string v0, "gecko-pangle-lf.snssdk.com"

    const-string v1, "gecko-pangle-hl.snssdk.com"

    const-string v2, "gecko-pangle-lq.snssdk.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/gecko/a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gecko"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->b:Ljava/io/File;

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a()V

    .line 79
    :cond_38
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/gecko/a$1;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/gecko/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/gecko/a;
    .registers 1

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/gecko/a$a;->a()Lcom/bytedance/sdk/openadsdk/gecko/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 142
    if-nez p1, :cond_4

    .line 143
    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_4
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 147
    return-object p1

    .line 150
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 155
    const-string v0, "GeckoHub"

    const/4 v1, 0x0

    if-eqz p1, :cond_91

    if-nez p2, :cond_9

    goto/16 :goto_91

    .line 158
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->c:Ljava/util/Map$Entry;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 160
    :cond_17
    const-string v2, "refresh cache manifest"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "4ab312f7094810afa84659d3dc6cf0fe"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->b:Ljava/io/File;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/manifest.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 164
    const-string p1, "getFileInfoInManifest error null"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object v1

    .line 167
    :cond_50
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v2, p1, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->c:Ljava/util/Map$Entry;

    .line 170
    :cond_5c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->c:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 171
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 173
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 175
    :cond_73
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    if-nez p2, :cond_7a

    .line 177
    return-object v1

    .line 179
    :cond_7a
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 180
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 181
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_88
    .catchall {:try_start_9 .. :try_end_88} :catchall_8a

    return-object p1

    .line 183
    :cond_89
    return-object v1

    .line 184
    :catchall_8a
    move-exception p1

    .line 185
    const-string p2, "getFileInfoInManifest error"

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-object v1

    .line 156
    :cond_91
    :goto_91
    return-object v1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 211
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1f

    .line 212
    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_1f
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .registers 5

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->G()[Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeckoLog:get gecko hosts from settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_17

    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    array-length v2, v0

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeckoHub"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-nez v0, :cond_29

    .line 85
    sget-object v0, Lcom/bytedance/sdk/openadsdk/gecko/a;->a:[Ljava/lang/String;

    .line 87
    :cond_29
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 88
    aget-object v0, v0, v1

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 90
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/gecko/a;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 91
    sget-object v1, Lcom/bytedance/sdk/openadsdk/gecko/a;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 93
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeckoLog:random host "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 8

    .line 219
    const-string v0, "respHeader"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 220
    return-object v1

    .line 222
    :cond_6
    :try_start_6
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 223
    if-nez p3, :cond_d

    .line 224
    return-object v1

    .line 227
    :cond_d
    const-string v2, "fileName"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    if-nez v2, :cond_16

    .line 229
    return-object v1

    .line 231
    :cond_16
    nop

    .line 232
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 233
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    goto :goto_23

    .line 232
    :cond_22
    move-object p3, v1

    .line 236
    :goto_23
    if-nez p3, :cond_26

    .line 237
    return-object v1

    .line 239
    :cond_26
    invoke-direct {p0, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/gecko/a;->b(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 240
    if-nez p1, :cond_2d

    .line 241
    return-object v1

    .line 243
    :cond_2d
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    goto :goto_36

    .line 249
    :cond_4a
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/falconx/b/a;->a(Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_4f

    return-object p1

    .line 250
    :catchall_4f
    move-exception p1

    .line 251
    const-string p2, "GeckoHub"

    const-string p3, "findRes error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;)V
    .registers 4

    .line 201
    if-eqz p1, :cond_f

    .line 202
    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;->a()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_f

    .line 204
    :catchall_6
    move-exception p1

    .line 205
    const-string v0, "GeckoHub"

    const-string v1, "releaseGeckoResLoader error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 206
    :cond_f
    :goto_f
    nop

    .line 207
    :goto_10
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 100
    const-string p1, "GeckoHub"

    const-string v0, "no did so don\'t preload"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 105
    :cond_16
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;-><init>(Landroid/content/Context;)V

    const-string v2, "4ab312f7094810afa84659d3dc6cf0fe"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v1

    .line 108
    const-string v3, "1371"

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 110
    const-string v1, "9999999.0.0"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;-><init>()V

    const/16 v3, 0x14

    .line 111
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;

    move-result-object v1

    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a$a;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->b:Ljava/io/File;

    .line 112
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Ljava/io/File;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Z)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/gecko/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/gecko/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/gecko/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/gecko/a;Ljava/util/Map;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    new-instance v5, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;

    invoke-direct {v5, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_a4

    .line 137
    :cond_b9
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;
    .registers 5

    .line 192
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4ab312f7094810afa84659d3dc6cf0fe"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/gecko/a;->b:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object v0

    .line 193
    :catchall_e
    move-exception v0

    .line 194
    const-string v1, "GeckoHub"

    const-string v2, "getGeckoResLoader error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method
