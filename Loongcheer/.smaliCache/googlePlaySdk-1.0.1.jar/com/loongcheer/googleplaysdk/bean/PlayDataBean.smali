.class public Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;
.super Ljava/lang/Object;
.source "PlayDataBean.java"


# instance fields
.field public originalJson:Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;

.field public purchaseToken:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "originalJson"    # Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;
    .param p2, "purchaseToken"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->originalJson:Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;

    .line 37
    iput-object p2, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->purchaseToken:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->signature:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getOriginalJson()Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->originalJson:Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setOriginalJson(Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;)V
    .registers 2
    .param p1, "originalJson"    # Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;

    .line 32
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->originalJson:Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;

    .line 33
    return-void
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "purchaseToken"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->purchaseToken:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2
    .param p1, "signature"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/PlayDataBean;->signature:Ljava/lang/String;

    .line 25
    return-void
.end method
