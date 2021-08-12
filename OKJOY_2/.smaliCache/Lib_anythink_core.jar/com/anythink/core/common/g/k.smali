.class public final Lcom/anythink/core/common/g/k;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "it_src"

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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 5

    .line 135
    invoke-static {}, Lcom/anythink/core/common/g/k;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/anythink/core/common/g/k;->c()Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    :try_start_8
    const-string v2, "app_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2c} :catch_2e

    .line 144
    goto :goto_19

    .line 149
    :cond_2d
    goto :goto_2f

    .line 145
    :catch_2e
    move-exception v1

    .line 150
    :goto_2f
    return-object v0
.end method

.method private static b()Lorg/json/JSONObject;
    .registers 5

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    .line 61
    :try_start_d
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v2, "os_vn"

    invoke-static {}, Lcom/anythink/core/common/g/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v2, "os_vc"

    invoke-static {}, Lcom/anythink/core/common/g/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "package_name"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "app_vn"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "app_vc"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "brand"

    invoke-static {}, Lcom/anythink/core/common/g/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v2, "model"

    invoke-static {}, Lcom/anythink/core/common/g/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v2, "screen"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v2, "network_type"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "mnc"

    invoke-static {}, Lcom/anythink/core/common/g/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "mcc"

    invoke-static {}, Lcom/anythink/core/common/g/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "language"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "timezone"

    invoke-static {}, Lcom/anythink/core/common/g/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "sdk_ver"

    const-string v4, "UA_5.7.8"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v2, "gp_ver"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v2, "ua"

    invoke-static {}, Lcom/anythink/core/common/g/d;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "orient"

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v1, "system"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 81
    const-string v1, "channel"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_ce
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e9

    .line 84
    const-string v1, "sub_channel"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_e9
    const-string v1, "upid"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "ps_id"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_103} :catch_104

    .line 92
    goto :goto_105

    .line 88
    :catch_104
    move-exception v1

    .line 93
    :goto_105
    return-object v0
.end method

.method private static c()Lorg/json/JSONObject;
    .registers 8

    .line 97
    const-string v0, "a"

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 99
    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v3

    .line 101
    nop

    .line 102
    const-string v4, ""

    if-eqz v3, :cond_2b

    :try_start_24
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->o()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 126
    :catch_29
    move-exception v0

    goto :goto_88

    .line 102
    :cond_2b
    move-object v5, v4

    .line 103
    :goto_2c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_29

    const/4 v7, 0x1

    if-nez v6, :cond_48

    .line 105
    :try_start_33
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 107
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_47

    if-ne v0, v7, :cond_45

    goto :goto_46

    :cond_45
    const/4 v7, 0x0

    .line 111
    :cond_46
    :goto_46
    goto :goto_48

    .line 109
    :catch_47
    move-exception v0

    .line 113
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

    .line 114
    const-string v0, "gaid"

    invoke-static {}, Lcom/anythink/core/common/g/d;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_66} :catch_29

    .line 117
    const-string v5, "is_cn_sdk"

    if-eqz v0, :cond_73

    .line 118
    :try_start_6a
    invoke-interface {v0, v2, v3}, Lcom/anythink/core/api/IExHandler;->fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/c/a;)V

    .line 119
    const-string v0, "1"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_78

    .line 121
    :cond_73
    const-string v0, "0"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :goto_78
    invoke-static {v1}, Lcom/anythink/core/common/g/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "it_src"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    move-object v4, v0

    :cond_85
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_88} :catch_29

    .line 131
    :goto_88
    return-object v2
.end method
