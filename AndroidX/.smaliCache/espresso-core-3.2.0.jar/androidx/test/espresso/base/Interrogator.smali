.class final Landroidx/test/espresso/base/Interrogator;
.super Ljava/lang/Object;
.source "Interrogator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/Interrogator$InterrogationHandler;,
        Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;
    }
.end annotation


# static fields
.field private static final LOOKAHEAD_MILLIS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "Interrogator"

.field private static final interrogating:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final messageQueueHeadField:Ljava/lang/reflect/Field;

.field private static final messageQueueNextMethod:Ljava/lang/reflect/Method;

.field private static final recycleUncheckedMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Landroidx/test/espresso/base/Interrogator$1;

    invoke-direct {v0}, Landroidx/test/espresso/base/Interrogator$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/Interrogator;->interrogating:Ljava/lang/ThreadLocal;

    .line 52
    :try_start_7
    const-class v0, Landroid/os/MessageQueue;

    const-string v1, "next"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/Interrogator;->messageQueueNextMethod:Ljava/lang/reflect/Method;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    const-class v0, Landroid/os/MessageQueue;

    const-string v3, "mMessages"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/Interrogator;->messageQueueHeadField:Ljava/lang/reflect/Field;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_25} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_25} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_25} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_25} :catch_39

    .line 63
    nop

    .line 65
    const/4 v0, 0x0

    .line 67
    :try_start_27
    const-class v3, Landroid/os/Message;

    const-string v4, "recycleUnchecked"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_34} :catch_35

    .line 70
    goto :goto_36

    .line 69
    :catch_35
    move-exception v1

    .line 71
    :goto_36
    sput-object v0, Landroidx/test/espresso/base/Interrogator;->recycleUncheckedMethod:Ljava/lang/reflect/Method;

    .line 72
    return-void

    .line 57
    :catch_39
    move-exception v0

    goto :goto_40

    :catch_3b
    move-exception v0

    goto :goto_40

    :catch_3d
    move-exception v0

    goto :goto_40

    :catch_3f
    move-exception v0

    .line 61
    :goto_40
    const-string v1, "Interrogator"

    const-string v2, "Could not initialize interrogator!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSanity()V
    .registers 2

    .line 267
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Calling non-looper thread!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 268
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/test/espresso/base/Interrogator;->interrogating:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Already interrogating!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 269
    return-void
.end method

.method private static getNextMessage()Landroid/os/Message;
    .registers 3

    .line 199
    :try_start_0
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->messageQueueNextMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 200
    :catch_10
    move-exception v0

    goto :goto_17

    :catch_12
    move-exception v0

    goto :goto_17

    :catch_14
    move-exception v0

    goto :goto_17

    :catch_16
    move-exception v0

    .line 204
    :goto_17
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static interrogateQueueState(Landroid/os/MessageQueue;Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/MessageQueue;",
            "Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 235
    monitor-enter p0

    .line 238
    :try_start_1
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->messageQueueHeadField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_9} :catch_88
    .catchall {:try_start_1 .. :try_end_9} :catchall_86

    .line 241
    nop

    .line 242
    if-nez v0, :cond_12

    .line 244
    :try_start_c
    invoke-interface {p1}, Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;->queueEmpty()Z

    move-result p1

    monitor-exit p0

    return p1

    .line 245
    :cond_12
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_2e

    .line 247
    const-string v0, "Interrogator"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 248
    const-string v0, "Interrogator"

    const-string v1, "barrier is up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_28
    invoke-interface {p1}, Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;->barrierUp()Z

    move-result p1

    monitor-exit p0

    return p1

    .line 252
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xf

    add-long/2addr v3, v5

    .line 254
    const-string v5, "Interrogator"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 255
    const-string v2, "Interrogator"

    cmp-long v5, v3, v0

    if-gez v5, :cond_49

    const/4 v5, 0x1

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    const/16 v6, 0x4b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "headWhen: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nowFuz: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " due long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_76
    cmp-long v2, v3, v0

    if-lez v2, :cond_80

    .line 260
    invoke-interface {p1}, Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;->taskDueSoon()Z

    move-result p1

    monitor-exit p0

    return p1

    .line 262
    :cond_80
    invoke-interface {p1}, Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;->taskDueLong()Z

    move-result p1

    monitor-exit p0

    return p1

    .line 263
    :catchall_86
    move-exception p1

    goto :goto_8f

    .line 239
    :catch_88
    move-exception p1

    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 263
    :goto_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_c .. :try_end_90} :catchall_86

    throw p1
.end method

.method static loopAndInterrogate(Landroidx/test/espresso/base/Interrogator$InterrogationHandler;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/base/Interrogator$InterrogationHandler<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 127
    invoke-static {}, Landroidx/test/espresso/base/Interrogator;->checkSanity()V

    .line 128
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->interrogating:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 129
    nop

    .line 130
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 135
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 136
    :cond_18
    :goto_18
    if-eqz v5, :cond_d4

    .line 138
    invoke-static {v0, p0}, Landroidx/test/espresso/base/Interrogator;->interrogateQueueState(Landroid/os/MessageQueue;Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;)Z

    move-result v5

    .line 139
    if-eqz v5, :cond_18

    .line 140
    invoke-static {}, Landroidx/test/espresso/base/Interrogator;->getNextMessage()Landroid/os/Message;

    move-result-object v5

    .line 143
    if-nez v5, :cond_38

    .line 144
    invoke-interface {p0}, Landroidx/test/espresso/base/Interrogator$InterrogationHandler;->quitting()V

    .line 145
    invoke-interface {p0}, Landroidx/test/espresso/base/Interrogator$InterrogationHandler;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_e4

    .line 171
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->interrogating:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 145
    return-object p0

    .line 147
    :cond_38
    :try_start_38
    invoke-interface {p0}, Landroidx/test/espresso/base/Interrogator$InterrogationHandler;->beforeTaskDispatch()Z

    move-result v6

    .line 148
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 153
    cmp-long v9, v7, v3

    if-eqz v9, :cond_ce

    .line 154
    const-string v9, "Interrogator"

    .line 157
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    .line 159
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-virtual {v5}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget v12, v5, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x4d

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Thread identity changed from 0x"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " to 0x"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " while dispatching to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-static {v9, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_ce
    invoke-static {v5}, Landroidx/test/espresso/base/Interrogator;->recycle(Landroid/os/Message;)V
    :try_end_d1
    .catchall {:try_start_38 .. :try_end_d1} :catchall_e4

    .line 168
    move v5, v6

    goto/16 :goto_18

    .line 171
    :cond_d4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->interrogating:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 173
    nop

    .line 174
    invoke-interface {p0}, Landroidx/test/espresso/base/Interrogator$InterrogationHandler;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 171
    :catchall_e4
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->interrogating:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_f1

    :goto_f0
    throw p0

    :goto_f1
    goto :goto_f0
.end method

.method static peekAtQueueState(Landroid/os/MessageQueue;Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/MessageQueue;",
            "Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 224
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    nop

    .line 227
    invoke-static {p0, p1}, Landroidx/test/espresso/base/Interrogator;->interrogateQueueState(Landroid/os/MessageQueue;Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 226
    const-string v0, "It is expected that %s would stop interrogation after a single peak at the queue."

    invoke-static {p0, v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 230
    invoke-interface {p1}, Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static recycle(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 178
    sget-object v0, Landroidx/test/espresso/base/Interrogator;->recycleUncheckedMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_37

    .line 180
    const/4 v1, 0x0

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_a} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_a} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_a} :catch_b

    .line 191
    goto :goto_3a

    .line 184
    :catch_b
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 186
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 189
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 181
    :catch_29
    move-exception p0

    goto :goto_2e

    :catch_2b
    move-exception p0

    goto :goto_2e

    :catch_2d
    move-exception p0

    .line 182
    :goto_2e
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 193
    :cond_37
    invoke-virtual {p0}, Landroid/os/Message;->recycle()V

    .line 195
    :goto_3a
    return-void
.end method
