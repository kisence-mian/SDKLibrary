.class public Lcom/anythink/core/api/ATSDK;
.super Ljava/lang/Object;


# static fields
.field private static HAS_INIT:Z = false

.field public static final NONPERSONALIZED:I = 0x1

.field public static final PERSONALIZED:I = 0x0

.field public static final UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/core/api/ATSDK;->HAS_INIT:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static addNetworkGDPRInfo(Landroid/content/Context;ILjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    return-void
.end method

.method public static apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 252
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 254
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string v1, "placementId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "adtype"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "api"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v1, "reason"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_40} :catch_41

    .line 265
    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40
.end method

.method public static checkIsEuTraffic(Landroid/content/Context;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .registers 3

    .prologue
    .line 200
    invoke-static {p0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/a/f;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V

    .line 201
    return-void
.end method

.method public static getGDPRDataLevel(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 189
    invoke-static {p0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v0

    return v0
.end method

.method public static getNetworkGDPRInfo(Landroid/content/Context;I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 228
    const-string v0, "UA_5.5.6"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATSDKInitListener;)V

    .line 52
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATSDKInitListener;)V
    .registers 6

    .prologue
    .line 64
    if-nez p0, :cond_11

    .line 65
    if-eqz p3, :cond_9

    .line 66
    :try_start_4
    const-string v0, "init: Context is null!"

    invoke-interface {p3, v0}, Lcom/anythink/core/api/ATSDKInitListener;->onFail(Ljava/lang/String;)V

    .line 68
    :cond_9
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "init: Context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_10
    return-void

    .line 73
    :cond_11
    sget-boolean v0, Lcom/anythink/core/api/ATSDK;->HAS_INIT:Z

    if-nez v0, :cond_1f

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anythink/core/api/ATSDK;->HAS_INIT:Z

    .line 75
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1f
    if-eqz p3, :cond_24

    .line 79
    invoke-interface {p3}, Lcom/anythink/core/api/ATSDKInitListener;->onSuccess()V

    .line 82
    :cond_24
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/api/ATSDK$1;

    invoke-direct {v1}, Lcom/anythink/core/api/ATSDK$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_31
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_30} :catch_33

    goto :goto_10

    .line 97
    :catch_31
    move-exception v0

    goto :goto_10

    .line 98
    :catch_33
    move-exception v0

    goto :goto_10
.end method

.method public static initCustomMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/b/a/e;->a(Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method public static initPlacementCustomMap(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public static integrationChecking(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 247
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/b/a/e;->b(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public static isChinaSDK()Z
    .registers 1

    .prologue
    .line 106
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->b()Lcom/anythink/core/api/IATChinaSDKHandler;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isEUTraffic(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 196
    invoke-static {p0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->d()Z

    move-result v0

    return v0
.end method

.method public static isNetworkLogDebug()Z
    .registers 1

    .prologue
    .line 240
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->j()Z

    move-result v0

    return v0
.end method

.method public static setChannel(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 113
    const-string v0, "^[A-Za-z0-9_]+$"

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_39

    .line 115
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1e

    .line 117
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/b/a/e;->b(Ljava/lang/String;)V

    .line 126
    :goto_1d
    return-void

    .line 119
    :cond_1e
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invail Channel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):Channel contains some characters that are not in the [A-Za-z0-9_]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 123
    :cond_39
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invail Channel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):Channel\'length over 128"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static setGDPRUploadDataLevel(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 161
    if-nez p0, :cond_a

    .line 162
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "setGDPRUploadDataLevel: context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_9
    return-void

    .line 167
    :cond_a
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 168
    :cond_f
    invoke-static {p0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/b/a/f;->a(I)V

    goto :goto_9

    .line 170
    :cond_17
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "GDPR level setting error!!! Level must be PERSONALIZED or NONPERSONALIZED."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static setNetworkLogDebug(Z)V
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/b/a/e;->a(Z)V

    .line 237
    return-void
.end method

.method public static setSubChannel(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 129
    const-string v0, "^[A-Za-z0-9_]+$"

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_39

    .line 131
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 132
    if-eqz v0, :cond_1e

    .line 133
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/String;)V

    .line 141
    :goto_1d
    return-void

    .line 135
    :cond_1e
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invail SubChannel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):SubChannel contains some characters that are not in the [A-Za-z0-9_]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 139
    :cond_39
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invail SubChannel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):SubChannel\'length over 128"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static showGdprAuth(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 209
    invoke-static {p0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V

    .line 210
    return-void
.end method

.method public static showGdprAuth(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .registers 3

    .prologue
    .line 218
    invoke-static {p0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V

    .line 219
    return-void
.end method
