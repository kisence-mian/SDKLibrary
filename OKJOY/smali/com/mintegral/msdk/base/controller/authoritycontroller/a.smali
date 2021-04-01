.class public Lcom/mintegral/msdk/base/controller/authoritycontroller/a;
.super Ljava/lang/Object;
.source "SDKAuthorityController.java"


# static fields
.field private static volatile c:Lcom/mintegral/msdk/base/controller/authoritycontroller/a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;

.field private d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    .line 1081
    new-instance v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1083
    :try_start_11
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1084
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1086
    :cond_29
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1087
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1089
    :cond_41
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_gps"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1090
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1092
    :cond_59
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_imei_mac"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1093
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1095
    :cond_71
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_android_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1096
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->f(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1098
    :cond_89
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_serial_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1099
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->g(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1101
    :cond_a1
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_applist"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1102
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->j(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1104
    :cond_b9
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_app_download"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1105
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->k(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1107
    :cond_d1
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_app_progress"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 1108
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->l(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1110
    :cond_e9
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_imsi_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1111
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->h(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1113
    :cond_101
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_oaid_id"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1114
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->i(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 1116
    :cond_119
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_gps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_imei_mac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_android_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_applist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_app_download"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_app_progress"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_serial_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_imsi_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const-string v1, "authority_oaid_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_166} :catch_167

    .line 1129
    :goto_166
    return-void

    .line 1128
    :catch_167
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_166
.end method

.method public static a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c:Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    if-nez v0, :cond_13

    .line 68
    const-class v1, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    monitor-enter v1

    .line 69
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c:Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    if-nez v0, :cond_12

    .line 70
    new-instance v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c:Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    .line 72
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 74
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c:Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    return-object v0

    .line 72
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    .line 289
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 290
    if-nez v0, :cond_1a

    .line 291
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 293
    :cond_1a
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->q()I

    move-result v0

    .line 294
    if-nez v0, :cond_53

    .line 295
    invoke-static {p0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_51

    invoke-static {p0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_51

    move v0, v1

    .line 299
    :goto_2d
    const-string v3, "authority_applist"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "authority_app_progress"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 300
    :cond_3d
    invoke-static {p0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_5f

    move v0, v1

    .line 301
    :goto_44
    invoke-static {p0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_61

    move v3, v2

    .line 302
    :goto_4b
    if-eqz v0, :cond_63

    if-eqz v3, :cond_63

    :goto_4f
    move v0, v1

    .line 304
    :cond_50
    return v0

    :cond_51
    move v0, v2

    .line 295
    goto :goto_2d

    .line 296
    :cond_53
    if-ne v0, v1, :cond_65

    .line 297
    invoke-static {p0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_5d

    move v0, v1

    goto :goto_2d

    :cond_5d
    move v0, v2

    goto :goto_2d

    :cond_5f
    move v0, v2

    .line 300
    goto :goto_44

    :cond_61
    move v3, v1

    .line 301
    goto :goto_4b

    :cond_63
    move v1, v2

    .line 302
    goto :goto_4f

    :cond_65
    move v0, v2

    goto :goto_2d
.end method

.method public static b(I)V
    .registers 3

    .prologue
    .line 418
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_dnt"

    invoke-virtual {v0, v1, p0}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;I)V

    .line 419
    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 188
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 189
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result v0

    .line 194
    :goto_12
    return v0

    .line 192
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 315
    :try_start_5
    const-string v1, "authority_general_data"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_general_data"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "authority_device_id"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_device_id"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "authority_gps"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_gps"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "authority_imei_mac"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_imei_mac"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v1, "authority_android_id"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_android_id"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v1, "authority_applist"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_applist"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v1, "authority_app_download"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_app_download"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v1, "authority_app_progress"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_app_progress"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v1, "authority_serial_id"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_serial_id"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v1, "authority_imsi_id"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_imsi_id"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v1, "authority_oaid_id"

    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v2

    const-string v3, "authority_oaid_id"

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_ad} :catch_af

    move-result-object v0

    .line 330
    :goto_ae
    return-object v0

    .line 328
    :catch_af
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 330
    const-string v0, ""

    goto :goto_ae
.end method

.method private static d(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 206
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 207
    if-nez v0, :cond_18

    .line 208
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 210
    :cond_18
    const/4 v1, -0x1

    .line 211
    const-string v2, "authority_general_data"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 212
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->m()I

    move-result v0

    .line 234
    :goto_25
    return v0

    .line 213
    :cond_26
    const-string v2, "authority_device_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 214
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->o()I

    move-result v0

    goto :goto_25

    .line 215
    :cond_33
    const-string v2, "authority_gps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 216
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aN()I

    move-result v0

    goto :goto_25

    .line 217
    :cond_40
    const-string v2, "authority_imei_mac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 218
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->as()I

    move-result v0

    goto :goto_25

    .line 219
    :cond_4d
    const-string v2, "authority_android_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 220
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->au()I

    move-result v0

    goto :goto_25

    .line 221
    :cond_5a
    const-string v2, "authority_applist"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 222
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->O()I

    move-result v0

    goto :goto_25

    .line 223
    :cond_67
    const-string v2, "authority_app_download"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 224
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->W()I

    move-result v0

    goto :goto_25

    .line 225
    :cond_74
    const-string v2, "authority_app_progress"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 226
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->G()I

    move-result v0

    goto :goto_25

    .line 227
    :cond_81
    const-string v2, "authority_serial_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 228
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->k()I

    move-result v0

    goto :goto_25

    .line 229
    :cond_8e
    const-string v2, "authority_imsi_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 230
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->as()I

    move-result v0

    goto :goto_25

    .line 231
    :cond_9b
    const-string v2, "authority_oaid_id"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 232
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->o()I

    move-result v0

    goto/16 :goto_25

    :cond_a9
    move v0, v1

    goto/16 :goto_25
.end method

.method public static f()I
    .registers 2

    .prologue
    .line 422
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "authority_dnt"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_9

    .line 387
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 389
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_11

    .line 139
    const-string v0, "authority_general_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 140
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 165
    :cond_11
    :goto_11
    return-void

    .line 141
    :cond_12
    const-string v0, "authority_device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 142
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 143
    :cond_20
    const-string v0, "authority_gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 145
    :cond_2e
    const-string v0, "authority_imei_mac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 147
    :cond_3c
    const-string v0, "authority_android_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 148
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->f(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 149
    :cond_4a
    const-string v0, "authority_applist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 150
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->j(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 151
    :cond_58
    const-string v0, "authority_app_download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 152
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->k(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 153
    :cond_66
    const-string v0, "authority_app_progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 154
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->l(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 155
    :cond_74
    const-string v0, "authority_all_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 156
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 157
    :cond_82
    const-string v0, "authority_serial_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 158
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->g(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_11

    .line 159
    :cond_90
    const-string v0, "authority_imsi_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 160
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->h(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto/16 :goto_11

    .line 161
    :cond_9f
    const-string v0, "authority_oaid_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->i(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    goto/16 :goto_11
.end method

.method public final b()Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_7

    .line 175
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 177
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    move-result-object v0

    goto :goto_6
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_bb

    if-eqz p1, :cond_bb

    .line 341
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_general_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 343
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_device_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 344
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_gps"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 345
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_imei_mac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 346
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_android_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->f(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 347
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_applist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->j(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 348
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_app_download"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->k(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 349
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_app_progress"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->l(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 350
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_serial_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->g(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 351
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_imsi_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->h(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 352
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    const-string v2, "authority_oaid_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->i(I)Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    .line 353
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_bb

    .line 354
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b:Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;->onAuthorityInfoBean(Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_bb} :catch_bc

    .line 360
    :cond_bb
    :goto_bb
    return-void

    .line 358
    :catch_bc
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_bb
.end method

.method public final d()Ljava/lang/String;
    .registers 6

    .prologue
    .line 366
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 368
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 370
    :try_start_14
    const-string v0, "keyname"

    iget-object v4, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v4, "client_status"

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    const-string v4, "server_status"

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_48} :catch_4c

    .line 367
    :goto_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 375
    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48

    .line 378
    :cond_51
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 395
    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v2, :cond_61

    .line 396
    iget-object v2, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthDeviceIdStatus()I

    move-result v2

    .line 397
    iget-object v3, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAndroidIdStatus()I

    move-result v3

    .line 398
    iget-object v4, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthGpsStatus()I

    move-result v4

    .line 399
    iget-object v5, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthImeiAndMacStatus()I

    move-result v5

    .line 400
    iget-object v6, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthGenDataStatus()I

    move-result v6

    .line 401
    iget-object v7, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAppListStatus()I

    move-result v7

    .line 402
    iget-object v8, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAppDownloadStatus()I

    move-result v8

    .line 403
    iget-object v9, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v9}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthAppProgressStatus()I

    move-result v9

    .line 404
    iget-object v10, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v10}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthSerialIdStatus()I

    move-result v10

    .line 405
    iget-object v11, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v11}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthImsiIdStatus()I

    move-result v11

    .line 406
    iget-object v12, p0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->d:Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v12}, Lcom/mintegral/msdk/base/controller/authoritycontroller/AuthorityInfoBean;->getAuthOaidStatus()I

    move-result v12

    .line 407
    if-ne v12, v0, :cond_5f

    if-ne v11, v0, :cond_5f

    if-ne v10, v0, :cond_5f

    if-ne v3, v0, :cond_5f

    if-ne v8, v0, :cond_5f

    if-ne v7, v0, :cond_5f

    if-ne v9, v0, :cond_5f

    if-ne v2, v0, :cond_5f

    if-ne v6, v0, :cond_5f

    if-ne v4, v0, :cond_5f

    if-ne v5, v0, :cond_5f

    .line 412
    :goto_5e
    return v0

    :cond_5f
    move v0, v1

    .line 410
    goto :goto_5e

    :cond_61
    move v0, v1

    .line 412
    goto :goto_5e
.end method
