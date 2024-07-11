.class public final Lcom/sigmob/sdk/common/mta/PointEntityClick;
.super Lcom/sigmob/sdk/common/mta/PointEntityBase;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getClick_duration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_valid_click()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPressure()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setClick_duration(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->c:Ljava/lang/String;

    return-void
.end method

.method public setIs_valid_click(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->d:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->b:Ljava/lang/String;

    return-void
.end method

.method public setPressure(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->f:Ljava/lang/String;

    return-void
.end method

.method public setTouchSize(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->g:Ljava/lang/String;

    return-void
.end method

.method public setTouchType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityClick;->e:Ljava/lang/String;

    return-void
.end method
