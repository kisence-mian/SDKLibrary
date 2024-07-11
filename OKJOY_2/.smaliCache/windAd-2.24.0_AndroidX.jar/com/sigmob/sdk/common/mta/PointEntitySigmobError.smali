.class public final Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;
.super Lcom/sigmob/sdk/common/mta/PointEntitySigmob;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;-><init>()V

    return-void
.end method

.method public static SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;-><init>()V

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setCategory(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setSub_category(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setError_message(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getError_message()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setError_message(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->b:Ljava/lang/String;

    return-void
.end method
