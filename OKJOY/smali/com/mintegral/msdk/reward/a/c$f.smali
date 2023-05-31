.class final Lcom/mintegral/msdk/reward/a/c$f;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/mintegral/msdk/videocommon/e/c;

.field private e:I

.field private f:I

.field private g:Lcom/mintegral/msdk/reward/a/c;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;IILcom/mintegral/msdk/reward/a/c;)V
    .registers 8

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$f;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 318
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$f;->b:Ljava/lang/String;

    .line 319
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$f;->c:Ljava/lang/String;

    .line 320
    iput-object p4, p0, Lcom/mintegral/msdk/reward/a/c$f;->d:Lcom/mintegral/msdk/videocommon/e/c;

    .line 321
    iput p5, p0, Lcom/mintegral/msdk/reward/a/c$f;->e:I

    .line 322
    iput p6, p0, Lcom/mintegral/msdk/reward/a/c$f;->f:I

    .line 323
    iput-object p7, p0, Lcom/mintegral/msdk/reward/a/c$f;->g:Lcom/mintegral/msdk/reward/a/c;

    .line 324
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 329
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry load template url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v1, Lcom/mintegral/msdk/videocommon/a$a;

    invoke-direct {v1}, Lcom/mintegral/msdk/videocommon/a$a;-><init>()V

    .line 331
    new-instance v6, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-virtual {v1, v6}, Lcom/mintegral/msdk/videocommon/a$a;->a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 333
    new-instance v7, Lcom/mintegral/msdk/video/js/a/h;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$f;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v7, v0, v2}, Lcom/mintegral/msdk/video/js/a/h;-><init>(Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 334
    iget v0, p0, Lcom/mintegral/msdk/reward/a/c$f;->e:I

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(I)V

    .line 335
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$f;->c:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$f;->d:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 337
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$j;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$f;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c$f;->g:Lcom/mintegral/msdk/reward/a/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/reward/a/c$j;-><init>(Lcom/mintegral/msdk/videocommon/a$a;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/reward/a/c$f;Landroid/os/Handler;)V

    .line 338
    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 339
    invoke-virtual {v6, v7}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 340
    iget v0, p0, Lcom/mintegral/msdk/reward/a/c$f;->f:I

    sparse-switch v0, :sswitch_data_78

    .line 351
    :goto_58
    return-void

    .line 342
    :sswitch_59
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$f;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$f;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 351
    :catch_6f
    move-exception v0

    goto :goto_58

    .line 345
    :sswitch_71
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$f;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_6f

    goto :goto_58

    .line 340
    nop

    :sswitch_data_78
    .sparse-switch
        0x9 -> :sswitch_59
        0x10 -> :sswitch_71
    .end sparse-switch
.end method
