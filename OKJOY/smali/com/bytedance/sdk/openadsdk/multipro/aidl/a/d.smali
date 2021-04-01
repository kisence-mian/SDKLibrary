.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "CommonPermissionListenerManagerImpl.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "MultiProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00000 CommonPermissionListenerManagerImpl broadcastDialogListener: 00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 49
    if-nez v0, :cond_31

    .line 67
    :goto_30
    return-void

    .line 53
    :cond_31
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 54
    const/4 v1, 0x0

    move v2, v1

    :goto_37
    if-ge v2, v3, :cond_74

    .line 55
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    .line 56
    if-eqz v1, :cond_6c

    .line 57
    const-string v4, "MultiProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommonPermissionListenerManagerImpl broadcastDialogListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-nez p2, :cond_70

    .line 59
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onGranted()V

    .line 54
    :cond_6c
    :goto_6c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_37

    .line 61
    :cond_70
    invoke-interface {v1, p2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onDenied(Ljava/lang/String;)V

    goto :goto_6c

    .line 65
    :cond_74
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    goto :goto_30
.end method

.method public registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p2, :cond_3

    .line 43
    :goto_2
    return-void

    .line 38
    :cond_3
    const-string v0, "MultiProcess"

    const-string v1, "CommonPermissionListenerManagerImpl registerPermissionListener"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 41
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 42
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
