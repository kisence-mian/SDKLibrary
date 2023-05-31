.class public Lcom/bytedance/applog/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ab_version"

    aput-object v1, v0, v3

    const-string v1, "device_brand"

    aput-object v1, v0, v4

    const-string v1, "language"

    aput-object v1, v0, v5

    const-string v1, "os_api"

    aput-object v1, v0, v6

    const-string v1, "resolution"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "google_aid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "build_serial"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "carrier"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "install_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "app_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "device_model"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "udid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "density_dpi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "aliyun_uuid"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mcc_mnc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sim_region"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ab_client"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ab_group"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ab_feature"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "openudid"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "clientudid"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "aid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/c/b;->a:[Ljava/lang/String;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ab_version"

    aput-object v1, v0, v3

    const-string v1, "device_brand"

    aput-object v1, v0, v4

    const-string v1, "language"

    aput-object v1, v0, v5

    const-string v1, "os_api"

    aput-object v1, v0, v6

    const-string v1, "resolution"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "google_aid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "build_serial"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "carrier"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "iid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "app_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "version_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "device_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dpi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "aliyun_uuid"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mcc_mnc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sim_region"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ab_client"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ab_group"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ab_feature"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "openudid"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "clientudid"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "aid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/c/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/IAppParam;)Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v2, 0x3f

    const/16 v7, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    :goto_d
    return-object p2

    .line 52
    :cond_e
    new-instance v4, Ljava/util/HashMap;

    sget-object v0, Lcom/bytedance/applog/c/b;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v0, v1

    .line 55
    :goto_19
    sget-object v5, Lcom/bytedance/applog/c/b;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_36

    .line 56
    sget-object v5, Lcom/bytedance/applog/c/b;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 58
    sget-object v6, Lcom/bytedance/applog/c/b;->b:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 65
    :cond_36
    if-eqz p4, :cond_193

    .line 66
    :try_start_38
    invoke-interface {p4, p0}, Lcom/bytedance/applog/IAppParam;->getAppSSIDs(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 68
    :goto_3c
    invoke-static {p0}, Lcom/bytedance/applog/util/k;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_47

    if-eqz v0, :cond_47

    .line 69
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_17a

    .line 76
    :cond_47
    :goto_47
    :try_start_47
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getExtraParams()Lcom/bytedance/applog/IExtraParams;

    move-result-object v0

    if-nez v0, :cond_180

    move-object v0, v3

    .line 77
    :goto_4e
    if-eqz v0, :cond_53

    .line 78
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_18a

    .line 84
    :cond_53
    :goto_53
    sget-object v0, Lcom/bytedance/applog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 85
    sget-object v0, Lcom/bytedance/applog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    :cond_60
    if-eqz p3, :cond_69

    .line 89
    const-string v0, "ssmix"

    const-string v5, "a"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_69
    invoke-static {p0}, Lcom/bytedance/applog/util/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 95
    const-string v5, "ac"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_78
    const-string v0, "tweaked_channel"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 101
    const-string v0, "channel"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    :cond_92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 104
    const-string v5, "channel"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_9d
    const-string v0, "os_version"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_af

    .line 109
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_af
    const-string v1, "os_version"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "_rticket"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "device_platform"

    const-string v1, "android"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "version_code"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    if-eq v0, v8, :cond_e3

    .line 118
    const-string v1, "version_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_e3
    const-string v0, "manifest_version_code"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    if-eq v0, v8, :cond_fe

    .line 123
    const-string v1, "manifest_version_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_fe
    const-string v0, "update_version_code"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    if-eq v0, v8, :cond_119

    .line 128
    const-string v1, "update_version_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_119
    const-string v0, "oaid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/a/b;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 133
    const-string v1, "oaid"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_12e
    const-string v0, "cdid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13f

    .line 138
    const-string v1, "cdid"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_13f
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15a

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_15a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_190

    move v0, v2

    :goto_16a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v4, v1}, Lcom/bytedance/applog/util/k;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_d

    .line 71
    :catch_17a
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 76
    :cond_180
    :try_start_180
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getExtraParams()Lcom/bytedance/applog/IExtraParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IExtraParams;->getExtraParams()Ljava/util/HashMap;
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_187} :catch_18a

    move-result-object v0

    goto/16 :goto_4e

    .line 80
    :catch_18a
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 143
    :cond_190
    const/16 v0, 0x26

    goto :goto_16a

    :cond_193
    move-object v0, v3

    goto/16 :goto_3c
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;
    .registers 8

    .prologue
    .line 147
    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/util/UriConfig;->getSendHeadersUris()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 150
    const-string v0, "/service/2/app_log/?tt_data=a"

    .line 154
    :goto_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/applog/util/UriConfig;->getSendHeadersUris()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4b

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/applog/util/UriConfig;->getSendHeadersUris()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    const/4 v4, 0x1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIAppParam()Lcom/bytedance/applog/IAppParam;

    move-result-object v5

    invoke-static {p0, p1, v3, v4, v5}, Lcom/bytedance/applog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/IAppParam;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 152
    :cond_48
    const-string v0, "/service/2/app_log/?"

    goto :goto_13

    .line 158
    :cond_4b
    return-object v2
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 163
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 164
    const-string v0, "/service/2/app_log/?tt_data=a"

    .line 168
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/applog/util/UriConfig;->getSuccRateUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v1, 0x1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIAppParam()Lcom/bytedance/applog/IAppParam;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/bytedance/applog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/IAppParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_2b
    const-string v0, "/service/2/app_log/?"

    goto :goto_8
.end method
