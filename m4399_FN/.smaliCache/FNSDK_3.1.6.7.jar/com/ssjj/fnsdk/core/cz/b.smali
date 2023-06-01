.class Lcom/ssjj/fnsdk/core/cz/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/b;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSucceed()V
    .registers 1

    return-void
.end method
