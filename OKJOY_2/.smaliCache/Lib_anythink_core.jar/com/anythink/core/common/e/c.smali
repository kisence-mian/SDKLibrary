.class public final Lcom/anythink/core/common/e/c;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "it_src"

.field public static final B:Ljava/lang/String; = "gdpr_cs"

.field public static final C:Ljava/lang/String; = "abtest_id"

.field public static final D:Ljava/lang/String; = "first_init_time"

.field public static final E:Ljava/lang/String; = "days_from_first_init"

.field public static final F:Ljava/lang/String; = "cs_cl"

.field public static final G:Ljava/lang/String; = "app_id"

.field public static final H:Ljava/lang/String; = "api_ver"

.field public static final I:Ljava/lang/String; = "custom"

.field public static final J:Ljava/lang/String; = "data"

.field public static final K:Ljava/lang/String; = "tcp_tk_da_type"

.field public static final L:Ljava/lang/String; = "ofl"

.field public static final M:Ljava/lang/String; = "tcp_rate"

.field public static final N:Ljava/lang/String; = "p"

.field public static final O:Ljava/lang/String; = "p2"

.field public static final P:Ljava/lang/String; = "sign"

.field public static final Q:Ljava/lang/String; = "common"

.field public static final R:I = 0x1

.field public static final S:I = 0x2

.field public static final T:I = 0x3

.field public static final a:Ljava/lang/String; = "platform"

.field public static final b:Ljava/lang/String; = "os_vn"

.field public static final c:Ljava/lang/String; = "os_vc"

.field public static final d:Ljava/lang/String; = "package_name"

.field public static final e:Ljava/lang/String; = "app_vn"

.field public static final f:Ljava/lang/String; = "app_vc"

.field public static final g:Ljava/lang/String; = "brand"

.field public static final h:Ljava/lang/String; = "model"

.field public static final i:Ljava/lang/String; = "screen"

.field public static final j:Ljava/lang/String; = "network_type"

.field public static final k:Ljava/lang/String; = "mnc"

.field public static final l:Ljava/lang/String; = "mcc"

.field public static final m:Ljava/lang/String; = "language"

.field public static final n:Ljava/lang/String; = "timezone"

.field public static final o:Ljava/lang/String; = "sdk_ver"

.field public static final p:Ljava/lang/String; = "gp_ver"

.field public static final q:Ljava/lang/String; = "nw_ver"

.field public static final r:Ljava/lang/String; = "ua"

.field public static final s:Ljava/lang/String; = "orient"

.field public static final t:Ljava/lang/String; = "system"

.field public static final u:Ljava/lang/String; = "android_id"

.field public static final v:Ljava/lang/String; = "gaid"

.field public static final w:Ljava/lang/String; = "channel"

.field public static final x:Ljava/lang/String; = "sub_channel"

.field public static final y:Ljava/lang/String; = "upid"

.field public static final z:Ljava/lang/String; = "ps_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 6

    .line 97
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/d;->m(Landroid/content/Context;)V

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    .line 102
    :try_start_18
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v2, "os_vn"

    invoke-static {}, Lcom/anythink/core/common/g/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "os_vc"

    invoke-static {}, Lcom/anythink/core/common/g/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "package_name"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v2, "app_vn"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "app_vc"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v2, "brand"

    invoke-static {}, Lcom/anythink/core/common/g/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v2, "model"

    invoke-static {}, Lcom/anythink/core/common/g/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v2, "screen"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v2, "network_type"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "mnc"

    invoke-static {}, Lcom/anythink/core/common/g/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "mcc"

    invoke-static {}, Lcom/anythink/core/common/g/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "language"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v2, "timezone"

    invoke-static {}, Lcom/anythink/core/common/g/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v2, "sdk_ver"

    const-string v4, "UA_5.7.8"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v2, "gp_ver"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v2, "ua"

    invoke-static {}, Lcom/anythink/core/common/g/d;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v2, "orient"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v2, "system"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d5

    .line 122
    const-string v2, "channel"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_d5
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 125
    const-string v2, "sub_channel"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_f0
    const-string v2, "upid"

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/h;->b()Z

    move-result v3
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_fa} :catch_16a

    const-string v4, ""

    if-eqz v3, :cond_107

    :try_start_fe
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v3

    goto :goto_108

    :cond_107
    move-object v3, v4

    :goto_108
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "ps_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_13e

    .line 134
    const-string v3, "abtest_id"

    invoke-virtual {v2}, Lcom/anythink/core/c/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_137

    goto :goto_13b

    :cond_137
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->j()Ljava/lang/String;

    move-result-object v4

    :goto_13b
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_13e
    const-string v2, "first_init_time"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->d()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    const-string v2, "days_from_first_init"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->e()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    const-string v2, "gdpr_cs"

    invoke-static {v1}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/h;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_169} :catch_16a

    .line 150
    goto :goto_16b

    .line 146
    :catch_16a
    move-exception v1

    .line 151
    :goto_16b
    return-object v0
.end method

.method public static b()Lorg/json/JSONObject;
    .registers 8

    .line 160
    const-string v0, "a"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    .line 161
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v3

    .line 164
    nop

    .line 165
    const-string v4, ""

    if-eqz v3, :cond_2b

    :try_start_24
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->o()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 189
    :catch_29
    move-exception v0

    goto :goto_88

    .line 165
    :cond_2b
    move-object v5, v4

    .line 166
    :goto_2c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_29

    const/4 v7, 0x1

    if-nez v6, :cond_48

    .line 168
    :try_start_33
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 170
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_47

    if-ne v0, v7, :cond_45

    goto :goto_46

    :cond_45
    const/4 v7, 0x0

    .line 174
    :cond_46
    :goto_46
    goto :goto_48

    .line 172
    :catch_47
    move-exception v0

    .line 176
    :cond_48
    :goto_48
    :try_start_48
    const-string v0, "android_id"

    if-eqz v7, :cond_51

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_52

    :cond_51
    move-object v5, v4

    :goto_52
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v0, "gaid"

    invoke-static {}, Lcom/anythink/core/common/g/d;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_66} :catch_29

    .line 179
    const-string v5, "is_cn_sdk"

    if-eqz v0, :cond_73

    .line 180
    :try_start_6a
    invoke-interface {v0, v2, v3}, Lcom/anythink/core/api/IExHandler;->fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/c/a;)V

    .line 181
    const-string v0, "1"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_78

    .line 183
    :cond_73
    const-string v0, "0"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :goto_78
    invoke-static {v1}, Lcom/anythink/core/common/g/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "it_src"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    move-object v4, v0

    :cond_85
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_88} :catch_29

    .line 194
    :goto_88
    return-object v2
.end method
