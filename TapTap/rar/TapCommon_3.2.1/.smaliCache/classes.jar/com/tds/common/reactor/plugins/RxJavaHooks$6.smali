.class final Lcom/tds/common/reactor/plugins/RxJavaHooks$6;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


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
        "Lcom/tds/common/reactor/functions/Func1<",
        "Lcom/tds/common/reactor/Observable$Operator;",
        "Lcom/tds/common/reactor/Observable$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable$Operator;
    .registers 3
    .param p1, "t"    # Lcom/tds/common/reactor/Observable$Operator;

    .line 130
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getObservableExecutionHook()Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;->onLift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable$Operator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 127
    check-cast p1, Lcom/tds/common/reactor/Observable$Operator;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks$6;->call(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable$Operator;

    move-result-object p1

    return-object p1
.end method
