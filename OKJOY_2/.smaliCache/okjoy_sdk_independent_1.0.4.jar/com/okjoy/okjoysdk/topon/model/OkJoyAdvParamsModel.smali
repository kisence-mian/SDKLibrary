.class public Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public advPlacementModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;",
            ">;"
        }
    .end annotation
.end field

.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvPlacementModelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->advPlacementModelList:Ljava/util/List;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvPlacementModelList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->advPlacementModelList:Ljava/util/List;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->appKey:Ljava/lang/String;

    return-void
.end method
