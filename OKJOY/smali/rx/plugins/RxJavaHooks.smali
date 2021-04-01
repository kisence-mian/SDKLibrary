.class public final Lrx/plugins/RxJavaHooks;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field static volatile lockdown:Z

.field static volatile onCompletableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$CompletableOnSubscribe;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$CompletableOperator;",
            "Lrx/Completable$CompletableOperator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Lrx/Completable;",
            "Lrx/Completable$CompletableOnSubscribe;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onGenericScheduledExecutorService:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onIOScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onNewThreadScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleAction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Lrx/Single;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 90
    invoke-static {}, Lrx/plugins/RxJavaHooks;->init()V

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clear()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 247
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_6

    .line 275
    :goto_5
    return-void

    .line 250
    :cond_6
    sput-object v1, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 252
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 253
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 254
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 255
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 256
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 258
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 259
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 260
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 261
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 262
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 264
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 265
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 266
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 267
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 269
    sput-object v1, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    .line 270
    sput-object v1, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 271
    sput-object v1, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    .line 273
    sput-object v1, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 274
    sput-object v1, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    goto :goto_5
.end method

.method public static clearAssemblyTracking()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1162
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_6

    .line 1168
    :goto_5
    return-void

    .line 1165
    :cond_6
    sput-object v1, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 1166
    sput-object v1, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 1167
    sput-object v1, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    goto :goto_5
.end method

.method public static enableAssemblyTracking()V
    .registers 1

    .prologue
    .line 1177
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 1202
    :goto_4
    return-void

    .line 1181
    :cond_5
    new-instance v0, Lrx/plugins/RxJavaHooks$17;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$17;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 1188
    new-instance v0, Lrx/plugins/RxJavaHooks$18;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$18;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 1195
    new-instance v0, Lrx/plugins/RxJavaHooks$19;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$19;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static getOnCompletableCreate()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$CompletableOnSubscribe;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1086
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnCompletableLift()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$CompletableOperator;",
            "Lrx/Completable$CompletableOperator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnCompletableStart()Lrx/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Completable;",
            "Lrx/Completable$CompletableOnSubscribe;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    return-object v0
.end method

.method public static getOnCompletableSubscribeError()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnComputationScheduler()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    sget-object v0, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnError()Lrx/functions/Action1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    sget-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    return-object v0
.end method

.method public static getOnGenericScheduledExecutorService()Lrx/functions/Func0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1231
    sget-object v0, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    return-object v0
.end method

.method public static getOnIOScheduler()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    sget-object v0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnNewThreadScheduler()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    sget-object v0, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableCreate()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableLift()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableReturn()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1132
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableStart()Lrx/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    return-object v0
.end method

.method public static getOnObservableSubscribeError()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnScheduleAction()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1063
    sget-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleCreate()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleLift()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleReturn()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleStart()Lrx/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Single;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1121
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    return-object v0
.end method

.method public static getOnSingleSubscribeError()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    return-object v0
.end method

.method static init()V
    .registers 1

    .prologue
    .line 104
    new-instance v0, Lrx/plugins/RxJavaHooks$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 111
    new-instance v0, Lrx/plugins/RxJavaHooks$2;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$2;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 118
    new-instance v0, Lrx/plugins/RxJavaHooks$3;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$3;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 125
    new-instance v0, Lrx/plugins/RxJavaHooks$4;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$4;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 132
    new-instance v0, Lrx/plugins/RxJavaHooks$5;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$5;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 139
    new-instance v0, Lrx/plugins/RxJavaHooks$6;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$6;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 146
    new-instance v0, Lrx/plugins/RxJavaHooks$7;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$7;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 153
    new-instance v0, Lrx/plugins/RxJavaHooks$8;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$8;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 160
    new-instance v0, Lrx/plugins/RxJavaHooks$9;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$9;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 167
    new-instance v0, Lrx/plugins/RxJavaHooks$10;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$10;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 174
    new-instance v0, Lrx/plugins/RxJavaHooks$11;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$11;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 181
    new-instance v0, Lrx/plugins/RxJavaHooks$12;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$12;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 188
    new-instance v0, Lrx/plugins/RxJavaHooks$13;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$13;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 195
    invoke-static {}, Lrx/plugins/RxJavaHooks;->initCreate()V

    .line 196
    return-void
.end method

.method static initCreate()V
    .registers 1

    .prologue
    .line 200
    new-instance v0, Lrx/plugins/RxJavaHooks$14;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$14;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 207
    new-instance v0, Lrx/plugins/RxJavaHooks$15;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$15;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 214
    new-instance v0, Lrx/plugins/RxJavaHooks$16;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$16;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 220
    return-void
.end method

.method public static isLockdown()Z
    .registers 1

    .prologue
    .line 289
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    return v0
.end method

.method public static lockdown()V
    .registers 1

    .prologue
    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    .line 282
    return-void
.end method

.method public static onCompletableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 555
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 556
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 557
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 559
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCompletableLift(Lrx/Completable$CompletableOperator;)Lrx/Completable$CompletableOperator;
    .registers 3
    .param p0, "operator"    # Lrx/Completable$CompletableOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Completable$CompletableOperator;",
            ")",
            "Lrx/Completable$CompletableOperator;"
        }
    .end annotation

    .prologue
    .line 570
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 571
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$CompletableOperator;Lrx/Completable$CompletableOperator;>;"
    if-eqz v0, :cond_b

    .line 572
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$CompletableOperator;

    .line 574
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCompletableStart(Lrx/Completable;Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable$CompletableOnSubscribe;
    .registers 4
    .param p0, "instance"    # Lrx/Completable;
    .param p1, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Completable;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ")",
            "Lrx/Completable$CompletableOnSubscribe;"
        }
    .end annotation

    .prologue
    .line 542
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 543
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Completable;Lrx/Completable$CompletableOnSubscribe;Lrx/Completable$CompletableOnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 544
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$CompletableOnSubscribe;

    .line 546
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method public static onComputationScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 371
    sget-object v0, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    .line 372
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 373
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    .line 375
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCreate(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable$CompletableOnSubscribe;
    .registers 3
    .param p0, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;

    .prologue
    .line 358
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 359
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$CompletableOnSubscribe;Lrx/Completable$CompletableOnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 360
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$CompletableOnSubscribe;

    .line 362
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 331
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 332
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    .line 334
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)",
            "Lrx/Single$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "onSubscribe":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 346
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Single$OnSubscribe;Lrx/Single$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 347
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Single$OnSubscribe;

    .line 349
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 296
    sget-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 297
    .local v0, "f":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_2b

    .line 299
    :try_start_4
    invoke-interface {v0, p0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    .line 314
    :goto_7
    return-void

    .line 301
    :catch_8
    move-exception v1

    .line 307
    .local v1, "pluginException":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 313
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :cond_2b
    invoke-static {p0}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static onIOScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 384
    sget-object v0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 385
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 386
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    .line 388
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onNewThreadScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 397
    sget-object v0, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    .line 398
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 399
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    .line 401
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 454
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 455
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 457
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<TR;TT;>;)",
            "Lrx/Observable$Operator",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<TR;TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 470
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    if-eqz v0, :cond_b

    .line 471
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$Operator;

    .line 473
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableReturn(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p0, "subscription"    # Lrx/Subscription;

    .prologue
    .line 440
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 441
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    if-eqz v0, :cond_b

    .line 442
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 444
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onObservableStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "instance":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 428
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Observable;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 429
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    .line 431
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method public static onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;
    .registers 3
    .param p0, "action"    # Lrx/functions/Action0;

    .prologue
    .line 411
    sget-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 412
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/functions/Action0;>;"
    if-eqz v0, :cond_b

    .line 413
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/functions/Action0;

    .line 415
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 511
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 512
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 513
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 515
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<TR;TT;>;)",
            "Lrx/Observable$Operator",
            "<TR;TT;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<TR;TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 528
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    if-eqz v0, :cond_b

    .line 529
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$Operator;

    .line 531
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleReturn(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p0, "subscription"    # Lrx/Subscription;

    .prologue
    .line 498
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 499
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    if-eqz v0, :cond_b

    .line 500
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 502
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a
.end method

.method public static onSingleStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "instance":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 486
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Single;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 487
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    .line 489
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method public static reset()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 228
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_6

    .line 237
    :goto_5
    return-void

    .line 231
    :cond_6
    invoke-static {}, Lrx/plugins/RxJavaHooks;->init()V

    .line 233
    sput-object v1, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    .line 234
    sput-object v1, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 235
    sput-object v1, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    .line 236
    sput-object v1, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    goto :goto_5
.end method

.method public static resetAssemblyTracking()V
    .registers 1

    .prologue
    .line 1151
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 1156
    :goto_4
    return-void

    .line 1155
    :cond_5
    invoke-static {}, Lrx/plugins/RxJavaHooks;->initCreate()V

    goto :goto_4
.end method

.method public static setOnCompletableCreate(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$CompletableOnSubscribe;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "onCompletableCreate":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$CompletableOnSubscribe;Lrx/Completable$CompletableOnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 610
    :goto_4
    return-void

    .line 609
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnCompletableLift(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Completable$CompletableOperator;",
            "Lrx/Completable$CompletableOperator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "onCompletableLift":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$CompletableOperator;Lrx/Completable$CompletableOperator;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 985
    :goto_4
    return-void

    .line 984
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnCompletableStart(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Completable;",
            "Lrx/Completable$CompletableOnSubscribe;",
            "Lrx/Completable$CompletableOnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "onCompletableStart":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Completable;Lrx/Completable$CompletableOnSubscribe;Lrx/Completable$CompletableOnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 739
    :goto_4
    return-void

    .line 738
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    goto :goto_4
.end method

.method public static setOnCompletableSubscribeError(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "onCompletableSubscribeError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 865
    :goto_4
    return-void

    .line 864
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnComputationScheduler(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "onComputationScheduler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 665
    :goto_4
    return-void

    .line 664
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onComputationScheduler:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnError(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 592
    :goto_4
    return-void

    .line 591
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    goto :goto_4
.end method

.method public static setOnGenericScheduledExecutorService(Lrx/functions/Func0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, "factory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/concurrent/ScheduledExecutorService;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 1221
    :goto_4
    return-void

    .line 1220
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lrx/functions/Func0;

    goto :goto_4
.end method

.method public static setOnIOScheduler(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "onIOScheduler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 683
    :goto_4
    return-void

    .line 682
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnNewThreadScheduler(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "onNewThreadScheduler":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 701
    :goto_4
    return-void

    .line 700
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableCreate(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "onObservableCreate":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 629
    :goto_4
    return-void

    .line 628
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableLift(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, "onObservableLift":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 924
    :goto_4
    return-void

    .line 923
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableReturn(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "onObservableReturn":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 799
    :goto_4
    return-void

    .line 798
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnObservableStart(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "onObservableStart":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Observable;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 760
    :goto_4
    return-void

    .line 759
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    goto :goto_4
.end method

.method public static setOnObservableSubscribeError(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p0, "onObservableSubscribeError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 894
    :goto_4
    return-void

    .line 893
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnScheduleAction(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, "onScheduleAction":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/functions/Action0;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 719
    :goto_4
    return-void

    .line 718
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleCreate(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "onSingleCreate":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Single$OnSubscribe;Lrx/Single$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 647
    :goto_4
    return-void

    .line 646
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleLift(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "onSingleLift":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 955
    :goto_4
    return-void

    .line 954
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleReturn(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "onSingleReturn":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 818
    :goto_4
    return-void

    .line 817
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    goto :goto_4
.end method

.method public static setOnSingleStart(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Lrx/Single;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "onSingleStart":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Single;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 780
    :goto_4
    return-void

    .line 779
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    goto :goto_4
.end method

.method public static setOnSingleSubscribeError(Lrx/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "onSingleSubscribeError":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lrx/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 836
    :goto_4
    return-void

    .line 835
    :cond_5
    sput-object p0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    goto :goto_4
.end method

.method static signalUncaught(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 318
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 319
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 320
    return-void
.end method
