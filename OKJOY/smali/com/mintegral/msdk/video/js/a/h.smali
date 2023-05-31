.class public final Lcom/mintegral/msdk/video/js/a/h;
.super Lcom/mintegral/msdk/video/js/a/b;
.source "JSCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/js/a/h$a;
    }
.end annotation


# instance fields
.field private l:Landroid/app/Activity;

.field private m:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/b;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/mintegral/msdk/video/js/a/h;->m:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 11

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 167
    :goto_7
    return-object p2

    .line 102
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_11f

    .line 103
    :cond_10
    const-string v0, "notice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 105
    :try_start_18
    invoke-static {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    .line 107
    if-nez v1, :cond_23

    move-object v1, p2

    .line 110
    :cond_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e5

    .line 111
    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/js/a/h;->a(Lorg/json/JSONObject;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    const-string v2, "-999"

    const-string v0, "-999"

    .line 117
    if-eqz v3, :cond_6f

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    sget-object v4, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_6f
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lcom/mintegral/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    .line 125
    if-eqz v3, :cond_e5

    .line 126
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    :goto_89
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 129
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    sget-object v7, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_af

    sget-object v7, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 133
    :cond_af
    iget-object v7, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    :cond_c2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_89

    .line 137
    :cond_d1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V
    :try_end_e5
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_e5} :catch_11c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_e5} :catch_119

    :cond_e5
    move-object p2, v1

    .line 145
    goto/16 :goto_7

    .line 150
    :cond_e8
    :try_start_e8
    invoke-static {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v1

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 153
    :goto_f5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 154
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_108
    .catch Lorg/json/JSONException; {:try_start_e8 .. :try_end_108} :catch_109

    goto :goto_f5

    .line 160
    :catch_109
    move-exception v0

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 158
    :cond_10f
    :try_start_10f
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Lorg/json/JSONObject;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_116
    .catch Lorg/json/JSONException; {:try_start_10f .. :try_end_116} :catch_109

    move-object p2, v0

    .line 163
    goto/16 :goto_7

    .line 144
    :catch_119
    move-exception v0

    goto/16 :goto_7

    .line 142
    :catch_11c
    move-exception v0

    goto/16 :goto_7

    :cond_11f
    move-object p2, v0

    goto/16 :goto_7
.end method

.method private static a(Lorg/json/JSONObject;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 176
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 178
    invoke-virtual {p1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 183
    :cond_f
    :goto_f
    return-void

    .line 181
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private m()Lcom/mintegral/msdk/click/a;
    .registers 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->i:Lcom/mintegral/msdk/click/a;

    if-nez v0, :cond_13

    .line 299
    new-instance v0, Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->i:Lcom/mintegral/msdk/click/a;

    .line 301
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->i:Lcom/mintegral/msdk/click/a;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 12

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b;->a(ILjava/lang/String;)V

    .line 257
    packed-switch p1, :pswitch_data_6a

    .line 277
    :goto_6
    return-void

    .line 259
    :pswitch_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, "event"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v1, "template"

    const-string v3, "-1"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string v1, "layout"

    const-string v4, "-1"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    const-string v1, "unit_id"

    iget-object v5, p0, Lcom/mintegral/msdk/video/js/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v7

    .line 265
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000039"

    iget-object v6, p0, Lcom/mintegral/msdk/video/js/a/h;->m:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 267
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_5d} :catch_5e

    goto :goto_6

    .line 274
    :catch_5e
    move-exception v0

    .line 275
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 257
    nop

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public final b(ILjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b;->b(ILjava/lang/String;)V

    .line 189
    packed-switch p1, :pswitch_data_7e

    .line 241
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 195
    :pswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->m:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_8

    .line 198
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->m:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0, p2, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16} :catch_50

    move-result-object v0

    .line 204
    :try_start_17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    sget-object v4, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2a} :catch_5b

    move-result v0

    .line 212
    :goto_2b
    :try_start_2b
    iget-object v4, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    const/4 v5, 0x2

    if-ne v0, v5, :cond_31

    move v1, v2

    :cond_31
    invoke-interface {v4, v1}, Lcom/mintegral/msdk/video/js/b$a;->a(Z)V

    .line 215
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/h;->m()Lcom/mintegral/msdk/click/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 217
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/h;->m()Lcom/mintegral/msdk/click/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 219
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mintegral/msdk/video/module/b/a;->d(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_4f} :catch_50

    goto :goto_8

    .line 238
    :catch_50
    move-exception v0

    .line 239
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 208
    :catch_5b
    move-exception v0

    .line 209
    :try_start_5c
    const-string v4, "js"

    const-string v5, "INSTALL"

    invoke-static {v4, v5, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    move v0, v1

    goto :goto_2b

    .line 229
    :pswitch_65
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->h:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->m()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_78

    .line 230
    new-instance v0, Lcom/mintegral/msdk/video/js/a/b$b;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/video/js/a/b$b;-><init>(Lcom/mintegral/msdk/video/js/b;Lcom/mintegral/msdk/video/js/b$a;)V

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Lcom/mintegral/msdk/video/js/b$a;)V

    .line 232
    :cond_78
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mintegral/msdk/video/js/a/h;->b(ILjava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_7c} :catch_50

    goto :goto_8

    .line 189
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_65
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    new-instance v0, Lcom/mintegral/msdk/video/js/a/h$a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mintegral/msdk/video/js/a/h$a;-><init>(Landroid/content/Context;)V

    .line 68
    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    const-string v3, "playVideoMute"

    iget v4, p0, Lcom/mintegral/msdk/video/js/a/h;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v3, "sdkSetting"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "device"

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/js/a/h$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 73
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h;->m:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    const-string v2, "campaignList"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1306
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/a/h;->h:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v2, :cond_4e

    .line 1307
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->h:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->S()Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    :cond_4e
    const-string v2, "unitSetting"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 80
    const-string v2, "appSetting"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_72
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b$a;->a()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/a/h;->a:Z
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_7a} :catch_7f

    .line 87
    :goto_7a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7a
.end method

.method public final c(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/b;->c(ILjava/lang/String;)V

    .line 247
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/b$a;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 251
    :goto_8
    return-void

    .line 248
    :catch_9
    move-exception v0

    .line 249
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 289
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/b;->d()V

    .line 291
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    .line 295
    :goto_8
    return-void

    .line 292
    :catch_9
    move-exception v0

    .line 293
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/b;->f()V

    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    if-eqz v0, :cond_c

    .line 283
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/h;->j:Lcom/mintegral/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b$a;->b()V

    .line 285
    :cond_c
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/mintegral/msdk/video/js/a/h;->n:I

    .line 61
    return-void
.end method

.method public final l()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/mintegral/msdk/video/js/a/h;->n:I

    return v0
.end method
