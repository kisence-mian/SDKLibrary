.class public final Lcom/mintegral/msdk/video/js/a/k;
.super Lcom/mintegral/msdk/video/js/a/e;
.source "JSRewardVideoV1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/js/a/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/mintegral/msdk/video/module/MintegralContainerView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mintegral/msdk/video/module/MintegralContainerView;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/e;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    .line 41
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_63

    .line 167
    new-instance v1, Lcom/mintegral/msdk/video/js/a/k$a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/video/js/a/k$a;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    .line 169
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 170
    const-string v4, "campaignList"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "device"

    invoke-virtual {v1}, Lcom/mintegral/msdk/video/js/a/k$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "unit_id"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "sdk_info"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "unitSetting"

    invoke-virtual {v3, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 176
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 178
    const-string v2, "appSetting"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_5f
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_64

    move-result-object v0

    .line 186
    :cond_63
    :goto_63
    return-object v0

    .line 184
    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-nez v0, :cond_c

    .line 46
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/e;->a()Ljava/lang/String;

    .line 63
    :goto_7
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/e;->a()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 49
    :cond_c
    :try_start_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getCampaign()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getUnitID()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "MAL_10.2.42,3.0.1"

    .line 1190
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 1191
    const/4 v0, 0x0

    move-object v1, v0

    .line 54
    :goto_2a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    if-eqz v1, :cond_35

    .line 56
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->S()Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    :cond_35
    invoke-static {v2, v3, v4, v0}, Lcom/mintegral/msdk/video/js/a/k;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1193
    :cond_3a
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_48} :catch_4b

    move-result-object v0

    move-object v1, v0

    goto :goto_2a

    .line 60
    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/e;->a(Ljava/lang/String;)V

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_1e

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->triggerCloseBtn(Ljava/lang/String;)V

    .line 93
    :cond_1e
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_24

    .line 98
    :cond_23
    :goto_23
    return-void

    .line 96
    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/e;->b(Ljava/lang/String;)V

    .line 126
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 127
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 128
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 136
    :cond_1b
    :goto_1b
    return-void

    .line 129
    :cond_1c
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_1b

    .line 134
    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/e;->c(Ljava/lang/String;)V

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_16

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->handlerPlayableException(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_17

    .line 120
    :cond_16
    :goto_16
    return-void

    .line 118
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16
.end method

.method public final notifyCloseBtn(I)V
    .registers 3

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/e;->notifyCloseBtn(I)V

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->notifyCloseBtn(I)V

    .line 106
    :cond_c
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/e;->toggleCloseBtn(I)V

    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/k;->b:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->toggleCloseBtn(I)V

    .line 81
    :cond_c
    return-void
.end method
