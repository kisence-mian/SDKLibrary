.class public Lcom/tapsdk/moment/XDSDKHelper;
.super Ljava/lang/Object;
.source "XDSDKHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindTapAccount(Lorg/json/JSONObject;Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    .registers 10
    .param p0, "accessTokenJsonObject"    # Lorg/json/JSONObject;
    .param p1, "invokeHandler"    # Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;

    .line 116
    :try_start_0
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "com.xd.xdsdk.OnResultListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 118
    .local v1, "listener":Ljava/lang/Class;
    const-string v2, "bindTapAccount"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/json/JSONObject;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 119
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Lcom/tapsdk/moment/XDSDKHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v6

    invoke-static {v4, v7, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 120
    .local v4, "proxy":Ljava/lang/Object;
    const/4 v7, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37

    .line 124
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "listener":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    goto :goto_43

    .line 121
    :catch_37
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method public static getCurrentTapToken(ZLcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    .registers 11
    .param p0, "useCache"    # Z
    .param p1, "invokeHandler"    # Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;

    .line 24
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 26
    :try_start_6
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "com.xd.xdsdk.OnResultListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 28
    .local v1, "listener":Ljava/lang/Class;
    const-string v2, "getCurrentTapToken"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 29
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Lcom/tapsdk/moment/XDSDKHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v6

    invoke-static {v4, v7, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 30
    .local v4, "proxy":Ljava/lang/Object;
    const/4 v7, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v3, v6

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3f} :catch_41

    .line 34
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "listener":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    goto :goto_4d

    .line 31
    :catch_41
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-void
.end method

.method public static getTapToken(Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    .registers 8
    .param p0, "invokeHandler"    # Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;

    .line 87
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 89
    :try_start_6
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "com.xd.xdsdk.OnResultListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    .local v1, "listener":Ljava/lang/Class;
    const-string v2, "getTapToken"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Lcom/tapsdk/moment/XDSDKHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v1, v6, v5

    invoke-static {v4, v6, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 93
    .local v4, "proxy":Ljava/lang/Object;
    const/4 v6, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_36

    .line 97
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "listener":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    goto :goto_42

    .line 94
    :catch_36
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    return-void
.end method

.method public static getUserInfo(Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    .registers 8
    .param p0, "invokeHandler"    # Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;

    .line 39
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 41
    :try_start_6
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "com.xd.xdsdk.OnResultListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "listener":Ljava/lang/Class;
    const-string v2, "getCurrentUserInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 44
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Lcom/tapsdk/moment/XDSDKHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v1, v6, v5

    invoke-static {v4, v6, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    .local v4, "proxy":Ljava/lang/Object;
    const/4 v6, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_36

    .line 49
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "listener":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    goto :goto_42

    .line 46
    :catch_36
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    return-void
.end method

.method public static hasXDSdk()Z
    .registers 6

    .line 13
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.xd.xdsdk.XDSDK"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 14
    .local v1, "xd":Ljava/lang/Class;
    const-string v2, "com.xd.xdsdk.OnResultListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 15
    .local v2, "listener":Ljava/lang/Class;
    const-string v3, "getCurrentTapToken"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 16
    .local v0, "method":Ljava/lang/reflect/Method;
    return v5

    .line 17
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "xd":Ljava/lang/Class;
    .end local v2    # "listener":Ljava/lang/Class;
    :catch_1e
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 20
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static openBindTapDialog(Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    .registers 8
    .param p0, "invokeHandler"    # Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;

    .line 58
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 60
    :try_start_6
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "com.xd.xdsdk.OnResultListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 62
    .local v1, "listener":Ljava/lang/Class;
    const-string v2, "openBindTapDialog"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Lcom/tapsdk/moment/XDSDKHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v1, v6, v5

    invoke-static {v4, v6, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    .local v4, "proxy":Ljava/lang/Object;
    const/4 v6, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_36

    .line 68
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "listener":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    goto :goto_42

    .line 65
    :catch_36
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    return-void
.end method

.method public static sendRealNameInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/tapsdk/moment/XDSDKHelper;->hasXDSdk()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 76
    :try_start_6
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "sendRealNameInfo"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 78
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2b

    .line 81
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_2f

    .line 79
    :catch_2b
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static validateTapToken(Lorg/json/JSONObject;Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;)V
    .registers 10
    .param p0, "accessTokenJsonObject"    # Lorg/json/JSONObject;
    .param p1, "invokeHandler"    # Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;

    .line 103
    :try_start_0
    const-string v0, "com.xd.xdsdk.XDSDK"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    .local v0, "xd":Ljava/lang/Class;
    const-string v1, "com.xd.xdsdk.OnResultListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 105
    .local v1, "listener":Ljava/lang/Class;
    const-string v2, "validateTapToken"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/json/JSONObject;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 106
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Lcom/tapsdk/moment/XDSDKHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v6

    invoke-static {v4, v7, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    .local v4, "proxy":Ljava/lang/Object;
    const/4 v7, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37

    .line 111
    nop

    .end local v0    # "xd":Ljava/lang/Class;
    .end local v1    # "listener":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    goto :goto_43

    .line 108
    :catch_37
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method
