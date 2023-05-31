.class public Lcom/ss/android/downloadlib/e/b;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/e/b$b;,
        Lcom/ss/android/downloadlib/e/b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/ss/android/downloadlib/e/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/ss/android/downloadlib/e/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/e/b$b;-><init>(Lcom/ss/android/downloadlib/e/b$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/e/b;->a:Lcom/ss/android/downloadlib/e/b$a;

    .line 40
    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
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
    .line 44
    sget-object v0, Lcom/ss/android/downloadlib/e/b;->a:Lcom/ss/android/downloadlib/e/b$a;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/e/b$a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method
