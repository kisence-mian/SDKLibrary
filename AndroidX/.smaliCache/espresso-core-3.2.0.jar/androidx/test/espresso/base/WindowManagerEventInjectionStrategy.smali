.class final Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;
.super Ljava/lang/Object;
.source "WindowManagerEventInjectionStrategy.java"

# interfaces
.implements Landroidx/test/espresso/base/EventInjectionStrategy;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private initComplete:Z

.field private injectInputKeyEventMethod:Ljava/lang/reflect/Method;

.field private injectInputMotionEventMethod:Ljava/lang/reflect/Method;

.field private wmInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "Unsupported API level."

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method initialize()V
    .registers 8

    .line 48
    iget-boolean v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->initComplete:Z

    if-eqz v0, :cond_5

    .line 49
    return-void

    .line 53
    :cond_5
    :try_start_5
    sget-object v0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->TAG:Ljava/lang/String;

    const-string v1, "Trying to create injection strategy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 57
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "window"

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    const-string v1, "android.view.IWindowManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    const-string v3, "asInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    .line 64
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->wmInstance:Ljava/lang/Object;

    .line 69
    nop

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "injectPointerEvent"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v4, v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v2

    .line 72
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->injectInputMotionEventMethod:Ljava/lang/reflect/Method;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 75
    iget-object v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->wmInstance:Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "injectKeyEvent"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->injectInputKeyEventMethod:Ljava/lang/reflect/Method;

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    iput-boolean v2, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->initComplete:Z
    :try_end_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_84} :catch_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_84} :catch_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_84} :catch_96
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_84} :catch_8f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_84} :catch_88
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_84} :catch_86

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_86
    move-exception v0

    .line 91
    throw v0

    .line 88
    :catch_88
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    :catch_8f
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :catch_96
    move-exception v0

    .line 85
    throw v0

    .line 82
    :catch_98
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_9f
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->injectInputKeyEventMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->wmInstance:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1b} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1b} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1b} :catch_1c

    return p1

    .line 114
    :catch_1c
    move-exception p1

    .line 115
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :catch_23
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 110
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_32

    .line 111
    new-instance p1, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {p1, v0}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 113
    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 106
    :catch_38
    move-exception p1

    .line 107
    throw p1

    .line 104
    :catch_3a
    move-exception p1

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "sync"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->injectInputMotionEventMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->wmInstance:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1b} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1b} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1b} :catch_1c

    return p1

    .line 141
    :catch_1c
    move-exception p1

    .line 142
    new-instance p2, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {p2, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 135
    :catch_23
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 137
    instance-of v0, p2, Ljava/lang/SecurityException;

    if-eqz v0, :cond_32

    .line 138
    new-instance p1, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {p1, p2}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 140
    :cond_32
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 133
    :catch_38
    move-exception p1

    .line 134
    throw p1

    .line 131
    :catch_3a
    move-exception p1

    .line 132
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
