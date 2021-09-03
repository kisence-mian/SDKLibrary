.class final Lcom/tds/common/reactor/plugins/RxJavaHooks$1;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action1;


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
        "Lcom/tds/common/reactor/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 92
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 95
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getErrorHandler()Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method
