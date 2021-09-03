.class public final enum Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;
.super Ljava/lang/Enum;
.source "GenericScheduledExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

.field static final THREAD_FACTORY:Lcom/tds/common/reactor/util/RxThreadFactory;

.field static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->$VALUES:[Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

    .line 34
    new-instance v0, Lcom/tds/common/reactor/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->THREAD_FACTORY:Lcom/tds/common/reactor/util/RxThreadFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static create()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 45
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->getOnGenericScheduledExecutorService()Lcom/tds/common/reactor/functions/Func0;

    move-result-object v0

    .line 46
    .local v0, "f":Lcom/tds/common/reactor/functions/Func0;, "Lcom/tds/common/reactor/functions/Func0<+Ljava/util/concurrent/ScheduledExecutorService;>;"
    if-nez v0, :cond_b

    .line 47
    invoke-static {}, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->createDefault()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    return-object v1

    .line 49
    :cond_b
    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v1
.end method

.method static createDefault()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 54
    invoke-static {}, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->threadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static threadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 37
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->THREAD_FACTORY:Lcom/tds/common/reactor/util/RxThreadFactory;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;
    .registers 1

    .line 30
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->$VALUES:[Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

    invoke-virtual {v0}, [Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;

    return-object v0
.end method
