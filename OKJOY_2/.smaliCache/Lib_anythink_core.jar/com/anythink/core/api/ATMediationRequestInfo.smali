.class public abstract Lcom/anythink/core/api/ATMediationRequestInfo;
.super Ljava/lang/Object;


# instance fields
.field protected adSourceId:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field protected networkFirmId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdSourceId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->adSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkFirmId()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->networkFirmId:I

    return v0
.end method

.method public abstract getRequestParamMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public setAdSourceId(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->adSourceId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method
