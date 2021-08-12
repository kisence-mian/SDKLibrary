.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public agetype:Ljava/lang/String;

.field public iscopyright:Ljava/lang/String;

.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getAgetype()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->agetype:Ljava/lang/String;

    return-object v0
.end method

.method public getIscopyright()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->iscopyright:Ljava/lang/String;

    return-object v0
.end method

.method public setAgetype(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->agetype:Ljava/lang/String;

    return-void
.end method

.method public setIscopyright(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel$OkJoyDataModel;->iscopyright:Ljava/lang/String;

    return-void
.end method
