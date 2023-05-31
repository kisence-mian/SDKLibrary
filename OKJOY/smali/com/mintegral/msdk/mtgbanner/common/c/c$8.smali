.class final Lcom/mintegral/msdk/mtgbanner/common/c/c$8;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic c:Lcom/mintegral/msdk/mtgbanner/common/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 803
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;->c:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 810
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/m;->b(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 814
    :goto_13
    return-void

    .line 812
    :catch_14
    move-exception v0

    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "campain can\'t insert db"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method
