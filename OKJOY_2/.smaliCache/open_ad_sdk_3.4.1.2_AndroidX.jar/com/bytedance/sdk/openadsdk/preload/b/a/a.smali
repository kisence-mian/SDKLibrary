.class public Lcom/bytedance/sdk/openadsdk/preload/b/a/a;
.super Ljava/lang/Exception;
.source "ParallelException.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/a/a;->a:Ljava/util/List;

    .line 11
    if-eqz p1, :cond_37

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_37

    .line 14
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/a/a;->a(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 17
    goto :goto_17

    .line 18
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/a/a;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 19
    return-void

    .line 12
    :cond_37
    :goto_37
    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 22
    if-nez p1, :cond_3

    .line 23
    return-void

    .line 26
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    array-length v2, v0

    :goto_9
    if-ge v1, v2, :cond_53

    .line 28
    aget-object v3, v0, v1

    .line 29
    if-nez v1, :cond_4d

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 31
    new-instance v5, Ljava/lang/StackTraceElement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0008\u0008\u0008\nCaused by:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_24

    const-string v4, ""

    :cond_24
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-direct {v5, v4, v6, v7, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_50

    .line 35
    :cond_4d
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 38
    :cond_53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/a/a;->a(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 39
    return-void
.end method
