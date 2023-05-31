.class public abstract Lcom/mintegral/msdk/rover/h;
.super Lcom/mintegral/msdk/base/common/net/a/c;
.source "RoverResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/mintegral/msdk/rover/RoverCampaignUnit;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 8
    check-cast p1, Lorg/json/JSONObject;

    .line 1014
    invoke-static {p1}, Lcom/mintegral/msdk/rover/RoverCampaignUnit;->parseCampaignUnit(Lorg/json/JSONObject;)Lcom/mintegral/msdk/rover/RoverCampaignUnit;

    move-result-object v0

    .line 1015
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/rover/h;->a(Lcom/mintegral/msdk/rover/RoverCampaignUnit;)V

    .line 8
    return-void
.end method
