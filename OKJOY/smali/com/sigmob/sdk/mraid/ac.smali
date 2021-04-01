.class public Lcom/sigmob/sdk/mraid/ac;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x32

.field static final b:J = 0x2dc6c0L

.field static final c:Lcom/sigmob/sdk/mraid/ae;

.field private static final d:J = 0x2dc6c0L

.field private static final e:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sigmob/sdk/mraid/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    new-instance v0, Lcom/sigmob/sdk/mraid/ae;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/ae;-><init>(Lcom/sigmob/sdk/mraid/ac$1;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/ac;->c:Lcom/sigmob/sdk/mraid/ae;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/mraid/ac;->f:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Long;)Lcom/sigmob/sdk/mraid/ad;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/ad;

    return-object v0
.end method

.method static declared-synchronized a()V
    .registers 6

    const-class v2, Lcom/sigmob/sdk/mraid/ac;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/ad;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/ad;->b()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/ad;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/ad;->c()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/w;->a()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3a

    goto :goto_d

    :catchall_3a
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3d
    :try_start_3d
    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->f:Landroid/os/Handler;

    sget-object v1, Lcom/sigmob/sdk/mraid/ac;->c:Lcom/sigmob/sdk/mraid/ae;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->f:Landroid/os/Handler;

    sget-object v1, Lcom/sigmob/sdk/mraid/ac;->c:Lcom/sigmob/sdk/mraid/ae;

    const-wide/32 v4, 0x2dc6c0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_3a

    :cond_56
    monitor-exit v2

    return-void
.end method

.method static a(Landroid/os/Handler;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/sigmob/sdk/mraid/ac;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Long;Lcom/sigmob/sdk/mraid/p;Lcom/sigmob/sdk/base/views/BaseWebView;Lcom/sigmob/sdk/base/common/w;Lcom/sigmob/sdk/mraid/h;)V
    .registers 7

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sigmob/sdk/mraid/ac;->a()V

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1c

    const-string v0, "Unable to cache web view. Please destroy some via #destroy() and try again."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    new-instance v1, Lcom/sigmob/sdk/mraid/ad;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/sigmob/sdk/mraid/ad;-><init>(Lcom/sigmob/sdk/base/views/BaseWebView;Lcom/sigmob/sdk/base/common/x;Lcom/sigmob/sdk/base/common/w;Lcom/sigmob/sdk/mraid/h;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b
.end method

.method public static b()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->f:Landroid/os/Handler;

    sget-object v1, Lcom/sigmob/sdk/mraid/ac;->c:Lcom/sigmob/sdk/mraid/ae;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static c()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sigmob/sdk/mraid/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/mraid/ac;->e:Ljava/util/Map;

    return-object v0
.end method
