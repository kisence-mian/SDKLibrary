.class public Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;
.super Ljava/lang/Object;
.source "SimpleLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static broadcastManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private receiver:Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->broadcastManagerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized getBroadCastManager(Ljava/lang/String;)Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;
    .registers 4
    .param p0, "broadCastName"    # Ljava/lang/String;

    const-class v0, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;

    monitor-enter v0

    .line 12
    :try_start_3
    sget-object v1, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->broadcastManagerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->broadcastManagerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_21

    monitor-exit v0

    return-object v1

    .line 13
    :cond_15
    :try_start_15
    new-instance v1, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;

    invoke-direct {v1}, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;-><init>()V

    .line 14
    .local v1, "broadcastManager":Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;
    sget-object v2, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->broadcastManagerMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_21

    .line 15
    monitor-exit v0

    return-object v1

    .line 11
    .end local v1    # "broadcastManager":Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;
    .end local p0    # "broadCastName":Ljava/lang/String;
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public registerReceiver(Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;)V
    .registers 2
    .param p1, "receiver"    # Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    .line 29
    iput-object p1, p0, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    .line 30
    return-void
.end method

.method public sendBroadcast(I)V
    .registers 4
    .param p1, "action"    # I

    .line 37
    iget-object v0, p0, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;->onReceive(ILjava/util/Map;)V

    .line 38
    :cond_c
    return-void
.end method

.method public sendBroadcast(ILjava/util/Map;)V
    .registers 4
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;->onReceive(ILjava/util/Map;)V

    .line 42
    :cond_7
    return-void
.end method

.method public unRegisterReceiver()V
    .registers 2

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager;->receiver:Lcom/tapsdk/bootstrap/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    .line 34
    return-void
.end method
