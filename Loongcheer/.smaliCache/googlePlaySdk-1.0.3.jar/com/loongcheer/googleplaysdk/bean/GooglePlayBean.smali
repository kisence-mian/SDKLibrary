.class public Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;
.super Ljava/lang/Object;
.source "GooglePlayBean.java"


# instance fields
.field public playId:Ljava/lang/String;

.field public playToken:Ljava/lang/String;

.field public playType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayId()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;->playId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayToken()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;->playToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;->playType:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayId(Ljava/lang/String;)V
    .registers 2
    .param p1, "playId"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;->playId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPlayToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "playToken"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;->playToken:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPlayType(Ljava/lang/String;)V
    .registers 2
    .param p1, "playType"    # Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayBean;->playType:Ljava/lang/String;

    .line 15
    return-void
.end method
