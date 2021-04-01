.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;
.super Ljava/lang/Object;
.source "LibModelFactory.java"


# direct methods
.method private static a(I)I
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 130
    packed-switch p0, :pswitch_data_c

    .line 140
    :goto_4
    :pswitch_4
    return v0

    .line 134
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 136
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 138
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 130
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/a/a/b/f$a;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 36
    new-instance v0, Lcom/ss/android/a/a/b/f$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/b/f$a;-><init>()V

    .line 37
    invoke-virtual {v0, p0}, Lcom/ss/android/a/a/b/f$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/b/f$a;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/b/f$a;->a(Z)Lcom/ss/android/a/a/b/f$a;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/a/a/b/f$a;->b(Z)Lcom/ss/android/a/a/b/f$a;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_25
    invoke-virtual {v2, v0}, Lcom/ss/android/a/a/b/f$a;->d(Z)Lcom/ss/android/a/a/b/f$a;

    move-result-object v0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Lcom/ss/android/a/a/b/f$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/b/f$a;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 44
    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/b/f$a;->c(Z)Lcom/ss/android/a/a/b/f$a;

    .line 47
    :cond_38
    return-object v0

    .line 40
    :cond_39
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/ss/android/downloadad/a/a/a$a;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-nez p0, :cond_44

    move v3, v1

    .line 109
    :goto_5
    if-nez p0, :cond_4a

    move v0, v2

    .line 110
    :goto_8
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 111
    const/4 v0, 0x2

    .line 114
    :cond_15
    new-instance v4, Lcom/ss/android/downloadad/a/a/a$a;

    invoke-direct {v4}, Lcom/ss/android/downloadad/a/a/a$a;-><init>()V

    .line 115
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->b(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/ss/android/downloadad/a/a/a$a;->a(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v3

    .line 116
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ss/android/downloadad/a/a/a$a;->b(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->a(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v3

    if-eqz p0, :cond_4f

    .line 118
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->u()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_37
    invoke-virtual {v3, v0}, Lcom/ss/android/downloadad/a/a/a$a;->c(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->b(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/a/a/a$a;->a(Ljava/lang/Object;)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 114
    return-object v0

    .line 108
    :cond_44
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->v()I

    move-result v0

    move v3, v0

    goto :goto_5

    .line 109
    :cond_4a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->w()I

    move-result v0

    goto :goto_8

    :cond_4f
    move v0, v2

    .line 118
    goto :goto_37
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 164
    new-instance v0, Lcom/ss/android/downloadad/a/a/b$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/b$a;-><init>()V

    .line 165
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->c(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->b(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->d(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_start"

    .line 171
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->k(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_continue"

    .line 173
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->m(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_pause"

    .line 175
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->l(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "download_failed"

    .line 178
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->r(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->j(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "download_failed"

    .line 180
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->q(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_install"

    .line 184
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->n(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->h(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_open"

    .line 190
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->o(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->i(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "open_url_app"

    .line 194
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->p(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 51
    if-nez p1, :cond_9

    .line 52
    new-instance v0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    .line 104
    :cond_8
    :goto_8
    return-object v0

    .line 56
    :cond_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    .line 59
    const-string v3, "open_ad_sdk_download_extra"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_110

    .line 63
    :goto_27
    new-instance v0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadad/a/a/c$a;->a(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    if-nez v0, :cond_e5

    const/4 v0, 0x0

    :goto_43
    invoke-virtual {v3, v0}, Lcom/ss/android/downloadad/a/a/c$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/downloadad/a/a/c$a;->b(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v3

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->k()Z

    move-result v0

    if-nez v0, :cond_ef

    move v0, v1

    :goto_5e
    invoke-virtual {v3, v0}, Lcom/ss/android/downloadad/a/a/c$a;->d(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/downloadad/a/a/c$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/c$a;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_91

    .line 74
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/downloadad/a/a/c$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadad/a/a/c$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v3

    .line 76
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ss/android/downloadad/a/a/c$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    .line 79
    :cond_91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 80
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->c(Z)Lcom/ss/android/downloadad/a/a/c$a;

    .line 83
    :cond_9a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 84
    new-instance v2, Lcom/ss/android/a/a/c/b;

    invoke-direct {v2}, Lcom/ss/android/a/a/c/b;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/a/a/c/b;->a(J)V

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/a/a/c/b;->b(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/a/a/c/b;->c(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f2

    .line 91
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_f2

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_f2

    .line 101
    :goto_e0
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lcom/ss/android/a/a/c/b;)Lcom/ss/android/downloadad/a/a/c$a;

    goto/16 :goto_8

    .line 65
    :cond_e5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_43

    .line 67
    :cond_ef
    const/4 v0, 0x0

    goto/16 :goto_5e

    .line 96
    :cond_f2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v3

    if-ne v3, v1, :cond_108

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ss/android/a/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_e0

    .line 99
    :cond_108
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ss/android/a/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_e0

    .line 60
    :catch_110
    move-exception v0

    goto/16 :goto_27
.end method

.method private static b(I)I
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 151
    packed-switch p0, :pswitch_data_a

    .line 159
    :goto_4
    :pswitch_4
    return v0

    .line 153
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 157
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 151
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
