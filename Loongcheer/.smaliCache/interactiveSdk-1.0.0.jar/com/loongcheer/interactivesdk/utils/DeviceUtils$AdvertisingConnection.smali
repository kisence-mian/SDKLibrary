.class final Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;
.super Ljava/lang/Object;
.source "DeviceUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/interactivesdk/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field retrieved:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->retrieved:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loongcheer/interactivesdk/utils/DeviceUtils$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/loongcheer/interactivesdk/utils/DeviceUtils$1;

    .line 43
    invoke-direct {p0}, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->retrieved:Z

    if-nez v0, :cond_10

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->retrieved:Z

    .line 62
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 60
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/utils/DeviceUtils$AdvertisingConnection;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 52
    goto :goto_a

    .line 50
    :catch_6
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 53
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 56
    return-void
.end method
