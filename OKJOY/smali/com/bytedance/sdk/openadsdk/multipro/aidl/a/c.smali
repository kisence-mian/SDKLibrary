.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;
.source "CommonDialogListenerManagerImpl.java"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->b:Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public broadcastDialogListener(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 45
    if-nez v0, :cond_b

    .line 71
    :goto_a
    return-void

    .line 49
    :cond_b
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 50
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, v3, :cond_31

    .line 51
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    .line 52
    if-eqz v1, :cond_21

    .line 53
    packed-switch p2, :pswitch_data_38

    .line 64
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogCancel()V

    .line 50
    :cond_21
    :goto_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 55
    :pswitch_25
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogBtnYes()V

    goto :goto_21

    .line 58
    :pswitch_29
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogBtnNo()V

    goto :goto_21

    .line 61
    :pswitch_2d
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;->onDialogCancel()V

    goto :goto_21

    .line 69
    :cond_31
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 70
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    goto :goto_a

    .line 53
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method public registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    if-nez p2, :cond_3

    .line 40
    :goto_2
    return-void

    .line 37
    :cond_3
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 38
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 39
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
