.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProtocolResponseModel$OkJoyDataModel;->url:Ljava/lang/String;

    return-void
.end method
