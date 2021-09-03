.class public Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;
.super Ljava/lang/Object;
.source "RxJavaErrorHandler.java"


# static fields
.field protected static final ERROR_IN_RENDERING_SUFFIX:Ljava/lang/String; = ".errorRendering"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    return-void
.end method

.method public final handleOnNextValueRendering(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "item"    # Ljava/lang/Object;

    .line 42
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;->render(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_a
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 45
    :catchall_5
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 43
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 47
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 48
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".errorRendering"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected render(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
