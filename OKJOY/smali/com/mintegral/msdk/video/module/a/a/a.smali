.class public Lcom/mintegral/msdk/video/module/a/a/a;
.super Lcom/mintegral/msdk/video/module/a/a/f;
.source "CommonContainerNotifyListener.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/a;->a:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/mintegral/msdk/video/module/a/a/a;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 25
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 7

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 30
    packed-switch p1, :pswitch_data_54

    .line 58
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 34
    :pswitch_7
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 39
    :pswitch_11
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/a;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_6

    .line 41
    :try_start_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/a;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-999"

    const-string v3, "-999"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 46
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_43} :catch_49

    .line 54
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 51
    :catch_49
    move-exception v0

    .line 52
    const-string v1, "NotifyListener"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    .line 30
    :pswitch_data_54
    .packed-switch 0x67
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_11
    .end packed-switch
.end method
