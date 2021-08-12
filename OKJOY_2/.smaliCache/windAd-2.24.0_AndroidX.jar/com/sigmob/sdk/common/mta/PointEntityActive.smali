.class public Lcom/sigmob/sdk/common/mta/PointEntityActive;
.super Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;-><init>()V

    return-void
.end method

.method public static ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityActive;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityActive;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityActive;-><init>()V

    const-string v1, "107"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->setActive_id(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->setDuration(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->setTimestamp(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityActive;->commit()V

    return-object v0
.end method


# virtual methods
.method public getActive_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityActive;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityActive;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setActive_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityActive;->b:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityActive;->c:Ljava/lang/String;

    return-void
.end method
