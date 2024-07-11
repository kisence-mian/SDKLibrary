.class public Lcom/bytedance/sdk/openadsdk/c/k;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/c/k$c;,
        Lcom/bytedance/sdk/openadsdk/c/k$b;,
        Lcom/bytedance/sdk/openadsdk/c/k$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/k;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/c/k$c;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/sdk/openadsdk/c/k$b;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k$c;->a()Lcom/bytedance/sdk/openadsdk/c/k$c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/k;)Lcom/bytedance/sdk/openadsdk/c/k$b;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->d:Lcom/bytedance/sdk/openadsdk/c/k$b;

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/c/k;
    .registers 2

    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    if-nez v0, :cond_17

    .line 38
    const-class v0, Lcom/bytedance/sdk/openadsdk/c/k;

    monitor-enter v0

    .line 39
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    if-nez v1, :cond_12

    .line 40
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/k;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/k;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    .line 42
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 45
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/k;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 6

    .line 79
    if-nez p1, :cond_3

    .line 80
    return-void

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/k$b;->b()V

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/k$c;->a:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/k$c;->b:I

    if-le v0, v1, :cond_1e

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a(Z)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->c(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    .line 88
    return-void

    .line 91
    :cond_1e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/k$a;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/c/k$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/k;I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/k;->b:Lcom/bytedance/sdk/openadsdk/c/k$c;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/c/k$c;->a:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/c/k;Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->b(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 3

    .line 109
    if-nez p1, :cond_3

    .line 110
    return-void

    .line 112
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a()Z

    move-result v0

    .line 113
    if-eqz v0, :cond_d

    .line 114
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    goto :goto_15

    .line 117
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a(Z)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/k;->c(Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    .line 121
    :goto_15
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 286
    if-eqz p0, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 289
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(J)V

    .line 290
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p0

    .line 291
    if-nez p0, :cond_17

    .line 292
    return-void

    .line 294
    :cond_17
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/k;->d(Ljava/lang/String;)V

    .line 296
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/lang/String;)V

    .line 297
    return-void

    .line 287
    :cond_22
    :goto_22
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/c/k$b;)V
    .registers 3

    .line 162
    if-nez p1, :cond_3

    .line 163
    return-void

    .line 165
    :cond_3
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 166
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k;->c:Ljava/util/Map;

    invoke-static {p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/c/k$b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;Z)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/k;->d:Lcom/bytedance/sdk/openadsdk/c/k$b;

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/c/k$a;

    const/16 p3, 0x64

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/c/k$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/k;I)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 76
    return-void
.end method
