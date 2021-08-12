.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "CommonPermissionListenerManagerImpl.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;
    .registers 2

    .line 23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    if-nez v0, :cond_17

    .line 24
    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    monitor-enter v0

    .line 25
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    if-nez v1, :cond_12

    .line 26
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    .line 28
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 30
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    return-object v0
.end method


# virtual methods
.method public broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00000 CommonPermissionListenerManagerImpl broadcastDialogListener: 00000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiProcess"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 49
    if-nez v0, :cond_31

    .line 50
    return-void

    .line 53
    :cond_31
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 54
    const/4 v4, 0x0

    :goto_36
    if-ge v4, v3, :cond_6e

    .line 55
    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    .line 56
    if-eqz v5, :cond_6b

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CommonPermissionListenerManagerImpl broadcastDialogListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-nez p2, :cond_68

    .line 59
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onGranted()V

    goto :goto_6b

    .line 61
    :cond_68
    invoke-interface {v5, p2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onDenied(Ljava/lang/String;)V

    .line 54
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 65
    :cond_6e
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 67
    return-void
.end method

.method public registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    if-nez p2, :cond_3

    .line 36
    return-void

    .line 38
    :cond_3
    const-string v0, "MultiProcess"

    const-string v1, "CommonPermissionListenerManagerImpl registerPermissionListener"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 41
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 42
    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method
