.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;
.super Ljava/lang/Object;
.source "LibModelFactory.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/ss/android/downloadad/a/a/a$a;
    .registers 6

    .line 140
    const/4 v0, 0x1

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->G()I

    move-result v1

    .line 141
    :goto_9
    const/4 v2, 0x0

    if-nez p0, :cond_e

    move v3, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->H()I

    move-result v3

    .line 142
    :goto_12
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->au()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 143
    const/4 v3, 0x2

    .line 146
    :cond_1f
    new-instance v4, Lcom/ss/android/downloadad/a/a/a$a;

    invoke-direct {v4}, Lcom/ss/android/downloadad/a/a/a$a;-><init>()V

    .line 147
    invoke-virtual {v4, v1}, Lcom/ss/android/downloadad/a/a/a$a;->a(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v3}, Lcom/ss/android/downloadad/a/a/a$a;->b(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/a/a$a;->a(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->b(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/a/a/a$a;->a(Ljava/lang/Object;)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object p0

    .line 146
    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;
    .registers 2

    .line 155
    new-instance p0, Lcom/ss/android/downloadad/a/a/b$a;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/b$a;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 158
    const-string p1, "click_start"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 159
    const-string p1, "click_continue"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 160
    const-string p1, "click_pause"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 161
    const-string p1, "download_failed"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->h(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 162
    const-string p1, "click_install"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 163
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 164
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$a;->c(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p0

    .line 155
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 7

    .line 84
    if-nez p1, :cond_8

    .line 85
    new-instance p0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    return-object p0

    .line 89
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    :try_start_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    .line 92
    const-string p2, "open_ad_sdk_download_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_27

    .line 94
    goto :goto_28

    .line 93
    :catch_27
    move-exception p0

    .line 96
    :goto_28
    new-instance p0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadad/a/a/c$a;->a(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 98
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    if-nez p2, :cond_45

    const/4 p2, 0x0

    goto :goto_4d

    :cond_45
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object p2

    :goto_4d
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/i;->l()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$a;->b(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/i;->l()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$a;->d(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 101
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p2

    .line 106
    if-eqz p2, :cond_98

    .line 107
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/c$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/c$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 109
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ss/android/downloadad/a/a/c$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    .line 112
    :cond_98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 113
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->c(Z)Lcom/ss/android/downloadad/a/a/c$a;

    .line 116
    :cond_a1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p2

    if-eqz p2, :cond_ff

    .line 117
    new-instance p2, Lcom/ss/android/a/a/c/b;

    invoke-direct {p2}, Lcom/ss/android/a/a/c/b;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/ss/android/a/a/c/b;->a(J)V

    .line 120
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/a/a/c/b;->b(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/a/a/c/b;->c(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_df

    .line 124
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_df

    goto :goto_fc

    .line 128
    :cond_df
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v0

    if-ne v0, v1, :cond_f5

    .line 129
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/a/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_fc

    .line 131
    :cond_f5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ss/android/a/a/c/b;->a(Ljava/lang/String;)V

    .line 133
    :goto_fc
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lcom/ss/android/a/a/c/b;)Lcom/ss/android/downloadad/a/a/c$a;

    .line 136
    :cond_ff
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 8

    .line 37
    if-nez p2, :cond_8

    .line 38
    new-instance p0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    return-object p0

    .line 40
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41
    new-instance p0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    return-object p0

    .line 45
    :cond_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    :try_start_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p1

    .line 48
    const-string p3, "open_ad_sdk_download_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_32} :catch_33

    .line 50
    goto :goto_34

    .line 49
    :catch_33
    move-exception p1

    .line 51
    :goto_34
    new-instance p1, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {p1}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    .line 52
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/downloadad/a/a/c$a;->a(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p3

    if-nez p3, :cond_51

    const/4 p3, 0x0

    goto :goto_59

    :cond_51
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object p3

    :goto_59
    invoke-virtual {p1, p3}, Lcom/ss/android/downloadad/a/a/c$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/i;->l()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/ss/android/downloadad/a/a/c$a;->b(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/i;->l()Z

    move-result p3

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/ss/android/downloadad/a/a/c$a;->d(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ss/android/downloadad/a/a/c$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p0}, Lcom/ss/android/downloadad/a/a/c$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p0

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_94

    .line 62
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->c(Z)Lcom/ss/android/downloadad/a/a/c$a;

    .line 65
    :cond_94
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 66
    new-instance p1, Lcom/ss/android/a/a/c/b;

    invoke-direct {p1}, Lcom/ss/android/a/a/c/b;-><init>()V

    .line 67
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/a/a/c/b;->a(J)V

    .line 68
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ss/android/a/a/c/b;->b(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ss/android/a/a/c/b;->c(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_d2

    .line 71
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p3

    if-nez p3, :cond_d2

    goto :goto_ef

    .line 73
    :cond_d2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result p3

    if-ne p3, v1, :cond_e8

    .line 74
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_ef

    .line 76
    :cond_e8
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/a/a/c/b;->a(Ljava/lang/String;)V

    .line 78
    :goto_ef
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lcom/ss/android/a/a/c/b;)Lcom/ss/android/downloadad/a/a/c$a;

    .line 80
    :cond_f2
    return-object p0
.end method
