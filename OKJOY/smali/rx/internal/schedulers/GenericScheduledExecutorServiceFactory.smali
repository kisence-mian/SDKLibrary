.class final enum Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;
.super Ljava/lang/Enum;
.source "GenericScheduledExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

.field static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

    sput-object v0, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->$VALUES:[Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

    .line 33
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static create()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .prologue
    .line 44
    invoke-static {}, Lrx/plugins/RxJavaHooks;->getOnGenericScheduledExecutorService()Lrx/functions/Func0;

    move-result-object v0

    .line 45
    .local v0, "f":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/concurrent/ScheduledExecutorService;>;"
    if-nez v0, :cond_b

    .line 46
    invoke-static {}, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->createDefault()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 48
    :goto_a
    return-object v1

    :cond_b
    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_a
.end method

.method static createDefault()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {}, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->threadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static threadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

    return-object v0
.end method

.method public static values()[Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->$VALUES:[Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

    invoke-virtual {v0}, [Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/schedulers/GenericScheduledExecutorServiceFactory;

    return-object v0
.end method
