.class public final Lcom/mintegral/msdk/base/common/net/a/e;
.super Ljava/lang/Object;
.source "CommonRequestParamsForAdd.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a/e;->a:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 3

    .prologue
    .line 59
    const-string v0, "api_version"

    const-string v1, "1.8"

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/common/net/l;Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 33
    const-string v0, "cache1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "cache2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "power_rate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "charging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "has_wx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tencent.mm"

    invoke-static {p1, v2}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->f()I

    move-result v0

    if-ne v0, v3, :cond_8c

    .line 41
    const-string v0, "dnt"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_8c
    const-string v0, "pkg_source"

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mintegral/msdk/base/utils/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_a6

    .line 48
    const-string v0, "http_req"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :cond_a6
    invoke-static {p0, v3}, Lcom/mintegral/msdk/base/common/net/a/e;->a(Lcom/mintegral/msdk/base/common/net/l;Z)V

    .line 1070
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/net/a/e;->e(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 1071
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/net/a/e;->c(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 51
    return-void
.end method

.method private static a(Lcom/mintegral/msdk/base/common/net/l;Z)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 108
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 110
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_139

    .line 113
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 115
    :try_start_1f
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->as()I

    move-result v3

    if-ne v3, v5, :cond_75

    .line 116
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 117
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_imei_mac"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 118
    const-string v3, "imei"

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_3f
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 122
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_imei_mac"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 123
    const-string v3, "mac"

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_59
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_75

    if-eqz p1, :cond_75

    .line 127
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_imei_mac"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 128
    const-string v3, "imsi"

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_75
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->o()I

    move-result v3

    if-ne v3, v5, :cond_97

    if-eqz p1, :cond_97

    .line 134
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 135
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_device_id"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 136
    const-string v3, "oaid"

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_97
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->au()I

    move-result v3

    if-ne v3, v5, :cond_b7

    .line 142
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b7

    .line 143
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_android_id"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 144
    const-string v3, "android_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_b7
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->aN()I

    move-result v0

    if-ne v0, v5, :cond_c5

    .line 149
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_gps"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    .line 166
    :cond_c5
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 167
    const-string v0, "cid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v0, "dmt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->K()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v0, "dmf"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->J()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v0, "ct"

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_10e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 174
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12a

    .line 176
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a/e;->b:Ljava/lang/String;

    .line 178
    :cond_12a
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 179
    const-string v0, "dvi"

    sget-object v1, Lcom/mintegral/msdk/base/common/net/a/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_139} :catch_13a

    .line 188
    :cond_139
    :goto_139
    return-void

    .line 184
    :catch_13a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_139
.end method

.method public static b(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mintegral/msdk/base/common/net/a/e;->a(Lcom/mintegral/msdk/base/common/net/l;Z)V

    .line 64
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/net/a/e;->e(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 65
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/net/a/e;->c(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 66
    return-void
.end method

.method public static c(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 3

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "sys_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    .line 79
    :cond_14
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 80
    const-string v0, "sys_id"

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_23
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 83
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "bkup_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    .line 85
    :cond_37
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 86
    const-string v0, "bkup_id"

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 93
    :cond_46
    :goto_46
    return-void

    .line 88
    :catch_47
    move-exception v0

    .line 89
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_46

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method public static d(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 2

    .prologue
    .line 191
    if-eqz p0, :cond_7c

    .line 192
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 193
    const-string v0, "model"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 194
    const-string v0, "brand"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 195
    const-string v0, "screen_size"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 196
    const-string v0, "cache1"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 197
    const-string v0, "cache2"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 198
    const-string v0, "power_rate"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 199
    const-string v0, "charging"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 200
    const-string v0, "sub_ip"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 201
    const-string v0, "network_type"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 202
    const-string v0, "useragent"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 203
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 204
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 205
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 206
    const-string v0, "network_str"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 207
    const-string v0, "mnc"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 208
    const-string v0, "mcc"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 209
    const-string v0, "os_version"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 210
    const-string v0, "gp_version"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 213
    :cond_67
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 214
    const-string v0, "gaid"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 215
    const-string v0, "oaid"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;)V

    .line 219
    :cond_7c
    return-void
.end method

.method private static e(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->h()I

    move-result v0

    .line 99
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 100
    const-string v1, "unknown_source"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_10
    return-void
.end method
