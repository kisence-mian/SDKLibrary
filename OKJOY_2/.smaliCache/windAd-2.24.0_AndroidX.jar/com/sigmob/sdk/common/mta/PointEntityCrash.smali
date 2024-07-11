.class public Lcom/sigmob/sdk/common/mta/PointEntityCrash;
.super Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;-><init>()V

    return-void
.end method

.method public static WindCrash(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityCrash;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityCrash;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCrash;-><init>()V

    const-string v1, "402"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->setCrashMessage(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCrashMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setCrashMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityCrash;->b:Ljava/lang/String;

    return-void
.end method
