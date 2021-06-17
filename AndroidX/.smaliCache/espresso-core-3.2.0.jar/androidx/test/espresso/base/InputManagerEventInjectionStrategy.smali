.class final Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;
.super Ljava/lang/Object;
.source "InputManagerEventInjectionStrategy.java"

# interfaces
.implements Landroidx/test/espresso/base/EventInjectionStrategy;


# static fields
.field private static final KEYBOARD_DISMISSAL_DELAY_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "EventInjectionStrategy"


# instance fields
.field private asyncEventMode:I

.field private initComplete:Z

.field private injectInputEventMethod:Ljava/lang/reflect/Method;

.field private instanceInputManagerObject:Ljava/lang/Object;

.field private setSourceMotionMethod:Ljava/lang/reflect/Method;

.field private syncEventMode:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Unsupported API level."

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 52
    return-void
.end method

.method private innerInjectMotionEvent(Landroid/view/MotionEvent;ZZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "shouldRetry",
            "sync"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_1f

    .line 140
    invoke-static {p1}, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->isFromTouchpadInGlassDevice(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 142
    iget-object v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->setSourceMotionMethod:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x1002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1f
    if-eqz p3, :cond_24

    iget v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->syncEventMode:I

    goto :goto_26

    :cond_24
    iget v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->asyncEventMode:I

    .line 145
    :goto_26
    iget-object v4, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->injectInputEventMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->instanceInputManagerObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3e} :catch_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_3e} :catch_6e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3e} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_3e} :catch_3f

    return p1

    .line 169
    :catch_3f
    move-exception p1

    .line 170
    new-instance p2, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {p2, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 151
    :catch_46
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 153
    instance-of v3, v2, Ljava/lang/SecurityException;

    if-eqz v3, :cond_68

    .line 154
    if-eqz p2, :cond_62

    .line 155
    const-string p2, "EventInjectionStrategy"

    const-string v1, "Error performing a ViewAction! soft keyboard dismissal animation may have been in the way. Retrying once after: 1000 millis"

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 162
    invoke-direct {p0, p1, v0, p3}, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->innerInjectMotionEvent(Landroid/view/MotionEvent;ZZ)Z

    .line 171
    nop

    .line 172
    return v0

    .line 164
    :cond_62
    new-instance p1, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {p1, v2}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 167
    :cond_68
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 149
    :catch_6e
    move-exception p1

    .line 150
    throw p1

    .line 147
    :catch_70
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static isFromTouchpadInGlassDevice(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    .line 177
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 178
    const-string v1, "Glass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 179
    const-string v1, "wingman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 180
    :cond_1e
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const v0, 0x100008

    and-int/2addr p0, v0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    .line 177
    :goto_2b
    return p0
.end method


# virtual methods
.method initialize()V
    .registers 8

    .line 55
    iget-boolean v0, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->initComplete:Z

    if-eqz v0, :cond_5

    .line 56
    return-void

    .line 60
    :cond_5
    :try_start_5
    const-string v0, "EventInjectionStrategy"

    const-string v1, "Creating injection strategy with input manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "android.hardware.input.InputManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->instanceInputManagerObject:Ljava/lang/Object;

    .line 69
    nop

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "injectInputEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/InputEvent;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 72
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->injectInputEventMethod:Ljava/lang/reflect/Method;

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 78
    const-string v1, "INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->syncEventMode:I

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_5a

    .line 86
    iput v2, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->asyncEventMode:I

    goto :goto_69

    .line 88
    :cond_5a
    const-string v1, "INJECT_INPUT_EVENT_MODE_ASYNC"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->asyncEventMode:I

    .line 94
    :goto_69
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "setSource"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->setSourceMotionMethod:Ljava/lang/reflect/Method;

    .line 95
    iput-boolean v3, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->initComplete:Z
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_7b} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_7b} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_7b} :catch_8b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_7b} :catch_84
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_7b} :catch_7d

    .line 106
    nop

    .line 107
    return-void

    .line 104
    :catch_7d
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 102
    :catch_84
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_8b
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_92
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_99
    move-exception v0

    .line 97
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

    .line 112
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->injectInputEventMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->instanceInputManagerObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget v3, p0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->syncEventMode:I

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1d} :catch_1e

    return p1

    .line 122
    :catch_1e
    move-exception p1

    .line 123
    new-instance v0, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {v0, p1}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 116
    :catch_25
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 118
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_34

    .line 119
    new-instance p1, Landroidx/test/espresso/InjectEventSecurityException;

    invoke-direct {p1, v0}, Landroidx/test/espresso/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 121
    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :catch_3a
    move-exception p1

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;Z)Z
    .registers 4
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
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->innerInjectMotionEvent(Landroid/view/MotionEvent;ZZ)Z

    move-result p1

    return p1
.end method
