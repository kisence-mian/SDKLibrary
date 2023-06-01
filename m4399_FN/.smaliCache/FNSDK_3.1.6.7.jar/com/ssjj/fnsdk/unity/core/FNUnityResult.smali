.class public Lcom/ssjj/fnsdk/unity/core/FNUnityResult;
.super Lcom/ssjj/fnsdk/lib/sdk/FNParam;


# instance fields
.field public code:I

.field public data:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 4

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    iput p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->code:I

    iput-object p2, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->data:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->fromJson(Ljava/lang/String;)V

    return-void
.end method
