.class Lcom/ss/android/downloadlib/h/b$b;
.super Lcom/ss/android/downloadlib/h/b$a;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/h/b$a;-><init>(Lcom/ss/android/downloadlib/h/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/h/b$1;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/ss/android/downloadlib/h/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    .line 30
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 33
    goto :goto_7

    .line 31
    :catchall_6
    move-exception p1

    .line 34
    :goto_7
    return-void
.end method
