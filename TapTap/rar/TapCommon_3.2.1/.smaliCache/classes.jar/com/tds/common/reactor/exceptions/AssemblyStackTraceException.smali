.class public final Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;
.super Ljava/lang/RuntimeException;
.source "AssemblyStackTraceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1c4b7c27e9c0effcL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static find(Ljava/lang/Throwable;)Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_5
    instance-of v1, p0, Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;

    if-eqz v1, :cond_d

    .line 86
    move-object v1, p0

    check-cast v1, Lcom/tds/common/reactor/exceptions/AssemblyStackTraceException;

    return-object v1

    .line 88
    :cond_d
    const/4 v1, 0x0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_22

    .line 91
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 92
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 93
    return-object v1

    .line 89
    :cond_22
    :goto_22
    return-object v1
.end method


# virtual methods
.method public attachTo(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 56
    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_e} :catch_f

    .line 63
    goto :goto_1a

    .line 57
    :catch_f
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Received an exception with a cause set to null, instead of being unset. To fix this, look down the chain of causes. The last exception had a cause explicitly set to null. It should be unset instead."

    invoke-direct {v2, v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1a
    return-void

    .line 67
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 68
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 70
    invoke-static {p0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 68
    :cond_29
    goto :goto_5
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    .line 43
    monitor-exit p0

    return-object p0
.end method
