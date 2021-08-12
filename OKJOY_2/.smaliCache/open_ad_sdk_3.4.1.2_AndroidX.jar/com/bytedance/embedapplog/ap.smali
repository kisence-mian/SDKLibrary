.class public Lcom/bytedance/embedapplog/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 25
    const-string v0, "ab_version"

    const-string v1, "device_brand"

    const-string v2, "language"

    const-string v3, "os_api"

    const-string v4, "resolution"

    const-string v5, "google_aid"

    const-string v6, "build_serial"

    const-string v7, "carrier"

    const-string v8, "install_id"

    const-string v9, "package"

    const-string v10, "app_version"

    const-string v11, "device_model"

    const-string v12, "udid"

    const-string v13, "density_dpi"

    const-string v14, "aliyun_uuid"

    const-string v15, "mcc_mnc"

    const-string v16, "sim_region"

    const-string v17, "ab_client"

    const-string v18, "ab_group"

    const-string v19, "ab_feature"

    const-string v20, "device_id"

    const-string v21, "openudid"

    const-string v22, "clientudid"

    const-string v23, "aid"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ap;->a:[Ljava/lang/String;

    .line 36
    const-string v1, "ab_version"

    const-string v2, "device_brand"

    const-string v3, "language"

    const-string v4, "os_api"

    const-string v5, "resolution"

    const-string v6, "google_aid"

    const-string v7, "build_serial"

    const-string v8, "carrier"

    const-string v9, "iid"

    const-string v10, "app_name"

    const-string v11, "version_name"

    const-string v12, "device_type"

    const-string v13, "uuid"

    const-string v14, "dpi"

    const-string v15, "aliyun_uuid"

    const-string v16, "mcc_mnc"

    const-string v17, "sim_region"

    const-string v18, "ab_client"

    const-string v19, "ab_group"

    const-string v20, "ab_feature"

    const-string v21, "device_id"

    const-string v22, "openudid"

    const-string v23, "clientudid"

    const-string v24, "aid"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/ap;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;
    .registers 12

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    return-object p2

    .line 52
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/bytedance/embedapplog/ap;->a:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xa

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 55
    const/4 v1, 0x0

    move v3, v1

    :goto_14
    sget-object v4, Lcom/bytedance/embedapplog/ap;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_30

    .line 56
    aget-object v4, v4, v3

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 58
    sget-object v5, Lcom/bytedance/embedapplog/ap;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 63
    :cond_30
    nop

    .line 65
    if-eqz p4, :cond_38

    .line 66
    :try_start_33
    invoke-interface {p4, p0}, Lcom/bytedance/embedapplog/IAppParam;->getAppSSIDs(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p4

    goto :goto_39

    .line 65
    :cond_38
    move-object p4, v6

    .line 68
    :goto_39
    invoke-static {p0}, Lcom/bytedance/embedapplog/bp;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz p4, :cond_44

    .line 69
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_44} :catch_45

    .line 73
    :cond_44
    goto :goto_49

    .line 71
    :catch_45
    move-exception p4

    .line 72
    invoke-static {p4}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 76
    :goto_49
    :try_start_49
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getExtraParams()Lcom/bytedance/embedapplog/IExtraParams;

    move-result-object p4

    if-nez p4, :cond_51

    move-object p4, v6

    goto :goto_59

    :cond_51
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getExtraParams()Lcom/bytedance/embedapplog/IExtraParams;

    move-result-object p4

    invoke-interface {p4}, Lcom/bytedance/embedapplog/IExtraParams;->getExtraParams()Ljava/util/HashMap;

    move-result-object p4

    .line 77
    :goto_59
    if-eqz p4, :cond_5e

    .line 78
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_5f

    .line 82
    :cond_5e
    goto :goto_63

    .line 80
    :catch_5f
    move-exception p4

    .line 81
    invoke-static {p4}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 84
    :goto_63
    sget-object p4, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p4

    if-lez p4, :cond_70

    .line 85
    sget-object p4, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    :cond_70
    if-eqz p3, :cond_79

    .line 89
    const-string p3, "ssmix"

    const-string p4, "a"

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_79
    invoke-static {p0}, Lcom/bytedance/embedapplog/bl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_88

    .line 95
    const-string p3, "ac"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_88
    const-string p0, "tweaked_channel"

    const-string p3, ""

    invoke-static {p0, p3}, Lcom/bytedance/embedapplog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v3, "channel"

    if-eqz p4, :cond_a0

    .line 101
    invoke-static {v3, p3}, Lcom/bytedance/embedapplog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 103
    :cond_a0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a9

    .line 104
    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_a9
    const-string p0, "os_version"

    invoke-virtual {p1, p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 108
    if-eqz p3, :cond_bb

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-le p4, v2, :cond_bb

    .line 109
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 111
    :cond_bb
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p3, "_rticket"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string p0, "device_platform"

    const-string p3, "android"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "version_code"

    invoke-static {p4, p3}, Lcom/bytedance/embedapplog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 117
    if-eq p3, p0, :cond_ec

    .line 118
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_ec
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "manifest_version_code"

    invoke-static {p4, p3}, Lcom/bytedance/embedapplog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 122
    if-eq p3, p0, :cond_105

    .line 123
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "update_version_code"

    invoke-static {p4, p3}, Lcom/bytedance/embedapplog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 127
    if-eq p3, p0, :cond_11e

    .line 128
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_11e
    const-string p0, "oaid"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/embedapplog/bw;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_131

    .line 133
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_131
    const-string p0, "cdid"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_140

    .line 138
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_140
    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_159

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_16b

    goto :goto_16d

    :cond_16b
    const/16 p1, 0x26

    :goto_16d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, v0, p1}, Lcom/bytedance/embedapplog/bp;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)[Ljava/lang/String;
    .registers 8

    .line 147
    invoke-static {}, Lcom/bytedance/embedapplog/ao;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->getSendHeadersUris()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 150
    const-string v1, "/service/2/app_log/?tt_data=a"

    goto :goto_16

    .line 152
    :cond_14
    const-string v1, "/service/2/app_log/?"

    .line 154
    :goto_16
    const/4 v2, 0x0

    :goto_17
    invoke-static {}, Lcom/bytedance/embedapplog/ao;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/util/UriConfig;->getSendHeadersUris()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_55

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embedapplog/ao;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/util/UriConfig;->getSendHeadersUris()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, p1, v3, v5, v4}, Lcom/bytedance/embedapplog/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 157
    aget-object v3, v0, v2

    sget-object v4, Lcom/bytedance/embedapplog/ao;->b:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bytedance/embedapplog/ao;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 159
    :cond_55
    return-object v0
.end method
