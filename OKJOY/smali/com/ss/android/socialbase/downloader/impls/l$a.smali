.class Lcom/ss/android/socialbase/downloader/impls/l$a;
.super Ljava/lang/Object;
.source "DownloadProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/impls/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private volatile a:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_d

    .line 52
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 56
    :goto_c
    return-void

    .line 54
    :cond_d
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/o;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    goto :goto_c
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_1e

    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 69
    :goto_a
    return-object v0

    .line 64
    :catch_b
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 66
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :cond_19
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 69
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method
