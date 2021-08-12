.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;
.super Ljava/lang/Object;
.source "LibEventLogger.java"

# interfaces
.implements Lcom/ss/android/a/a/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->a:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method private a(Lcom/ss/android/a/a/c/d;Z)V
    .registers 5

    .line 219
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->m()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_24

    if-nez p1, :cond_d

    goto :goto_24

    .line 223
    :cond_d
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->shouldFilterOpenSdkLog()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->f(Lcom/ss/android/a/a/c/d;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 224
    return-void

    .line 226
    :cond_1a
    if-eqz p2, :cond_20

    .line 227
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onV3Event(Lcom/ss/android/a/a/c/d;)V

    goto :goto_23

    .line 229
    :cond_20
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onEvent(Lcom/ss/android/a/a/c/d;)V

    .line 231
    :goto_23
    return-void

    .line 221
    :cond_24
    :goto_24
    return-void
.end method

.method static synthetic c(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->e(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/ss/android/a/a/c/d;)V
    .registers 3

    .line 59
    if-nez p1, :cond_3

    .line 60
    return-void

    .line 62
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a(Lcom/ss/android/a/a/c/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 63
    return-void
.end method

.method private static e(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;
    .registers 2

    .line 196
    if-eqz p0, :cond_1e

    .line 197
    invoke-virtual {p0}, Lcom/ss/android/a/a/c/d;->d()Lorg/json/JSONObject;

    move-result-object p0

    .line 198
    if-eqz p0, :cond_1e

    .line 199
    const-string v0, "ad_extra_data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 202
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    return-object v0

    .line 203
    :catch_1a
    move-exception p0

    .line 204
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private f(Lcom/ss/android/a/a/c/d;)Z
    .registers 4

    .line 241
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->c()Z

    .line 242
    nop

    .line 243
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 244
    return v0

    .line 246
    :cond_8
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 248
    const-string v0, "open_ad_sdk_download_extra"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 250
    :cond_18
    return v0
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/c/d;)V
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onV3Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LibEventLogger"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->a(Lcom/ss/android/a/a/c/d;Z)V

    .line 49
    return-void
.end method

.method public b(Lcom/ss/android/a/a/c/d;)V
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LibEventLogger"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->a(Lcom/ss/android/a/a/c/d;Z)V

    .line 55
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->d(Lcom/ss/android/a/a/c/d;)V

    .line 56
    return-void
.end method
