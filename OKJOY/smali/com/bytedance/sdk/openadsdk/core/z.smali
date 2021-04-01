.class public Lcom/bytedance/sdk/openadsdk/core/z;
.super Ljava/lang/Object;
.source "WebHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 13
    .param p4    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 163
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_121

    if-nez p4, :cond_c

    if-eqz p5, :cond_121

    .line 164
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v1, "ad_pending_download"

    invoke-static {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 167
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->h()Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&orientation=portrait"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    :cond_53
    :goto_53
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "web_title"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "sdk_version"

    const/16 v3, 0xb89

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "adid"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    if-nez v1, :cond_14a

    move-object v1, v2

    .line 187
    :goto_81
    const-string v3, "icon_url"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "event_tag"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "source"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_99

    .line 191
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    :cond_99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_154

    .line 195
    const-string v1, "multi_process_materialmeta"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :goto_ac
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    if-ne v1, v4, :cond_10b

    .line 203
    if-eqz p4, :cond_167

    .line 204
    instance-of v1, p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    if-eqz v1, :cond_164

    .line 205
    check-cast p4, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/multipro/b/a$a;->a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object v1

    .line 207
    :goto_be
    if-eqz v1, :cond_cd

    .line 208
    const-string v2, "multi_process_data"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_cd
    :goto_cd
    if-eqz p5, :cond_e2

    .line 212
    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_e2

    .line 214
    const-string v2, "multi_process_data"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_e2
    if-eqz v1, :cond_10b

    .line 218
    const-string v2, "video_is_auto_play"

    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->d:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const-string v2, "videoDataModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoDataModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_10b
    return-object v0

    .line 171
    :cond_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?orientation=portrait"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_53

    .line 174
    :cond_121
    instance-of v0, p4, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_12e

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_53

    .line 176
    :cond_12e
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    if-ne v0, v4, :cond_141

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    if-nez v0, :cond_141

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_53

    .line 179
    :cond_141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_53

    .line 186
    :cond_14a
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_81

    .line 197
    :cond_154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 198
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    goto/16 :goto_ac

    :cond_164
    move-object v1, v2

    goto/16 :goto_be

    :cond_167
    move-object v1, v2

    goto/16 :goto_cd
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 36
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z
    .registers 16
    .param p3    # Lcom/bytedance/sdk/openadsdk/TTNativeAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 43
    :cond_7
    const/4 v0, 0x0

    .line 143
    :goto_8
    return v0

    .line 46
    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_df

    .line 48
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 50
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    invoke-static {p0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 57
    invoke-static {p1, p5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 60
    :cond_3e
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_47

    .line 61
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    :cond_47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/z$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/z$1;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)V

    invoke-static {p0, v6, v0}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V

    .line 77
    const-string v0, "open_url_app"

    const/4 v1, 0x0

    invoke-static {p0, p1, p5, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    invoke-virtual {v0, p1, p5}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_8

    .line 84
    :cond_63
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ac

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_ac

    .line 86
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_ac

    .line 87
    if-eqz p6, :cond_b7

    .line 88
    const/4 v0, 0x0

    .line 90
    invoke-interface {p6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->k()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 91
    const/4 v0, 0x1

    .line 94
    :cond_83
    if-nez v0, :cond_92

    invoke-interface {p6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->i()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {p6, p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 95
    const/4 v0, 0x1

    .line 98
    :cond_92
    if-nez v0, :cond_9b

    invoke-interface {p6, p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 99
    const/4 v0, 0x1

    .line 102
    :cond_9b
    if-nez v0, :cond_a4

    invoke-interface {p6}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->j()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 103
    const/4 v0, 0x1

    .line 105
    :cond_a4
    const-string v1, "open_fallback_url"

    const/4 v2, 0x0

    invoke-static {p0, p1, p5, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_8

    .line 108
    :cond_ac
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_da

    .line 109
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_b7
    :goto_b7
    const-string v1, "open_fallback_url"

    const/4 v2, 0x0

    invoke-static {p0, p1, p5, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v1, v0

    .line 120
    :goto_be
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 121
    :cond_ca
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_106

    .line 122
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 123
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 111
    :cond_da
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_b7

    .line 117
    :cond_df
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    goto :goto_be

    .line 125
    :cond_e4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    :try_start_eb
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f2} :catch_102

    .line 132
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_fb

    .line 133
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    :cond_fb
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V

    .line 141
    :goto_ff
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 129
    :catch_102
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_106
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p7

    .line 137
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/z;->a:Z

    goto :goto_ff

    .line 143
    :cond_119
    const/4 v0, 0x0

    goto/16 :goto_8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)Z
    .registers 14

    .prologue
    .line 150
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    :try_start_8
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_11

    .line 152
    const/4 v0, 0x1

    .line 156
    :goto_10
    return v0

    .line 153
    :catch_11
    move-exception v0

    .line 154
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/k;Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 226
    if-nez p1, :cond_4

    .line 235
    :cond_3
    :goto_3
    return v0

    .line 229
    :cond_4
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const/4 v0, 0x1

    goto :goto_3
.end method
