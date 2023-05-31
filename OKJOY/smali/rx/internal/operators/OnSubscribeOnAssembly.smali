.class public final Lrx/internal/operators/OnSubscribeOnAssembly;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssembly.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly;, "Lrx/internal/operators/OnSubscribeOnAssembly<TT;>;"
    .local p1, "source":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeOnAssembly;->source:Lrx/Observable$OnSubscribe;

    .line 43
    invoke-static {}, Lrx/internal/operators/OnSubscribeOnAssembly;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssembly;->stacktrace:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static createStacktrace()Ljava/lang/String;
    .registers 9

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 49
    .local v6, "stes":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Assembly trace:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_82

    aget-object v1, v0, v2

    .line 52
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "row":Ljava/lang/String;
    sget-boolean v7, Lrx/internal/operators/OnSubscribeOnAssembly;->fullStackTrace:Z

    if-nez v7, :cond_78

    .line 54
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_28

    .line 51
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 57
    :cond_28
    const-string v7, "RxJavaHooks."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 60
    const-string v7, "OnSubscribeOnAssembly"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 63
    const-string v7, ".junit.runner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 66
    const-string v7, ".junit4.runner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 69
    const-string v7, ".junit.internal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 72
    const-string v7, "sun.reflect"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 75
    const-string v7, "java.lang.Thread."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 78
    const-string v7, "ThreadPoolExecutor"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 81
    const-string v7, "org.apache.catalina."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 84
    const-string v7, "org.apache.tomcat."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 88
    :cond_78
    const-string v7, "\n at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 91
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "row":Ljava/lang/String;
    :cond_82
    const-string v7, "\nOriginal exception:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly;, "Lrx/internal/operators/OnSubscribeOnAssembly<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeOnAssembly;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OnSubscribeOnAssembly;, "Lrx/internal/operators/OnSubscribeOnAssembly<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeOnAssembly;->source:Lrx/Observable$OnSubscribe;

    new-instance v1, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeOnAssembly;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;-><init>(Lrx/Subscriber;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
