.class public Lcom/ssjj/fnsdk/core/log2/ChannelGetter;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/ssjj/fnsdk/core/log2/ChannelGetter;


# instance fields
.field a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c:Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_fnlog2_chl_"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "0"

    :try_start_2
    invoke-static {p2}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    if-eqz p1, :cond_27

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_10

    goto :goto_27

    :cond_10
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return-object v0

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_28

    :try_start_1d
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result p2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_24

    if-eqz p2, :cond_2d

    return-object v0

    :catch_24
    move-exception p2

    move-object v0, p1

    goto :goto_29

    :cond_27
    :goto_27
    return-object v0

    :catch_28
    move-exception p2

    :goto_29
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :cond_2d
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_11

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_11
    :goto_11
    return-object p3
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p3, p4}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .registers 12

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    const-string v1, "_fnlog2_chl_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    const-string v2, "aid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    const-string v3, "oid"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    const-string v4, "cid"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    const-string v5, "ssrc"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    const-string v6, "skwid"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    const-string v7, "loginType"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    const-string v8, "projectid"

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    :try_start_52
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v1, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_64} :catch_65

    goto :goto_67

    :catch_65
    move-exception v1

    const/4 v1, 0x0

    :goto_67
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_77

    const-string v9, "fnweb_aid"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    :cond_77
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    const-string v9, "fnweb_oid"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    :cond_87
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    const-string v9, "fnweb_cid"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    :cond_97
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a7

    const-string v9, "fnweb_ssrc"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    :cond_a7
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b7

    const-string v9, "fnweb_skwid"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    :cond_b7
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c7

    const-string v9, "fnweb_logintype"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    :cond_c7
    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d7

    const-string v9, "fnweb_projectid"

    invoke-direct {p0, v1, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    :cond_d7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e8
    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_f5
    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_102

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_102
    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_10f
    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11c

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_11c
    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_129

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_129
    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_136

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

    const-string v0, "fnweb_projectid_"

    const-string v1, "fnweb_logintype_"

    const-string v2, "fnweb_skwid_"

    const-string v3, "fnweb_ssrc_"

    const-string v4, "fnweb_oid_"

    const-string v5, "fnweb_cid_"

    const-string v6, "fnweb_aid_"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    return-void

    :cond_15
    :try_start_15
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_26

    goto/16 :goto_9a

    :cond_26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    goto :goto_1e

    :cond_33
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    :cond_41
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4f

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    :cond_4f
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5d

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-direct {p0, v7, v4, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    :cond_5d
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6b

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    invoke-direct {p0, v7, v3, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    :cond_6b
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_79

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    invoke-direct {p0, v7, v2, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    :cond_79
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    :cond_87
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    sget-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-direct {p0, v7, v0, v8, v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_95} :catch_96

    goto :goto_1e

    :catch_96
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9a
    return-void
.end method

.method private b()V
    .registers 12

    const-string v0, "fnweb_projectid_"

    const-string v1, "fnweb_logintype_"

    const-string v2, "fnweb_skwid_"

    const-string v3, "fnweb_ssrc_"

    const-string v4, "fnweb_oid_"

    const-string v5, "fnweb_cid_"

    const-string v6, "fnweb_aid_"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getApkExtDataStr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    return-void

    :cond_1d
    :try_start_1d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_26
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_db

    :cond_2e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3b

    goto :goto_26

    :cond_3b
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_49

    const-string v10, "aid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_51

    :cond_49
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-direct {p0, v8, v6, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    :cond_51
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "cid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_67

    :cond_5f
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-direct {p0, v8, v5, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    :cond_67
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_75

    const-string v10, "oid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7d

    :cond_75
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-direct {p0, v8, v4, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    :cond_7d
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8b

    const-string v10, "ssrc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_93

    :cond_8b
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    invoke-direct {p0, v8, v3, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    :cond_93
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a1

    const-string v10, "skwid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a9

    :cond_a1
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    :cond_a9
    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b7

    const-string v10, "logintype"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bf

    :cond_b7
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-direct {p0, v8, v1, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    :cond_bf
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_cd

    const-string v10, "projectid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    :cond_cd
    sget-object v10, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-direct {p0, v8, v0, v9, v10}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_d5} :catch_d7

    goto/16 :goto_26

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_db
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/log2/ChannelGetter;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->c:Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->deviceId:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->deviceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNInfo;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->networkName:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->operatorName:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->appVer:Ljava/lang/String;

    const-string v0, "3.1.6.7"

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->sdkVer:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_36

    move-object v0, v1

    goto :goto_38

    :cond_36
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_38
    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->osVer:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    if-nez v0, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_43
    sput-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->pkg:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->screen:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fngid:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fnpid:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fnptag:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fnchannel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a()V

    return-void
.end method

.method public initEnd(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public initStart(Landroid/content/Context;)V
    .registers 4

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a:Landroid/app/Activity;

    :try_start_5
    const-string v0, "fngtag"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fngtag:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    goto :goto_15

    :catchall_14
    move-exception p1

    :goto_15
    return-void
.end method

.method public onGetChannelInMetaInf(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetChannelInMetaInf "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_18
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result p1

    if-eqz p1, :cond_4b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onGetChannelInMetaInf end "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public onGetChannelInMetaInfPrefix()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "onGetChannelInMetaInfPrefix"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    if-nez v0, :cond_3f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_aid_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_cid_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_oid_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_ssrc_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_skwid_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_logintype_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    const-string v1, "fnweb_projectid_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->d:Ljava/util/List;

    return-object v0
.end method
