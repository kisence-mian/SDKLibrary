.class final Lcom/mintegral/msdk/mtgbanner/common/util/a$1;
.super Ljava/lang/Object;
.source "BannerDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/base/entity/CampaignUnit;

.field final synthetic d:Lcom/mintegral/msdk/mtgbanner/common/util/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/util/a;Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 5

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->d:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->c:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    if-eqz v0, :cond_10

    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->a:Lcom/mintegral/msdk/mtgbanner/common/b/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->c:Lcom/mintegral/msdk/base/entity/CampaignUnit;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/util/a$1;->d:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/util/a;)Z

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/b;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    .line 38
    :cond_10
    return-void
.end method
