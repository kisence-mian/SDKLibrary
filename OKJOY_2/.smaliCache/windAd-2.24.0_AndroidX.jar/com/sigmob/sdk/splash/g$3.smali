.class Lcom/sigmob/sdk/splash/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/sigmob/sdk/splash/g;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g$3;->c:Lcom/sigmob/sdk/splash/g;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/g$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/sigmob/sdk/splash/g$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setPlacement_id(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setAdtype(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/splash/g$3;->b:I

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g$3;->c:Lcom/sigmob/sdk/splash/g;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/g;->f(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->setUrl(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
