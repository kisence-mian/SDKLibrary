.class Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCallbacksAdapterApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;
    }
.end annotation


# instance fields
.field private mAsBinderMethod:Ljava/lang/reflect/Method;

.field mCallbackObject:Ljava/lang/Object;

.field private mOnConnectFailedMethod:Ljava/lang/reflect/Method;

.field private mOnConnectMethod:Ljava/lang/reflect/Method;

.field private mOnLoadChildrenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 10
    .param p1, "callbackObject"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    .line 42
    :try_start_5
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "theClass":Ljava/lang/Class;
    const-string v1, "android.content.pm.ParceledListSlice"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "parceledListSliceClass":Ljava/lang/Class;
    const-string v2, "asBinder"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mAsBinderMethod:Ljava/lang/reflect/Method;

    .line 45
    const-string v2, "onConnect"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const-class v5, Landroid/media/session/MediaSession$Token;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectMethod:Ljava/lang/reflect/Method;

    .line 47
    const-string v2, "onConnectFailed"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectFailedMethod:Ljava/lang/reflect/Method;

    .line 48
    const-string v2, "onLoadChildren"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object v1, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnLoadChildrenMethod:Ljava/lang/reflect/Method;
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_4f} :catch_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_4f} :catch_50

    .line 52
    .end local v0    # "theClass":Ljava/lang/Class;
    .end local v1    # "parceledListSliceClass":Ljava/lang/Class;
    goto :goto_56

    .line 50
    :catch_50
    move-exception v0

    goto :goto_53

    :catch_52
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_53
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_56
    return-void
.end method


# virtual methods
.method asBinder()Landroid/os/IBinder;
    .registers 5

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "result":Landroid/os/IBinder;
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mAsBinderMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v1

    .line 61
    goto :goto_16

    .line 59
    :catch_10
    move-exception v1

    goto :goto_13

    :catch_12
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_13
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_16
    return-object v0
.end method

.method onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_14

    .line 70
    goto :goto_1a

    .line 68
    :catch_14
    move-exception v0

    goto :goto_17

    :catch_16
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_17
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1a
    return-void
.end method

.method onConnectFailed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnConnectFailedMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_b

    .line 78
    goto :goto_11

    .line 76
    :catch_b
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_e
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_11
    return-void
.end method

.method onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "parceledListSliceObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mOnLoadChildrenMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->mCallbackObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_10} :catch_11

    .line 86
    goto :goto_17

    .line 84
    :catch_11
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_14
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_17
    return-void
.end method
