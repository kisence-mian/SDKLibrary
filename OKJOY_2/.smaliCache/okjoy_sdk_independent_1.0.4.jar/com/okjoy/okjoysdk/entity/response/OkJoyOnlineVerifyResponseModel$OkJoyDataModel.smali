.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;

.field public verify:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getVerify()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;->verify:Ljava/lang/String;

    return-object v0
.end method

.method public setVerify(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyOnlineVerifyResponseModel$OkJoyDataModel;->verify:Ljava/lang/String;

    return-void
.end method
