.class Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCallbacksAdapterApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# static fields
.field static sAsInterfaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 93
    :try_start_0
    const-string v0, "android.service.media.IMediaBrowserServiceCallbacks$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "theClass":Ljava/lang/Class;
    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->sAsInterfaceMethod:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_16} :catch_17

    .line 99
    .end local v0    # "theClass":Ljava/lang/Class;
    goto :goto_1d

    .line 97
    :catch_17
    move-exception v0

    goto :goto_1a

    :catch_19
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1d
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 6
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Ljava/lang/Object;
    :try_start_1
    sget-object v1, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->sAsInterfaceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v1

    .line 108
    goto :goto_16

    .line 106
    :catch_10
    move-exception v1

    goto :goto_13

    :catch_12
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_13
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 109
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_16
    return-object v0
.end method
