.class final Lcom/tds/common/reactor/plugins/RxJavaHooks$2;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/plugins/RxJavaHooks;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Func2<",
        "Lcom/tds/common/reactor/Observable;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;
    .registers 4
    .param p1, "t1"    # Lcom/tds/common/reactor/Observable;
    .param p2, "t2"    # Lcom/tds/common/reactor/Observable$OnSubscribe;

    .line 102
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getObservableExecutionHook()Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;->onSubscribeStart(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 99
    check-cast p1, Lcom/tds/common/reactor/Observable;

    check-cast p2, Lcom/tds/common/reactor/Observable$OnSubscribe;

    invoke-virtual {p0, p1, p2}, Lcom/tds/common/reactor/plugins/RxJavaHooks$2;->call(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object p1

    return-object p1
.end method
