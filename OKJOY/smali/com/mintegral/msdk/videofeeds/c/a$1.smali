.class final Lcom/mintegral/msdk/videofeeds/c/a$1;
.super Ljava/lang/Object;
.source "AdViewVideoFeedsPlayerListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videofeeds/c/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic b:Lcom/mintegral/msdk/videofeeds/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/c/a;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/c/a$1;->b:Lcom/mintegral/msdk/videofeeds/c/a;

    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/c/a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a$1;->b:Lcom/mintegral/msdk/videofeeds/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/c/a;->a(Lcom/mintegral/msdk/videofeeds/c/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 362
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/c/a$1;->b:Lcom/mintegral/msdk/videofeeds/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/c/a;->a(Lcom/mintegral/msdk/videofeeds/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/c/a$1;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/m;->b(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 368
    :cond_1f
    :goto_1f
    return-void

    .line 366
    :catch_20
    move-exception v0

    invoke-static {}, Lcom/mintegral/msdk/videofeeds/c/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "campain can\'t insert db"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
