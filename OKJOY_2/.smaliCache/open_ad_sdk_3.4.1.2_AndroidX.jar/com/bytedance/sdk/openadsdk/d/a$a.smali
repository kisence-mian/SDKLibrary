.class public Lcom/bytedance/sdk/openadsdk/d/a$a;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 404
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/d/a$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    const-class v0, Lcom/bytedance/sdk/openadsdk/d/a$a;

    monitor-enter v0

    .line 415
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 416
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2c

    monitor-exit v0

    return-object p0

    .line 418
    :cond_10
    :try_start_10
    sget-object v1, Lcom/bytedance/sdk/openadsdk/d/a$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1b

    .line 419
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_2c

    monitor-exit v0

    return-object p0

    .line 422
    :cond_1b
    :try_start_1b
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 423
    if-nez p0, :cond_2a

    .line 424
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2c

    monitor-exit v0

    return-object p0

    .line 426
    :cond_2a
    monitor-exit v0

    return-object p0

    .line 414
    :catchall_2c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;II)V
    .registers 6

    const-class v0, Lcom/bytedance/sdk/openadsdk/d/a$a;

    monitor-enter v0

    .line 430
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_48

    if-eqz v1, :cond_b

    .line 431
    monitor-exit v0

    return-void

    .line 434
    :cond_b
    :try_start_b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/d/a$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_16

    .line 435
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/d/a$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 437
    :cond_16
    sget-object v1, Lcom/bytedance/sdk/openadsdk/d/a$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 438
    if-nez v1, :cond_2a

    .line 439
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 440
    sget-object v2, Lcom/bytedance/sdk/openadsdk/d/a$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_48

    .line 443
    :cond_2a
    :try_start_2a
    const-string p0, "downloadStatus"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 444
    const-string p0, "downloadProcessRate"

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    const-string p0, "code"

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    const-string p0, "codeMsg"

    const-string p1, "get ad_down_load_id success"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_42
    .catchall {:try_start_2a .. :try_end_41} :catchall_48

    .line 449
    goto :goto_46

    .line 447
    :catch_42
    move-exception p0

    .line 448
    :try_start_43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_48

    .line 451
    :goto_46
    monitor-exit v0

    return-void

    .line 429
    :catchall_48
    move-exception p0

    monitor-exit v0

    throw p0
.end method
