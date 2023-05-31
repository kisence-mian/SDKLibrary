.class final Lcom/mintegral/msdk/reward/a/c$b;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    if-eqz p1, :cond_7

    .line 1827
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$b;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 1829
    :cond_7
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$b;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1830
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$b;->c:Ljava/lang/String;

    .line 1831
    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$b;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_b

    .line 1841
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$b;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1843
    :cond_b
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1836
    return-void
.end method
