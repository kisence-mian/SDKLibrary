.class Lcom/ss/android/downloadlib/e/b$a;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/e/b$1;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ss/android/downloadlib/e/b$a;-><init>()V

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
    .line 16
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 20
    :goto_3
    return-void

    .line 17
    :catch_4
    move-exception v0

    goto :goto_3
.end method
