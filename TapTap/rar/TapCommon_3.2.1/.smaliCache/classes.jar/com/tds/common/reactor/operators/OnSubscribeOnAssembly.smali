.class public final Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssembly.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lcom/tds/common/reactor/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly<TT;>;"
    .local p1, "source":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->source:Lcom/tds/common/reactor/Observable$OnSubscribe;

    .line 28
    invoke-static {}, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->stacktrace:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static createStacktrace()Ljava/lang/String;
    .registers 8

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 34
    .local v0, "stacktraceElements":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Assembly trace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_8c

    aget-object v4, v0, v3

    .line 37
    .local v4, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "row":Ljava/lang/String;
    sget-boolean v6, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->fullStackTrace:Z

    if-nez v6, :cond_80

    .line 39
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_26

    .line 40
    goto/16 :goto_89

    .line 42
    :cond_26
    const-string v6, "RxJavaHooks."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 43
    goto :goto_89

    .line 45
    :cond_2f
    const-string v6, "OnSubscribeOnAssembly"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 46
    goto :goto_89

    .line 48
    :cond_38
    const-string v6, ".junit.runner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 49
    goto :goto_89

    .line 51
    :cond_41
    const-string v6, ".junit4.runner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 52
    goto :goto_89

    .line 54
    :cond_4a
    const-string v6, ".junit.internal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 55
    goto :goto_89

    .line 57
    :cond_53
    const-string v6, "sun.reflect"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 58
    goto :goto_89

    .line 60
    :cond_5c
    const-string v6, "java.lang.Thread."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 61
    goto :goto_89

    .line 63
    :cond_65
    const-string v6, "ThreadPoolExecutor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 64
    goto :goto_89

    .line 66
    :cond_6e
    const-string v6, "org.apache.catalina."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 67
    goto :goto_89

    .line 69
    :cond_77
    const-string v6, "org.apache.tomcat."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 70
    goto :goto_89

    .line 73
    :cond_80
    const-string v6, "\n at "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .end local v4    # "e":Ljava/lang/StackTraceElement;
    .end local v5    # "row":Ljava/lang/String;
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 76
    :cond_8c
    const-string v2, "\nOriginal exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly<TT;>;"
    .local p1, "t":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->source:Lcom/tds/common/reactor/Observable$OnSubscribe;

    new-instance v1, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;

    iget-object v2, p0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly$OnAssemblySubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tds/common/reactor/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 14
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;, "Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly<TT;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
