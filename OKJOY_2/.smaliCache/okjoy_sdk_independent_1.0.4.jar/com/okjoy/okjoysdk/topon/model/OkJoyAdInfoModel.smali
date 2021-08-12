.class public Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;
    }
.end annotation


# instance fields
.field public adType:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

.field public errorMsg:Ljava/lang/String;

.field public placementID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->adType:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->placementID:Ljava/lang/String;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdType()Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->adType:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;->placementID:Ljava/lang/String;

    return-object v0
.end method
