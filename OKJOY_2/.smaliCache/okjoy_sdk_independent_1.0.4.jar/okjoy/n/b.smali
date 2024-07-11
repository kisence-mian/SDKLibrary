.class public final Lokjoy/n/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokjoy/h/c<",
        "Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/n/c;


# direct methods
.method public constructor <init>(Lokjoy/n/c;)V
    .registers 2

    iput-object p1, p0, Lokjoy/n/b;->a:Lokjoy/n/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/b;->a:Lokjoy/n/c;

    if-eqz p1, :cond_13

    check-cast p1, Lokjoy/n/e;

    .line 1
    iget-object v0, p1, Lokjoy/n/e;->b:Lokjoy/n/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokjoy/n/k;->c(Lokjoy/n/k;Z)Z

    iget-object p1, p1, Lokjoy/n/e;->b:Lokjoy/n/k;

    .line 2
    iput-object p2, p1, Lokjoy/n/k;->e:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel;

    .line 1
    iget-object v0, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel$OkJoyDataModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel$OkJoyDataModel;->getList()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;

    invoke-direct {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;-><init>()V

    iget-object v2, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel$OkJoyDataModel;->getApp_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->setAppId(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel$OkJoyDataModel;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyAdvParamsResponseModel$OkJoyDataModel;->getApp_key()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->setAppKey(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lokjoy/n/a;

    invoke-direct {v2, p0}, Lokjoy/n/a;-><init>(Lokjoy/n/b;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->setAdvPlacementModelList(Ljava/util/List;)V

    iget-object p1, p0, Lokjoy/n/b;->a:Lokjoy/n/c;

    if-eqz p1, :cond_dd

    check-cast p1, Lokjoy/n/e;

    .line 2
    iget-object v0, p1, Lokjoy/n/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lokjoy/n/e;->b:Lokjoy/n/k;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lokjoy/n/k;->c(Lokjoy/n/k;Z)Z

    iget-object v0, p1, Lokjoy/n/e;->b:Lokjoy/n/k;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvParamsModel;->getAdvPlacementModelList()Ljava/util/List;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lokjoy/n/k;->d:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lokjoy/n/e;->b:Lokjoy/n/k;

    iget-object p1, p1, Lokjoy/n/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_db

    .line 5
    invoke-static {p1}, Lokjoy/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "WIFI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    :cond_6e
    goto :goto_dd

    :cond_6f
    iget-object p1, v0, Lokjoy/n/k;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_75
    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getConfig()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v3, v0, Lokjoy/n/k;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    new-instance v3, Lokjoy/n/j;

    invoke-direct {v3, v0, v1, v2}, Lokjoy/n/j;-><init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    invoke-virtual {v2, v3}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    goto :goto_75

    .line 7
    :cond_a4
    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokjoy/n/k;->c(Ljava/lang/String;)V

    goto :goto_75

    :cond_b8
    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getConfig()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/anythink/banner/api/ATBannerView;

    iget-object v3, v0, Lokjoy/n/k;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    new-instance v3, Lokjoy/n/d;

    invoke-direct {v3, v0, v1, v2}, Lokjoy/n/d;-><init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v2, v3}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    goto :goto_75

    :cond_db
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_dd
    :goto_dd
    return-void
.end method
