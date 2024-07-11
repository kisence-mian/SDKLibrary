.class Lcom/sigmob/windad/base/WindAdRequestController$10$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController$10;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindAdRequestController$10;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController$10;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10$2;->a:Lcom/sigmob/windad/base/WindAdRequestController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntityCommon;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntityWind;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setSub_category(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$10$2;->a:Lcom/sigmob/windad/base/WindAdRequestController$10;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v0, v0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
