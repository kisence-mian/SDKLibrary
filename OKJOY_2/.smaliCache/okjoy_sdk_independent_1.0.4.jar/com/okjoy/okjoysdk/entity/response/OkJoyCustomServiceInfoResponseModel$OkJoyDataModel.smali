.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public show:Ljava/lang/String;

.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getShow()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel$OkJoyDataModel;->show:Ljava/lang/String;

    return-object v0
.end method

.method public setShow(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyCustomServiceInfoResponseModel$OkJoyDataModel;->show:Ljava/lang/String;

    return-void
.end method
