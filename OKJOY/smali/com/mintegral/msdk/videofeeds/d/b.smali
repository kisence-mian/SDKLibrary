.class public abstract Lcom/mintegral/msdk/videofeeds/d/b;
.super Lcom/mintegral/msdk/videofeeds/d/c;
.source "VideoFeedsLoadVideoResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
.end method

.method public final b(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/mintegral/msdk/videofeeds/d/b;->a(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/videofeeds/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 20
    return-void
.end method
