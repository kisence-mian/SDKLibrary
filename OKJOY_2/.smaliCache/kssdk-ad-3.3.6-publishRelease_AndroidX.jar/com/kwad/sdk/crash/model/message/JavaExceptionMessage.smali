.class public Lcom/kwad/sdk/crash/model/message/JavaExceptionMessage;
.super Lcom/kwad/sdk/crash/model/message/ExceptionMessage;


# static fields
.field private static final serialVersionUID:J = -0x21727bfd7c02f727L


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/crash/model/message/JavaExceptionMessage;->mExceptionType:I

    return-void
.end method


# virtual methods
.method protected getTypePrefix()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
