.class final Lcom/mintegral/msdk/reward/a/c$c;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private b:Ljava/lang/String;

.field private c:Lcom/mintegral/msdk/videocommon/e/c;

.field private d:Lcom/mintegral/msdk/reward/a/c;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    .registers 5

    .prologue
    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$c;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1312
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$c;->b:Ljava/lang/String;

    .line 1313
    iput-object p4, p0, Lcom/mintegral/msdk/reward/a/c$c;->c:Lcom/mintegral/msdk/videocommon/e/c;

    .line 1314
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$c;->d:Lcom/mintegral/msdk/reward/a/c;

    .line 1315
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$c;->d:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_f

    .line 1321
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$c;->d:Lcom/mintegral/msdk/reward/a/c;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$c;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$c;->c:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 1323
    :cond_f
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$c;->d:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_b

    .line 1328
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$c;->d:Lcom/mintegral/msdk/reward/a/c;

    const-string v1, "TemplateUrl source download failed"

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_b
    return-void
.end method
