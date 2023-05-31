.class public final Lcom/tds/common/reactor/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field private static final MAX_DEPTH:I = 0x19


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    .local v0, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 59
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/16 v3, 0x19

    if-lt v1, v3, :cond_13

    .line 61
    return-void

    .line 63
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 65
    move v1, v2

    goto :goto_2c

    .line 67
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_6

    .line 72
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 77
    goto :goto_31

    .line 73
    :catchall_30
    move-exception v2

    .line 78
    :goto_31
    return-void
.end method

.method public static getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 91
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v2, 0x19

    if-lt v0, v2, :cond_15

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stack too deep to get final cause"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 95
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    goto :goto_1

    .line 97
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1b
    return-object p0
.end method

.method public static throwIfAny(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p0, "exceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_32

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 39
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 42
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_28

    .line 44
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_22

    .line 45
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 47
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :cond_28
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 50
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2c
    new-instance v0, Lcom/tds/common/reactor/exceptions/CompositeException;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    throw v0

    .line 52
    :cond_32
    return-void
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 19
    instance-of v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;

    if-nez v0, :cond_2d

    .line 21
    instance-of v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    if-nez v0, :cond_29

    .line 23
    instance-of v0, p0, Lcom/tds/common/reactor/exceptions/OnCompletedFailedException;

    if-nez v0, :cond_25

    .line 27
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_21

    .line 29
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1d

    .line 31
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_19

    .line 34
    return-void

    .line 32
    :cond_19
    move-object v0, p0

    check-cast v0, Ljava/lang/LinkageError;

    throw v0

    .line 30
    :cond_1d
    move-object v0, p0

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 28
    :cond_21
    move-object v0, p0

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0

    .line 24
    :cond_25
    move-object v0, p0

    check-cast v0, Lcom/tds/common/reactor/exceptions/OnCompletedFailedException;

    throw v0

    .line 22
    :cond_29
    move-object v0, p0

    check-cast v0, Lcom/tds/common/reactor/exceptions/OnErrorFailedException;

    throw v0

    .line 20
    :cond_2d
    move-object v0, p0

    check-cast v0, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;

    throw v0
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/tds/common/reactor/Observer<",
            "*>;)V"
        }
    .end annotation

    .line 112
    .local p1, "o":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<*>;"
    invoke-static {p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 113
    invoke-interface {p1, p0}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/tds/common/reactor/Observer<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "o":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<*>;"
    invoke-static {p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 102
    invoke-static {p0, p2}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method
