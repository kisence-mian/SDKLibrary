.class public Lcom/sigmob/sdk/base/common/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/sigmob/sdk/base/common/l;->a()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/sigmob/sdk/base/common/l;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TP;**>;[TP;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "Unable to execute null AsyncTask."

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "AsyncTask must be executed on the main thread"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/sigmob/sdk/base/common/l;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
