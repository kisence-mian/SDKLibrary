.class public final Lrx/exceptions/AssemblyStackTraceException;
.super Ljava/lang/RuntimeException;
.source "AssemblyStackTraceException.java"


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1c4b7c27e9c0effcL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static find(Ljava/lang/Throwable;)Lrx/exceptions/AssemblyStackTraceException;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_6
    instance-of v2, p0, Lrx/exceptions/AssemblyStackTraceException;

    if-eqz v2, :cond_d

    .line 78
    check-cast p0, Lrx/exceptions/AssemblyStackTraceException;

    .line 85
    .end local p0    # "e":Ljava/lang/Throwable;
    :goto_c
    return-object p0

    .line 80
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_d
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_17

    :cond_15
    move-object p0, v1

    .line 81
    goto :goto_c

    .line 83
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 84
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object p0, v1

    .line 85
    goto :goto_c
.end method


# virtual methods
.method public attachTo(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v0, "memory":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_f

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 63
    :goto_e
    return-void

    .line 59
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 60
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 62
    invoke-static {p0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    .prologue
    .line 43
    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
