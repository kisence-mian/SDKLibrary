.class public final Landroidx/core/os/HandlerCompat;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 8
    .param p0, "looper"    # Landroid/os/Looper;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 53
    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 55
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_65

    .line 57
    :try_start_11
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler$Callback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v5

    .line 59
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_3c} :catch_5c
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_3c} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_3c} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_3c} :catch_3d

    .line 57
    return-object v0

    .line 63
    :catch_3d
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 65
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_54

    .line 68
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_4e

    .line 69
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 71
    :cond_4e
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 66
    :cond_54
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 62
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_58
    move-exception v0

    goto :goto_5d

    .line 61
    :catch_5a
    move-exception v0

    goto :goto_5d

    .line 60
    :catch_5c
    move-exception v0

    .line 72
    :goto_5d
    nop

    .line 73
    const-string v0, "HandlerCompat"

    const-string v1, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 9
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 94
    invoke-static {p0, p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 96
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_64

    .line 98
    :try_start_11
    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler$Callback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    .line 100
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_3b} :catch_5b
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_3b} :catch_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_3b} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_3b} :catch_3c

    .line 98
    return-object v0

    .line 104
    :catch_3c
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 106
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_53

    .line 109
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_4d

    .line 110
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 112
    :cond_4d
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 107
    :cond_53
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 103
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_57
    move-exception v0

    goto :goto_5c

    .line 102
    :catch_59
    move-exception v0

    goto :goto_5c

    .line 101
    :catch_5b
    move-exception v0

    .line 113
    :goto_5c
    nop

    .line 114
    const-string v0, "HandlerCompat"

    const-string v1, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .registers 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0

    .line 148
    :cond_b
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method
