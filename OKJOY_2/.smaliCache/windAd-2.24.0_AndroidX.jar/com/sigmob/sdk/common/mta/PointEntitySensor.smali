.class public final Lcom/sigmob/sdk/common/mta/PointEntitySensor;
.super Lcom/sigmob/sdk/common/mta/PointEntityBase;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMotion_after()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySensor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMotion_before()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySensor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMotion_interval()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySensor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setMotion_after(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySensor;->c:Ljava/lang/String;

    return-void
.end method

.method public setMotion_before(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySensor;->b:Ljava/lang/String;

    return-void
.end method

.method public setMotion_interval(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySensor;->d:Ljava/lang/String;

    return-void
.end method
