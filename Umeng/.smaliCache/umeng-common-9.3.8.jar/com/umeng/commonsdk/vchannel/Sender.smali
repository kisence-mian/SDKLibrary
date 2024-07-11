.class public Lcom/umeng/commonsdk/vchannel/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static INTERVAL_THRESHOLD:J = 0x0L

.field public static final VCHANNEL_VERSION:Ljava/lang/String; = "1.0.0"

.field private static customHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastTriggerTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/umeng/commonsdk/vchannel/Sender;->lastTriggerTime:J

    .line 22
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/umeng/commonsdk/vchannel/Sender;->INTERVAL_THRESHOLD:J

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/vchannel/Sender;->customHeader:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleEvent(Landroid/content/Context;Lcom/umeng/commonsdk/vchannel/b;)V
    .registers 8

    .line 79
    if-nez p0, :cond_a

    .line 80
    const-string p0, "MobclickRT"

    const-string p1, "--->>> Sender:handleEvent: context is null."

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 85
    :cond_a
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_5b

    .line 89
    :try_start_f
    const-string v0, "v_sdk_v"

    const-string v2, "1.0.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    sget-object v0, Lcom/umeng/commonsdk/vchannel/Sender;->customHeader:Ljava/util/Map;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 91
    sget-object v0, Lcom/umeng/commonsdk/vchannel/Sender;->customHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    sget-object v3, Lcom/umeng/commonsdk/vchannel/Sender;->customHeader:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_41

    .line 93
    goto :goto_2a

    .line 96
    :cond_40
    goto :goto_42

    .line 95
    :catchall_41
    move-exception v0

    .line 98
    :goto_42
    :try_start_42
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    const-string v0, "analytics"

    invoke-virtual {p1}, Lcom/umeng/commonsdk/vchannel/b;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    sget-object v3, Lcom/umeng/commonsdk/vchannel/a;->c:Ljava/lang/String;

    const-string v4, "v"

    const-string v5, "1.0.0"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_5b

    .line 105
    goto :goto_5f

    .line 103
    :catchall_5b
    move-exception p1

    .line 104
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 106
    :goto_5f
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    const-string v0, "MobclickRT"

    if-nez p0, :cond_a

    .line 41
    const-string p0, "--->>> Sender: onEvent: context is null."

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 44
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 45
    const-string p0, "--->>> Sender: onEvent: eventID is null or an empty string."

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 48
    :cond_16
    if-nez p2, :cond_1e

    .line 49
    const-string p0, "--->>> Sender: onEvent: map is null."

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 53
    :cond_1e
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 54
    const-string p0, "--->>> Sender: onEvent: Network unavailable."

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 58
    sget-wide v3, Lcom/umeng/commonsdk/vchannel/Sender;->lastTriggerTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/umeng/commonsdk/vchannel/Sender;->INTERVAL_THRESHOLD:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3d

    .line 59
    const-string p0, "--->>> Sender: onEvent: The interval between events is less than 500 milliseconds."

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 63
    :cond_3d
    new-instance v0, Lcom/umeng/commonsdk/vchannel/b;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/vchannel/b;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/vchannel/b;->a(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/vchannel/b;->a(J)V

    .line 66
    invoke-virtual {v0, p2}, Lcom/umeng/commonsdk/vchannel/b;->a(Ljava/util/Map;)V

    .line 68
    const p1, 0x800b

    .line 70
    :try_start_52
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p2

    .line 68
    invoke-static {p0, p1, p2, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_5e

    .line 74
    goto :goto_5f

    .line 72
    :catchall_5e
    move-exception p0

    .line 75
    :goto_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/umeng/commonsdk/vchannel/Sender;->lastTriggerTime:J

    .line 76
    return-void
.end method

.method public static setCustomHeader(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    if-eqz p0, :cond_4

    .line 29
    sput-object p0, Lcom/umeng/commonsdk/vchannel/Sender;->customHeader:Ljava/util/Map;

    .line 31
    :cond_4
    return-void
.end method
