.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;
.super Ljava/lang/Object;
.source "LibEventLogger.java"

# interfaces
.implements Lcom/ss/android/a/a/a/e;


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
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->a:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method

.method private a(Lcom/ss/android/a/a/c/d;Z)V
    .registers 5

    .prologue
    .line 343
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->m()Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_c

    if-nez p1, :cond_d

    .line 355
    :cond_c
    :goto_c
    return-void

    .line 347
    :cond_d
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->shouldFilterOpenSdkLog()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->f(Lcom/ss/android/a/a/c/d;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 350
    :cond_19
    if-eqz p2, :cond_1f

    .line 351
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onV3Event(Lcom/ss/android/a/a/c/d;)V

    goto :goto_c

    .line 353
    :cond_1f
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;->onEvent(Lcom/ss/android/a/a/c/d;)V

    goto :goto_c
.end method

.method static synthetic c(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->e(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/ss/android/a/a/c/d;)V
    .registers 5

    .prologue
    .line 60
    if-nez p1, :cond_3

    .line 64
    :goto_2
    return-void

    .line 63
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a(Lcom/ss/android/a/a/c/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    goto :goto_2
.end method

.method private static e(Lcom/ss/android/a/a/c/d;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 320
    if-eqz p0, :cond_1e

    .line 321
    invoke-virtual {p0}, Lcom/ss/android/a/a/c/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_1e

    .line 323
    const-string v1, "ad_extra_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 326
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 333
    :goto_19
    return-object v0

    .line 327
    :catch_1a
    move-exception v0

    .line 328
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 333
    :cond_1e
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private f(Lcom/ss/android/a/a/c/d;)Z
    .registers 5

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->c()Z

    .line 366
    const/4 v0, 0x0

    .line 367
    if-nez p1, :cond_7

    .line 374
    :cond_6
    :goto_6
    return v0

    .line 370
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/d;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 372
    const-string v0, "open_ad_sdk_download_extra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/c/d;)V
    .registers 5
    .param p1    # Lcom/ss/android/a/a/c/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    const-string v0, "LibEventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onV3Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->a(Lcom/ss/android/a/a/c/d;Z)V

    .line 50
    return-void
.end method

.method public b(Lcom/ss/android/a/a/c/d;)V
    .registers 5
    .param p1    # Lcom/ss/android/a/a/c/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    const-string v0, "LibEventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->a(Lcom/ss/android/a/a/c/d;Z)V

    .line 56
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->d(Lcom/ss/android/a/a/c/d;)V

    .line 57
    return-void
.end method
