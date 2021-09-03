.class final Lcom/tds/common/reactor/plugins/RxJavaHooks$8;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/plugins/RxJavaHooks;->enableAssemblyTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Func1<",
        "Lcom/tds/common/reactor/Observable$OnSubscribe;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lcom/tds/common/reactor/Observable$OnSubscribe;

    .line 753
    new-instance v0, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeOnAssembly;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 750
    check-cast p1, Lcom/tds/common/reactor/Observable$OnSubscribe;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks$8;->call(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;

    move-result-object p1

    return-object p1
.end method
