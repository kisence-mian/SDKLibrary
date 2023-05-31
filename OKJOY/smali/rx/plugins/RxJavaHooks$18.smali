.class final Lrx/plugins/RxJavaHooks$18;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->enableAssemblyTracking()V
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
        "Lrx/Single$OnSubscribe;",
        "Lrx/Single$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1188
    check-cast p1, Lrx/Single$OnSubscribe;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaHooks$18;->call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .registers 3
    .param p1, "f"    # Lrx/Single$OnSubscribe;

    .prologue
    .line 1191
    new-instance v0, Lrx/internal/operators/OnSubscribeOnAssemblySingle;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeOnAssemblySingle;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method
