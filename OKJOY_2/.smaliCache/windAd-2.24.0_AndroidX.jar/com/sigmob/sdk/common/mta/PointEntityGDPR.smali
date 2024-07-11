.class public final Lcom/sigmob/sdk/common/mta/PointEntityGDPR;
.super Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/mta/PointEntitySuper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAge_restricted()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getGdpr_dialog_region()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getGdpr_region()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_consent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->d:Ljava/lang/String;

    return-void
.end method

.method public setAge_restricted(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->c:Ljava/lang/String;

    return-void
.end method

.method public setGdpr_dialog_region(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->e:Ljava/lang/String;

    return-void
.end method

.method public setGdpr_region(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->f:Ljava/lang/String;

    return-void
.end method

.method public setUser_consent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->b:Ljava/lang/String;

    return-void
.end method
