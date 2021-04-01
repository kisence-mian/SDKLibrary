.class Lcom/ss/android/downloadlib/e/b$b;
.super Lcom/ss/android/downloadlib/e/b$a;
.source "AsyncTaskUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/e/b$a;-><init>(Lcom/ss/android/downloadlib/e/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/e/b$1;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ss/android/downloadlib/e/b$b;-><init>()V

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
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/d;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 34
    :goto_b
    return-void

    .line 31
    :catch_c
    move-exception v0

    goto :goto_b
.end method
