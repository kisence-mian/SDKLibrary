.class final Lcom/tds/common/reactor/plugins/RxJavaHooks$4;
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
        "Lcom/tds/common/reactor/functions/Action0;",
        "Lcom/tds/common/reactor/functions/Action0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;
    .registers 3
    .param p1, "a"    # Lcom/tds/common/reactor/functions/Action0;

    .line 116
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getSchedulersHook()Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->onSchedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 113
    check-cast p1, Lcom/tds/common/reactor/functions/Action0;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks$4;->call(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object p1

    return-object p1
.end method
