.class final Lrx/plugins/RxJavaHooks$5;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1",
        "<",
        "Lrx/Subscription;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$5;->call(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscription;)Lrx/Subscription;
    .registers 3
    .param p1, "f"    # Lrx/Subscription;

    .prologue
    .line 135
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
