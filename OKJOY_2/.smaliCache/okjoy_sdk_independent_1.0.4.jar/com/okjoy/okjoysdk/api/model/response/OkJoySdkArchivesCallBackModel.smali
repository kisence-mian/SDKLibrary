.class public Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;
.super Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;
.source ""


# instance fields
.field public address:Ljava/lang/String;

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->setAddress(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkArchivesCallBackModel;->filePath:Ljava/lang/String;

    return-void
.end method
