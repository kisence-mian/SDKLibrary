.class final Lrx/plugins/RxJavaHooks$4;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Lrx/Single;",
        "Lrx/Observable$OnSubscribe;",
        "Lrx/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lrx/Single;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Observable$OnSubscribe;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/plugins/RxJavaHooks$4;->call(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .registers 4
    .param p1, "t1"    # Lrx/Single;
    .param p2, "t2"    # Lrx/Observable$OnSubscribe;

    .prologue
    .line 128
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method
