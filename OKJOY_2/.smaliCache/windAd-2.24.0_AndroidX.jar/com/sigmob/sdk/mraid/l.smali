.class public Lcom/sigmob/sdk/mraid/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/l$b;,
        Lcom/sigmob/sdk/mraid/l$a;
    }
.end annotation


# static fields
.field static final a:Lcom/sigmob/sdk/mraid/l$b;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sigmob/sdk/mraid/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/mraid/l;->b:Ljava/util/Map;

    new-instance v0, Lcom/sigmob/sdk/mraid/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/l$b;-><init>(Lcom/sigmob/sdk/mraid/l$1;)V

    sput-object v0, Lcom/sigmob/sdk/mraid/l;->a:Lcom/sigmob/sdk/mraid/l$b;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/mraid/l;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Long;)Lcom/sigmob/sdk/mraid/l$a;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/mraid/l;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/mraid/l$a;

    return-object p0
.end method

.method static declared-synchronized a()V
    .registers 5

    const-class v0, Lcom/sigmob/sdk/mraid/l;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sigmob/sdk/mraid/l;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/mraid/l$a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/mraid/l$a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/mraid/l$a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/l$a;->b()Lcom/sigmob/sdk/base/common/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/p;->a()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_3a
    sget-object v1, Lcom/sigmob/sdk/mraid/l;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    sget-object v1, Lcom/sigmob/sdk/mraid/l;->c:Landroid/os/Handler;

    sget-object v2, Lcom/sigmob/sdk/mraid/l;->a:Lcom/sigmob/sdk/mraid/l$b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/sigmob/sdk/mraid/l;->c:Landroid/os/Handler;

    const-wide/32 v3, 0x2dc6c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_53

    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v0

    throw v1
.end method
