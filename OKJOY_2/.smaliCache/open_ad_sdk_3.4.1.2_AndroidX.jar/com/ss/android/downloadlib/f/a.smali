.class public Lcom/ss/android/downloadlib/f/a;
.super Ljava/lang/Object;
.source "Monitor.java"


# direct methods
.method public static a()V
    .registers 1

    .line 16
    sget-boolean v0, Lcom/ss/android/downloadlib/addownload/k;->b:Z

    if-nez v0, :cond_5

    .line 19
    return-void

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static a(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 31
    sget-boolean v0, Lcom/ss/android/downloadlib/addownload/k;->b:Z

    if-nez v0, :cond_c

    .line 34
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/e/a;->b(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 36
    return-void

    .line 32
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    .line 22
    sget-boolean v0, Lcom/ss/android/downloadlib/addownload/k;->b:Z

    if-nez v0, :cond_8

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    return-void

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
