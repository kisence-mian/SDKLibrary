.class Lcom/tds/common/region/RegionBean;
.super Ljava/lang/Object;
.source "RegionBean.java"


# instance fields
.field public regionCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/region/RegionBean;->regionCode:I

    .line 10
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/region/RegionBean;->regionCode:I

    .line 13
    if-eqz p1, :cond_10

    .line 14
    const-string v1, "region"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tds/common/region/RegionBean;->regionCode:I

    .line 16
    :cond_10
    return-void
.end method
