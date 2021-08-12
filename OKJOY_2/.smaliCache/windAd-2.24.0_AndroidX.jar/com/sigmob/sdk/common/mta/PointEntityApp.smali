.class public Lcom/sigmob/sdk/common/mta/PointEntityApp;
.super Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->b:Ljava/lang/String;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->e:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->c:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityApp;->d:Ljava/lang/String;

    return-void
.end method
