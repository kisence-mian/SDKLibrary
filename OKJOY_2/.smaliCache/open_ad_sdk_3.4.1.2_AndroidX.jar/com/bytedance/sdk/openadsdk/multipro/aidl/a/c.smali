.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "CommonDialogListenerManagerImpl.java"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;
    .registers 2

    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    return-object v0
.end method


# virtual methods
.method public broadcastDialogListener(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    .line 45
    if-nez p1, :cond_b

    .line 46
    return-void

    .line 49
    :cond_b
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 50
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_2f

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    .line 52
    if-eqz v2, :cond_2c

    .line 53
    packed-switch p2, :pswitch_data_36

    .line 64
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogCancel()V

    goto :goto_2c

    .line 61
    :pswitch_21
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogCancel()V

    .line 62
    goto :goto_2c

    .line 58
    :pswitch_25
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogBtnNo()V

    .line 59
    goto :goto_2c

    .line 55
    :pswitch_29
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogBtnYes()V

    .line 50
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 69
    :cond_2f
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 71
    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
    .end packed-switch
.end method

.method public registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    if-nez p2, :cond_3

    .line 35
    return-void

    .line 37
    :cond_3
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 38
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 39
    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
