.class public Lcom/tendcloud/tenddata/game/bb;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bb$a;,
        Lcom/tendcloud/tenddata/game/bb$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "www.talkingdata.net"

.field static final b:I = 0x50

.field private static c:Landroid/telephony/TelephonyManager; = null

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Lcom/tendcloud/tenddata/game/bb$a; = null

.field private static g:Z = false

.field private static final h:J = 0x493e0L

.field private static i:J

.field private static j:Z

.field private static k:Lcom/tendcloud/tenddata/game/bb$b;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "GPRS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "EDGE"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "UMTS"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v6, "CDMA"

    aput-object v6, v0, v1

    const/4 v7, 0x5

    const-string v8, "EVDO_0"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "EVDO_A"

    aput-object v8, v0, v7

    const/4 v7, 0x7

    const-string v8, "1xRTT"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, "HSDPA"

    aput-object v8, v0, v7

    const/16 v7, 0x9

    const-string v8, "HSUPA"

    aput-object v8, v0, v7

    const/16 v7, 0xa

    const-string v8, "HSPA"

    aput-object v8, v0, v7

    const/16 v7, 0xb

    const-string v8, "IDEN"

    aput-object v8, v0, v7

    const/16 v7, 0xc

    const-string v8, "EVDO_B"

    aput-object v8, v0, v7

    const/16 v7, 0xd

    const-string v8, "LTE"

    aput-object v8, v0, v7

    const/16 v7, 0xe

    const-string v8, "EHRPD"

    aput-object v8, v0, v7

    const/16 v7, 0xf

    const-string v8, "HSPAP"

    aput-object v8, v0, v7

    sput-object v0, Lcom/tendcloud/tenddata/game/bb;->d:[Ljava/lang/String;

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v2

    const-string v1, "GSM"

    aput-object v1, v0, v3

    aput-object v6, v0, v4

    const-string v1, "SIP"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tendcloud/tenddata/game/bb;->e:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bb;->f:Lcom/tendcloud/tenddata/game/bb$a;

    .line 87
    sput-boolean v2, Lcom/tendcloud/tenddata/game/bb;->g:Z

    .line 89
    const-wide/32 v0, -0x493e0

    sput-wide v0, Lcom/tendcloud/tenddata/game/bb;->i:J

    .line 995
    sput-boolean v2, Lcom/tendcloud/tenddata/game/bb;->j:Z

    .line 996
    new-instance v0, Lcom/tendcloud/tenddata/game/bb$b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bb$b;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bb;->k:Lcom/tendcloud/tenddata/game/bb$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 10

    .line 1137
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1138
    if-nez p0, :cond_f

    .line 1139
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_e

    .line 1140
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_f

    .line 1142
    :cond_e
    return-object v0

    .line 1147
    :cond_f
    :goto_f
    :try_start_f
    const-string v1, "phone"

    .line 1148
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    const/16 v3, 0x16

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v3
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_15c

    const/4 v4, 0x0

    const-string v5, "imei"

    const-string v6, "android.permission.READ_PHONE_STATE"

    if-eqz v3, :cond_81

    .line 1152
    :try_start_29
    const-string v2, "telephony_subscription_service"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_15c

    .line 1156
    :try_start_31
    invoke-static {v1, v2, v4}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1157
    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    if-eqz v1, :cond_44

    .line 1158
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1160
    :cond_44
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4d

    .line 1161
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4e

    .line 1167
    :cond_4d
    goto :goto_4f

    .line 1163
    :catchall_4e
    move-exception v3

    .line 1170
    :goto_4f
    const/4 v3, 0x1

    :try_start_50
    invoke-static {v1, v2, v3}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1171
    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_74

    if-eqz v1, :cond_74

    .line 1172
    const/16 p0, 0x17

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p0

    if-eqz p0, :cond_70

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v4, 0x2

    if-ne p0, v4, :cond_70

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    :cond_70
    const/4 p0, 0x0

    :goto_71
    invoke-virtual {v2, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1174
    :cond_74
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_7d

    .line 1175
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7d
    .catchall {:try_start_50 .. :try_end_7d} :catchall_7e

    .line 1181
    :cond_7d
    goto :goto_7f

    .line 1177
    :catchall_7e
    move-exception p0

    .line 1183
    :goto_7f
    goto/16 :goto_15b

    .line 1184
    :cond_81
    nop

    .line 1185
    :try_start_82
    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_15c

    const-string v7, ""

    if-eqz v3, :cond_91

    if-eqz v1, :cond_91

    .line 1186
    :try_start_8c
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_92

    .line 1189
    :cond_91
    move-object v3, v7

    :goto_92
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 1190
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_b0

    .line 1193
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b0
    .catchall {:try_start_8c .. :try_end_b0} :catchall_15c

    .line 1198
    :cond_b0
    :try_start_b0
    const-string v1, "phone1"

    .line 1199
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1200
    nop

    .line 1201
    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c6

    if-eqz v1, :cond_c6

    .line 1202
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_c7

    .line 1204
    :cond_c6
    move-object v3, v7

    :goto_c7
    if-eqz v3, :cond_e5

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 1205
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e5

    .line 1206
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1209
    if-eqz v1, :cond_e5

    .line 1210
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e5
    .catchall {:try_start_b0 .. :try_end_e5} :catchall_e6

    .line 1218
    :cond_e5
    goto :goto_e7

    .line 1214
    :catchall_e6
    move-exception v1

    .line 1221
    :goto_e7
    :try_start_e7
    const-string v1, "phone2"

    .line 1222
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1223
    nop

    .line 1224
    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fc

    if-eqz v1, :cond_fc

    .line 1225
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 1227
    :cond_fc
    if-eqz v7, :cond_11a

    invoke-static {v7}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 1228
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11a

    .line 1229
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-static {v1, v7}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1232
    if-eqz v1, :cond_11a

    .line 1233
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_11a
    .catchall {:try_start_e7 .. :try_end_11a} :catchall_11b

    .line 1241
    :cond_11a
    goto :goto_11c

    .line 1237
    :catchall_11b
    move-exception v1

    .line 1243
    :goto_11c
    :try_start_11c
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->H(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1244
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->G(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1245
    if-eqz v3, :cond_127

    .line 1246
    move-object v1, v3

    .line 1248
    :cond_127
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->F(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1249
    if-eqz v3, :cond_12e

    .line 1250
    move-object v1, v3

    .line 1252
    :cond_12e
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->E(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 1253
    if-eqz p0, :cond_135

    .line 1254
    move-object v1, p0

    .line 1257
    :cond_135
    if-eqz v1, :cond_15b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_15b

    .line 1258
    nop

    :goto_13e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v4, p0, :cond_15b

    .line 1259
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 1260
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1261
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_158

    .line 1262
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_158
    .catchall {:try_start_11c .. :try_end_158} :catchall_15c

    .line 1258
    :cond_158
    add-int/lit8 v4, v4, 0x1

    goto :goto_13e

    .line 1272
    :cond_15b
    :goto_15b
    goto :goto_15d

    .line 1268
    :catchall_15c
    move-exception p0

    .line 1273
    :goto_15d
    return-object v0
.end method

.method public static B(Landroid/content/Context;)I
    .registers 2

    .line 1284
    nop

    .line 1285
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1287
    :try_start_9
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    .line 1288
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 1290
    :cond_10
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    .line 1295
    goto :goto_24

    .line 1291
    :catchall_17
    move-exception p0

    .line 1295
    goto :goto_23

    .line 1298
    :cond_19
    :try_start_19
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_22

    .line 1303
    goto :goto_24

    .line 1299
    :catchall_22
    move-exception p0

    .line 1305
    :goto_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public static C(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    .line 1387
    nop

    .line 1389
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_3f

    .line 1390
    :try_start_7
    const-string v0, "phone"

    .line 1391
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1392
    const-string v0, "dataState"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1393
    const-string v0, "networkType"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    const-string v0, "networkOperator"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    const-string v0, "phoneType"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3c

    .line 1402
    goto :goto_41

    .line 1397
    :catchall_3c
    move-exception p0

    move-object v0, v1

    goto :goto_40

    :catchall_3f
    move-exception p0

    :goto_40
    move-object v1, v0

    .line 1403
    :goto_41
    return-object v1
.end method

.method public static D(Landroid/content/Context;)Ljava/util/Map;
    .registers 7

    .line 1702
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    .line 1703
    nop

    .line 1705
    :try_start_8
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 1706
    if-eqz p0, :cond_5d

    .line 1707
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1708
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v4, v3, [B

    invoke-direct {v0, v4, v3, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 1709
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_73

    .line 1710
    nop

    :goto_28
    const/16 v4, 0xff

    if-ge v2, v4, :cond_59

    .line 1711
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_71

    .line 1714
    :try_start_41
    invoke-virtual {v0, v4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 1715
    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1716
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_54

    .line 1717
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 1718
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_55

    move-object v3, v4

    .line 1724
    :cond_54
    goto :goto_56

    .line 1720
    :catchall_55
    move-exception v4

    .line 1710
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1726
    :cond_59
    :try_start_59
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto :goto_5e

    .line 1706
    :cond_5d
    move-object v3, v1

    .line 1728
    :goto_5e
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1729
    invoke-static {}, Lcom/tendcloud/tenddata/game/bb;->b()Ljava/util/Map;

    move-result-object p0
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_71

    .line 1736
    if-eqz v3, :cond_6f

    .line 1737
    :try_start_69
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_6f

    .line 1739
    :catchall_6d
    move-exception v0

    goto :goto_70

    .line 1743
    :cond_6f
    :goto_6f
    nop

    .line 1729
    :goto_70
    return-object p0

    .line 1730
    :catchall_71
    move-exception p0

    goto :goto_75

    :catchall_73
    move-exception p0

    move-object v3, v1

    .line 1736
    :goto_75
    if-eqz v3, :cond_7d

    .line 1737
    :try_start_77
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7d

    .line 1739
    :catchall_7b
    move-exception p0

    .line 1744
    nop

    .line 1746
    :cond_7d
    :goto_7d
    return-object v1
.end method

.method private static E(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 11

    .line 1450
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1451
    const-string v2, "phone"

    .line 1452
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1453
    const-string v2, "com.android.internal.telephony.Phone"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_97

    .line 1456
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_16
    const-string v5, "GEMINI_SIM_1"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1457
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1458
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1459
    const-string v6, "GEMINI_SIM_2"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1460
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1461
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_35

    .line 1465
    goto :goto_3e

    .line 1462
    :catchall_35
    move-exception v2

    .line 1463
    :try_start_36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1464
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1466
    :goto_3e
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string v7, "getDeviceIdGemini"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    .line 1467
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1468
    if-eqz p0, :cond_96

    if-nez v6, :cond_51

    goto :goto_96

    .line 1471
    :cond_51
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1472
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1474
    invoke-static {v7}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_75
    .catchall {:try_start_36 .. :try_end_75} :catchall_97

    const-string v6, "Gemini"

    if-eqz v4, :cond_82

    .line 1475
    :try_start_79
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-static {v4, p0, v5, v7, v6}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1478
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1481
    :cond_82
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 1482
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-static {v4, p0, v2, v3, v6}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1485
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_97

    .line 1487
    :cond_95
    return-object v1

    .line 1469
    :cond_96
    :goto_96
    return-object v0

    .line 1488
    :catchall_97
    move-exception p0

    .line 1490
    return-object v0
.end method

.method private static F(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 11

    .line 1497
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1498
    const-string v2, "phone"

    .line 1499
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1500
    const-string v2, "com.android.internal.telephony.Phone"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_97

    .line 1504
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_16
    const-string v5, "GEMINI_SIM_1"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1505
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1506
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1507
    const-string v6, "GEMINI_SIM_2"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1508
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1509
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_35

    .line 1513
    goto :goto_3e

    .line 1510
    :catchall_35
    move-exception v2

    .line 1511
    :try_start_36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1514
    :goto_3e
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string v7, "getDefault"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1516
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1517
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1518
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1519
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1521
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1522
    invoke-static {v5, v2}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1523
    if-eqz v2, :cond_83

    .line 1524
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1527
    :cond_83
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1528
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1529
    if-eqz p0, :cond_96

    .line 1530
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_96
    .catchall {:try_start_36 .. :try_end_96} :catchall_97

    .line 1533
    :cond_96
    return-object v1

    .line 1535
    :catchall_97
    move-exception p0

    .line 1536
    return-object v0
.end method

.method private static G(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 10

    .line 1542
    const-string v0, "phone"

    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1543
    const-string v2, "com.android.internal.telephony.PhoneFactory"

    .line 1544
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1545
    const-string v3, "getServiceName"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1547
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 1548
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1547
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1550
    nop

    .line 1551
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1552
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1553
    nop

    .line 1554
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1555
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1558
    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1559
    if-eqz v0, :cond_61

    .line 1560
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1563
    :cond_61
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1564
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1565
    if-eqz p0, :cond_74

    .line 1566
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_74
    .catchall {:try_start_2 .. :try_end_74} :catchall_75

    .line 1569
    :cond_74
    return-object v1

    .line 1571
    :catchall_75
    move-exception p0

    .line 1572
    const/4 p0, 0x0

    return-object p0
.end method

.method private static H(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 10

    .line 1578
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1579
    const-string v1, "android.telephony.MSimTelephonyManager"

    .line 1580
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1581
    const-string v2, "phone_msim"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1582
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1583
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1584
    const-string v6, "getDeviceId"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    .line 1585
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1590
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1591
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1592
    invoke-static {v7}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_68

    const-string v6, ""

    if-eqz v4, :cond_56

    .line 1593
    :try_start_4f
    invoke-static {v1, p0, v3, v7, v6}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1595
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1598
    :cond_56
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1599
    invoke-static {v1, p0, v5, v2, v6}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1601
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_68

    .line 1603
    :cond_67
    return-object v0

    .line 1605
    :catchall_68
    move-exception p0

    .line 1606
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    .line 1407
    const/16 v0, 0x30

    .line 1408
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 1409
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1411
    :cond_d
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1412
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 1413
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1414
    if-eq v0, v4, :cond_24

    .line 1415
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_28

    .line 1416
    goto :goto_27

    .line 1412
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1420
    :cond_27
    :goto_27
    return-object v2

    .line 1421
    :catchall_28
    move-exception p0

    .line 1426
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3

    .line 353
    if-ltz p0, :cond_a

    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->d:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object p0, v0, p0

    goto :goto_e

    .line 354
    :cond_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 353
    :goto_e
    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Lorg/json/JSONArray;
    .registers 9

    .line 548
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 549
    :try_start_3
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_a

    .line 550
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_b

    .line 552
    :cond_a
    return-object v0

    .line 555
    :cond_b
    :goto_b
    const/4 v1, 0x1

    .line 556
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 557
    const-string v3, "type"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->m(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    const-string v3, "mcc"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v3, "operator"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v3, "country"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const/16 v3, 0x17

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_d5

    const/4 v4, 0x0

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    if-eqz v3, :cond_4f

    .line 562
    :try_start_42
    invoke-virtual {p0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4f

    .line 563
    invoke-virtual {p0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4f

    .line 565
    const/4 v1, 0x0

    .line 569
    :cond_4f
    invoke-static {p0, v6}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 571
    invoke-static {p0, v5}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 573
    goto :goto_5d

    .line 576
    :cond_5c
    move v4, v1

    :goto_5d
    if-eqz v4, :cond_cc

    .line 577
    sget-object v1, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_66

    .line 578
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 580
    :cond_66
    sget-boolean p0, Lcom/tendcloud/tenddata/game/bq;->c:Z

    if-nez p0, :cond_6c

    if-eqz p1, :cond_cc

    .line 581
    :cond_6c
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 582
    instance-of p1, p0, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_74
    .catchall {:try_start_42 .. :try_end_74} :catchall_d5

    const-string v1, "basestationId"

    const-string v3, "networkId"

    const-string v4, "systemId"

    if-eqz p1, :cond_9e

    .line 584
    :try_start_7c
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 585
    if-eqz p0, :cond_9d

    .line 586
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 589
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 592
    :cond_9d
    goto :goto_cc

    .line 593
    :cond_9e
    instance-of p1, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p1, :cond_cc

    .line 595
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 596
    if-eqz p0, :cond_cc

    .line 597
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result p1

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 598
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 599
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 600
    const-string p1, "location"

    .line 603
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    .line 604
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p0

    .line 602
    invoke-static {v1, p0}, Lcom/tendcloud/tenddata/game/bb;->a(II)Lorg/json/JSONObject;

    move-result-object p0

    .line 600
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    :cond_cc
    :goto_cc
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 611
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d4
    .catchall {:try_start_7c .. :try_end_d4} :catchall_d5

    .line 612
    return-object p0

    .line 613
    :catchall_d5
    move-exception p0

    .line 614
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 619
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;I)Lorg/json/JSONArray;
    .registers 5

    .line 1090
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/be;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/be;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1104
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_16
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-object v0

    .line 1105
    :catchall_1e
    move-exception p0

    .line 1110
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/BitSet;)Lorg/json/JSONArray;
    .registers 4

    .line 1114
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1115
    return-object v0

    .line 1117
    :cond_4
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 1118
    const/4 v2, 0x1

    if-ge v1, v2, :cond_c

    .line 1119
    return-object v0

    .line 1121
    :cond_c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1122
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 1123
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1125
    :cond_1e
    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .registers 6

    .line 790
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3a

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 793
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 795
    :cond_1d
    new-instance p0, Lcom/tendcloud/tenddata/game/bc;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bc;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 809
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_2e

    goto :goto_32

    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_32
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3b

    return-object p0

    .line 816
    :cond_3a
    goto :goto_3c

    .line 812
    :catchall_3b
    move-exception p0

    .line 817
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(II)Lorg/json/JSONObject;
    .registers 4

    .line 822
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 824
    :try_start_5
    const-string v1, "lat"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 825
    const-string p0, "lng"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 826
    const-string p0, "unit"

    const-string p1, "qd"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    .line 831
    goto :goto_18

    .line 827
    :catchall_17
    move-exception p0

    .line 832
    :goto_18
    return-object v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;I)Lorg/json/JSONObject;
    .registers 7

    .line 1343
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1345
    const/16 v1, 0x16

    :try_start_7
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1347
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 1349
    if-eqz p1, :cond_7e

    .line 1351
    const-string p2, "simSerialNumber"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_7f

    const-string v2, ""

    if-nez v1, :cond_1f

    move-object v1, v2

    goto :goto_23

    .line 1352
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 1351
    :goto_23
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1354
    const-string p2, "simOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1355
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1356
    const-string p2, "simOperatorName"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_54

    move-object v1, v2

    goto :goto_58

    .line 1357
    :cond_54
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1356
    :goto_58
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1359
    const-string p2, "simCountryIso"

    .line 1360
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_65

    move-object v1, v2

    goto :goto_69

    :cond_65
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1359
    :goto_69
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1362
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I
    :try_end_6f
    .catchall {:try_start_1f .. :try_end_6f} :catchall_7f

    .line 1366
    :try_start_6f
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 1367
    const-string p1, "subscriberId"

    if-nez p0, :cond_78

    goto :goto_79

    :cond_78
    move-object v2, p0

    :goto_79
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_7d

    .line 1372
    goto :goto_7e

    .line 1368
    :catchall_7d
    move-exception p0

    .line 1381
    :cond_7e
    :goto_7e
    goto :goto_80

    .line 1377
    :catchall_7f
    move-exception p0

    .line 1382
    :goto_80
    return-object v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 1310
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1311
    const-string v1, "imei"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1313
    const-string p1, "subscriberId"

    .line 1314
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_91

    const-string v2, ""

    if-nez v1, :cond_1a

    move-object v1, v2

    goto :goto_1e

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1313
    :goto_1e
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1316
    const-string p1, "simSerialNumber"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move-object v1, v2

    goto :goto_2f

    .line 1317
    :cond_2b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 1316
    :goto_2f
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    const-string p1, "dataState"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1321
    const-string p1, "networkType"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bb;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1323
    const-string p1, "networkOperator"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    const-string p1, "phoneType"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bb;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string p1, "simOperator"

    .line 1328
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_68

    move-object v1, v2

    goto :goto_6c

    :cond_68
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 1327
    :goto_6c
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1330
    const-string p1, "simOperatorName"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_79

    move-object v1, v2

    goto :goto_7d

    .line 1331
    :cond_79
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 1330
    :goto_7d
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1333
    const-string p1, "simCountryIso"

    .line 1334
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_8d

    :cond_89
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1333
    :goto_8d
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catchall {:try_start_1a .. :try_end_90} :catchall_91

    .line 1335
    return-object v0

    .line 1336
    :catchall_91
    move-exception p0

    .line 1337
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .line 1613
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1614
    const-string v2, "imei"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1616
    const/4 p3, 0x0

    const/4 v2, 0x1

    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1618
    const-string v4, "subscriberId"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_39

    move-object v3, v0

    goto :goto_47

    :cond_39
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1619
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1618
    :goto_47
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_4b

    .line 1624
    goto :goto_4c

    .line 1620
    :catchall_4b
    move-exception v3

    .line 1626
    :goto_4c
    :try_start_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1628
    const-string v4, "simSerialNumber"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_77

    move-object v3, v0

    goto :goto_85

    :cond_77
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1629
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1628
    :goto_85
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catchall {:try_start_4c .. :try_end_88} :catchall_89

    .line 1634
    goto :goto_8a

    .line 1630
    :catchall_89
    move-exception v3

    .line 1637
    :goto_8a
    :try_start_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1639
    const-string v4, "dataState"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b6
    .catchall {:try_start_8a .. :try_end_b6} :catchall_b7

    .line 1644
    goto :goto_b8

    .line 1640
    :catchall_b7
    move-exception v3

    .line 1647
    :goto_b8
    :try_start_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1649
    const-string v4, "networkType"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1650
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1649
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ec
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_ed

    .line 1655
    goto :goto_ee

    .line 1651
    :catchall_ed
    move-exception v3

    .line 1658
    :goto_ee
    :try_start_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1660
    const-string v4, "networkOperator"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11a
    .catchall {:try_start_ee .. :try_end_11a} :catchall_11b

    .line 1665
    goto :goto_11c

    .line 1661
    :catchall_11b
    move-exception v3

    .line 1668
    :goto_11c
    :try_start_11c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1670
    const-string v4, "phoneType"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1671
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->c(I)Ljava/lang/String;

    move-result-object v3

    .line 1670
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_150
    .catchall {:try_start_11c .. :try_end_150} :catchall_151

    .line 1676
    goto :goto_152

    .line 1672
    :catchall_151
    move-exception v3

    .line 1679
    :goto_152
    :try_start_152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1681
    const-string v4, "simOperator"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_17d

    move-object v3, v0

    goto :goto_18b

    :cond_17d
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, p3

    .line 1682
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1681
    :goto_18b
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18e
    .catchall {:try_start_152 .. :try_end_18e} :catchall_18f

    .line 1687
    goto :goto_190

    .line 1683
    :catchall_18f
    move-exception v3

    .line 1690
    :goto_190
    :try_start_190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimOperatorName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p3

    invoke-virtual {p0, p4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1692
    const-string p4, "simOperatorName"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, p3

    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1ba

    goto :goto_1c8

    :cond_1ba
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, p3

    .line 1693
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1692
    :goto_1c8
    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1cb
    .catchall {:try_start_190 .. :try_end_1cb} :catchall_1cc

    .line 1698
    goto :goto_1cd

    .line 1694
    :catchall_1cc
    move-exception p0

    .line 1699
    :goto_1cd
    return-object v1
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    .line 78
    :try_start_0
    const-string v0, "phone"

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 84
    goto :goto_c

    .line 80
    :catchall_b
    move-exception p0

    .line 85
    :goto_c
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 286
    const/16 v0, 0xb

    :try_start_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 287
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 290
    :cond_15
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_20

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 291
    :catchall_20
    move-exception v0

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 1436
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 1438
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2d

    return-object p0

    .line 1444
    :cond_2c
    goto :goto_2e

    .line 1440
    :catchall_2d
    move-exception p0

    .line 1445
    :goto_2e
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    .line 358
    nop

    .line 360
    const-string v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_16

    goto :goto_13

    .line 385
    :pswitch_7
    :try_start_7
    const-string v0, "4G"

    .line 386
    goto :goto_13

    .line 381
    :pswitch_a
    const-string v0, "3G"

    .line 382
    goto :goto_13

    .line 369
    :pswitch_d
    const-string v0, "2G"
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    .line 370
    goto :goto_13

    .line 389
    :catchall_10
    move-exception p0

    goto :goto_14

    .line 362
    :pswitch_12
    nop

    .line 393
    :goto_13
    nop

    .line 395
    :goto_14
    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 94
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 95
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 96
    nop

    .line 97
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 98
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 99
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_34

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_34

    .line 101
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_37

    return-object p0

    .line 103
    :cond_34
    goto :goto_15

    .line 104
    :cond_35
    goto :goto_4

    .line 107
    :cond_36
    goto :goto_3b

    .line 105
    :catchall_37
    move-exception p0

    .line 106
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 108
    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()Ljava/util/Map;
    .registers 6

    .line 1751
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1752
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1754
    nop

    .line 1756
    :goto_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 1757
    const-string v3, "[ ]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1758
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const-string v5, "IP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 1759
    aget-object v3, v2, v3

    .line 1760
    const/4 v4, 0x3

    aget-object v2, v2, v4

    .line 1761
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "00:00:00:00:00:00"

    .line 1762
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 1763
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    :cond_44
    goto :goto_17

    .line 1767
    :cond_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    .line 1769
    return-object v0

    .line 1770
    :catchall_49
    move-exception v0

    .line 1775
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .registers 6

    .line 909
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3a

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 911
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 912
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 914
    :cond_1d
    new-instance p0, Lcom/tendcloud/tenddata/game/bd;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bd;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 928
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_2e

    goto :goto_32

    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_32
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3b

    return-object p0

    .line 935
    :cond_3a
    goto :goto_3c

    .line 931
    :catchall_3b
    move-exception p0

    .line 936
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 3

    .line 399
    if-ltz p0, :cond_a

    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->e:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object p0, v0, p0

    goto :goto_e

    .line 400
    :cond_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 399
    :goto_e
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 7

    .line 113
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 115
    const-string v0, "connectivity"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1d

    .line 120
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    .line 122
    :cond_1d
    nop

    .line 123
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 124
    if-eqz p0, :cond_31

    .line 125
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {p0, v0}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    .line 129
    :cond_31
    return v1

    .line 133
    :cond_32
    :goto_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tendcloud/tenddata/game/bb;->i:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-lez p0, :cond_82

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/tendcloud/tenddata/game/bb;->i:J
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_83

    .line 137
    const/4 p0, 0x0

    .line 139
    :try_start_47
    invoke-static {}, Lcom/tendcloud/tenddata/game/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 140
    new-instance v0, Ljava/net/Socket;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object p0, v0

    goto :goto_66

    .line 142
    :cond_5c
    new-instance v0, Ljava/net/Socket;

    const-string v2, "www.talkingdata.net"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object p0, v0

    .line 144
    :goto_66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bb;->g:Z
    :try_end_69
    .catchall {:try_start_47 .. :try_end_69} :catchall_6e

    .line 149
    nop

    .line 151
    :try_start_6a
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_77

    goto :goto_76

    .line 146
    :catchall_6e
    move-exception v0

    .line 147
    :try_start_6f
    sput-boolean v1, Lcom/tendcloud/tenddata/game/bb;->g:Z
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_79

    .line 149
    if-eqz p0, :cond_82

    .line 151
    :try_start_73
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    .line 156
    :goto_76
    goto :goto_82

    .line 152
    :catchall_77
    move-exception p0

    goto :goto_76

    .line 149
    :catchall_79
    move-exception v0

    if-eqz p0, :cond_81

    .line 151
    :try_start_7c
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    .line 156
    goto :goto_81

    .line 152
    :catchall_80
    move-exception p0

    .line 156
    :cond_81
    :goto_81
    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_83

    .line 165
    :cond_82
    :goto_82
    goto :goto_87

    .line 160
    :catchall_83
    move-exception p0

    .line 161
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 166
    :goto_87
    sget-boolean p0, Lcom/tendcloud/tenddata/game/bb;->g:Z

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    .line 171
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 173
    const-string v1, "connectivity"

    .line 174
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 177
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    .line 183
    :cond_20
    goto :goto_22

    .line 179
    :catchall_21
    move-exception p0

    .line 184
    :goto_22
    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    .line 188
    nop

    .line 191
    :try_start_1
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    const/4 p0, 0x1

    .line 193
    return p0

    .line 195
    :cond_9
    const-string v0, "wifi"

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 197
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    .line 203
    goto :goto_1b

    .line 198
    :catchall_16
    move-exception p0

    .line 199
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 204
    :goto_1b
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    .line 209
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_8

    .line 210
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 212
    :cond_8
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    const/4 v1, 0x5

    if-ne p0, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 213
    :catchall_13
    move-exception p0

    .line 217
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 3

    .line 223
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_8

    .line 224
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 226
    :cond_8
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 227
    const/4 v1, 0x1

    if-eq v1, p0, :cond_14

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    .line 228
    :catchall_15
    move-exception p0

    .line 232
    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 4

    .line 237
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 238
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_a

    .line 239
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_b

    .line 241
    :cond_a
    return v0

    .line 245
    :cond_b
    :goto_b
    :try_start_b
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 247
    const-string v1, "connectivity"

    .line 248
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 249
    nop

    .line 250
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 251
    const/4 v1, 0x1

    if-eqz p0, :cond_31

    .line 252
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_31

    .line 253
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_34

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    nop

    .line 251
    :goto_32
    return v0

    .line 259
    :cond_33
    goto :goto_35

    .line 255
    :catchall_34
    move-exception p0

    .line 260
    :goto_35
    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 3

    .line 264
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 265
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_a

    .line 266
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_b

    .line 268
    :cond_a
    return v0

    .line 272
    :cond_b
    :goto_b
    :try_start_b
    sget-object v1, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_12

    .line 273
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 275
    :cond_12
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 276
    :catchall_1d
    move-exception p0

    .line 280
    return v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 297
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 298
    const-string p0, "OFFLINE"

    return-object p0

    .line 299
    :cond_9
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 300
    const-string p0, "WIFI"

    return-object p0

    .line 302
    :cond_12
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->m(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 306
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 307
    const-string p0, "offline"

    return-object p0

    .line 308
    :cond_9
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 309
    const-string p0, "wifi"

    return-object p0

    .line 311
    :cond_12
    const-string p0, "cellular"

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 315
    const-string v0, "UNKNOWN"

    if-nez p0, :cond_c

    .line 316
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 317
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 319
    :cond_b
    return-object v0

    .line 322
    :cond_c
    :goto_c
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 323
    return-object v0

    .line 324
    :cond_13
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 325
    const-string p0, "WIFI"

    return-object p0

    .line 327
    :cond_1c
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->m(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;)I
    .registers 3

    .line 331
    nop

    .line 333
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 334
    :try_start_4
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 335
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 337
    :cond_b
    return v0

    .line 340
    :cond_c
    :goto_c
    sget-object v1, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_13

    .line 341
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 343
    :cond_13
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1a

    return p0

    .line 344
    :catchall_1a
    move-exception p0

    .line 349
    return v0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 405
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    .line 406
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 408
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 409
    :catchall_e
    move-exception p0

    .line 413
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 419
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    .line 420
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 422
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 423
    :catchall_e
    move-exception p0

    .line 427
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 433
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    .line 434
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 436
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 437
    :catchall_e
    move-exception p0

    .line 441
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 447
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    .line 448
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 450
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 451
    :catchall_e
    move-exception p0

    .line 455
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 461
    const/16 v0, 0x17

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2d

    const-string v2, "android.permission.READ_PHONE_STATE"

    if-eqz v0, :cond_12

    .line 462
    :try_start_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 464
    return-object v1

    .line 467
    :cond_12
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2c

    .line 470
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_25

    .line 471
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 473
    :cond_25
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2d

    return-object p0

    .line 479
    :cond_2c
    goto :goto_2e

    .line 475
    :catchall_2d
    move-exception p0

    .line 480
    :goto_2e
    return-object v1
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 486
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    .line 487
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 489
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 490
    :catchall_e
    move-exception p0

    .line 494
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 500
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    .line 501
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 503
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    .line 504
    :catchall_e
    move-exception p0

    .line 508
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 10

    .line 513
    const-string v0, "scannable"

    const-string v1, "current"

    const-string v2, "connected"

    const-string v3, "available"

    const-string v4, "type"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 516
    :try_start_f
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 517
    const-string v7, "wifi"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->e(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 519
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 520
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->z(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v7, "configured"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_42

    .line 528
    goto :goto_43

    .line 524
    :catchall_42
    move-exception v6

    .line 530
    :goto_43
    :try_start_43
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 531
    const-string v7, "cellular"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->f(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 533
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->i(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 534
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6d
    .catchall {:try_start_43 .. :try_end_6d} :catchall_6e

    .line 541
    goto :goto_6f

    .line 537
    :catchall_6e
    move-exception p0

    .line 543
    :goto_6f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_76

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    return-object v5
.end method

.method public static v(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 17

    .line 623
    const-string v1, "cdmaDbm"

    const/4 v2, 0x0

    if-nez p0, :cond_d

    .line 624
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 625
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_f

    .line 627
    :cond_c
    return-object v2

    .line 623
    :cond_d
    move-object/from16 v0, p0

    .line 630
    :goto_f
    const/16 v3, 0x17

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    if-eqz v3, :cond_20

    .line 631
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_20

    .line 633
    return-object v2

    .line 637
    :cond_20
    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 639
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 642
    :cond_2e
    :try_start_2e
    sget-object v3, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_35

    .line 643
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;)V

    .line 646
    :cond_35
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 648
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_1f8

    const-string v4, "type"

    const-string v5, "asuLevel"

    const-string v6, "basestationId"

    const-string v7, "systemId"

    if-eqz v0, :cond_19d

    .line 649
    :try_start_4a
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_1f0

    .line 651
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_1f8

    .line 653
    :try_start_62
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 654
    const-string v10, "registered"

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 655
    const-string v10, "ts"

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 657
    nop

    .line 658
    nop

    .line 659
    nop

    .line 660
    instance-of v10, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_a1

    .line 661
    const-string v10, "GSM"

    .line 662
    check-cast v0, Landroid/telephony/CellInfoGsm;

    .line 663
    nop

    .line 664
    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v12

    .line 665
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v13

    .line 666
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v14

    .line 668
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v15

    .line 669
    invoke-virtual {v12}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v12

    .line 670
    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    .line 671
    move v11, v15

    const/4 v15, -0x1

    goto/16 :goto_15b

    :cond_a1
    instance-of v10, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v10, :cond_108

    .line 672
    const-string v10, "CDMA"

    .line 673
    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 674
    nop

    .line 675
    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v12

    .line 676
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v13

    .line 677
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v14

    .line 678
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v15

    .line 679
    nop

    .line 680
    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    .line 681
    nop

    .line 682
    nop

    .line 683
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    .line 682
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    nop

    .line 685
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    .line 684
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 686
    const-string v2, "cdmaEcio"

    .line 687
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v11

    .line 686
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 688
    const-string v2, "evdoDbm"

    .line 689
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v11

    .line 688
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 690
    const-string v2, "evdoEcio"

    .line 691
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v11

    .line 690
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 692
    const-string v2, "evdoSnr"

    .line 693
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v11

    .line 692
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string v2, "location"

    .line 698
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v11

    .line 699
    invoke-virtual {v12}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v12

    .line 697
    invoke-static {v11, v12}, Lcom/tendcloud/tenddata/game/bb;->a(II)Lorg/json/JSONObject;

    move-result-object v11

    .line 695
    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_15b

    :cond_108
    instance-of v2, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_12e

    .line 701
    const-string v10, "WCDMA"

    .line 702
    check-cast v0, Landroid/telephony/CellInfoWcdma;

    .line 703
    nop

    .line 704
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 705
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v13

    .line 706
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v14

    .line 707
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v15

    .line 708
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v11

    .line 709
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v12

    .line 710
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    .line 711
    goto :goto_15b

    :cond_12e
    instance-of v2, v0, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_154

    .line 712
    const-string v10, "LTE"

    .line 713
    check-cast v0, Landroid/telephony/CellInfoLte;

    .line 714
    nop

    .line 715
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 716
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v13

    .line 717
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v14

    .line 718
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v15

    .line 719
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v11

    .line 720
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v12

    .line 721
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    goto :goto_15b

    .line 711
    :cond_154
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 724
    :goto_15b
    const/4 v2, -0x1

    if-eq v13, v2, :cond_161

    .line 725
    invoke-virtual {v9, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    :cond_161
    const/4 v2, -0x1

    if-eq v14, v2, :cond_169

    .line 728
    const-string v2, "networkId"

    invoke-virtual {v9, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 730
    :cond_169
    const/4 v2, -0x1

    if-eq v15, v2, :cond_16f

    .line 731
    invoke-virtual {v9, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 733
    :cond_16f
    const/4 v2, -0x1

    if-eq v11, v2, :cond_177

    .line 734
    const-string v2, "mcc"

    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 736
    :cond_177
    const/4 v2, -0x1

    if-eq v12, v2, :cond_17f

    .line 737
    const-string v2, "mnc"

    invoke-virtual {v9, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 739
    :cond_17f
    if-eqz v0, :cond_192

    .line 740
    nop

    .line 741
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v2

    .line 740
    invoke-virtual {v9, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string v2, "dbm"

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v0

    invoke-virtual {v9, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 744
    :cond_192
    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_198
    .catchall {:try_start_62 .. :try_end_198} :catchall_199

    .line 750
    goto :goto_19a

    .line 746
    :catchall_199
    move-exception v0

    .line 751
    :goto_19a
    const/4 v2, 0x0

    goto/16 :goto_56

    .line 753
    :cond_19d
    const/4 v0, 0x5

    :try_start_19e
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1f0

    sget-boolean v0, Lcom/tendcloud/tenddata/game/bq;->c:Z

    if-eqz v0, :cond_1f0

    .line 754
    sget-object v0, Lcom/tendcloud/tenddata/game/bb;->c:Landroid/telephony/TelephonyManager;

    .line 755
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1f1

    .line 757
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;
    :try_end_1c0
    .catchall {:try_start_19e .. :try_end_1c0} :catchall_1f8

    .line 759
    :try_start_1c0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 760
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 761
    const-string v8, "netId"

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 762
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v8

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 763
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v8

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 767
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1ed
    .catchall {:try_start_1c0 .. :try_end_1ed} :catchall_1ee

    .line 773
    goto :goto_1ef

    .line 769
    :catchall_1ee
    move-exception v0

    .line 774
    :goto_1ef
    goto :goto_1b4

    .line 753
    :cond_1f0
    nop

    .line 777
    :cond_1f1
    const/16 v0, 0x14

    :try_start_1f3
    invoke-static {v3, v0}, Lcom/tendcloud/tenddata/game/bb;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_1f7
    .catchall {:try_start_1f3 .. :try_end_1f7} :catchall_1f8

    return-object v0

    .line 778
    :catchall_1f8
    move-exception v0

    .line 779
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 785
    :cond_1fc
    const/4 v1, 0x0

    return-object v1
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 836
    nop

    .line 838
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 840
    const-string v1, "wifi"

    .line 841
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 842
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 843
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 844
    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_32

    if-eqz v1, :cond_31

    .line 846
    :try_start_2a
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_30

    .line 851
    move-object v0, p0

    goto :goto_31

    .line 847
    :catchall_30
    move-exception p0

    .line 859
    :cond_31
    :goto_31
    goto :goto_33

    .line 855
    :catchall_32
    move-exception p0

    .line 860
    :goto_33
    return-object v0
.end method

.method public static x(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    .line 865
    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 867
    const-string v0, "wifi"

    .line 868
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 870
    nop

    .line 871
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 872
    if-eqz p0, :cond_86

    .line 873
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 874
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_87

    .line 876
    :try_start_2c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 877
    const-string v3, "networkId"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 878
    const-string v3, "priority"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 879
    const-string v3, "name"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    const-string v3, "id"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    const-string v3, "allowedKeyManagement"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 882
    invoke-static {v4}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/util/BitSet;)Lorg/json/JSONArray;

    move-result-object v4

    .line 881
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    const-string v3, "allowedAuthAlgorithms"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 884
    invoke-static {v4}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/util/BitSet;)Lorg/json/JSONArray;

    move-result-object v4

    .line 883
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    const-string v3, "allowedGroupCiphers"

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 886
    invoke-static {v4}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/util/BitSet;)Lorg/json/JSONArray;

    move-result-object v4

    .line 885
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v3, "allowedPairwiseCiphers"

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 888
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/util/BitSet;)Lorg/json/JSONArray;

    move-result-object v1

    .line 887
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7c
    .catchall {:try_start_2c .. :try_end_7c} :catchall_7d

    .line 894
    goto :goto_7e

    .line 890
    :catchall_7d
    move-exception v1

    .line 895
    :goto_7e
    goto :goto_20

    .line 896
    :cond_7f
    const/16 p0, 0x1e

    :try_start_81
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/bb;->b(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_87

    return-object p0

    .line 903
    :cond_86
    goto :goto_88

    .line 899
    :catchall_87
    move-exception p0

    .line 904
    :goto_88
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 8

    .line 941
    const-string v0, "ip"

    :try_start_2
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 943
    const-string v1, "wifi"

    .line 944
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 945
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 946
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 947
    nop

    .line 948
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 949
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 950
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 951
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_bb

    .line 953
    :try_start_33
    const-string v5, "name"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 954
    const-string v5, "id"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    const-string v2, "level"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 957
    const-string v2, "hidden"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 958
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 959
    const-string v2, "speed"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 960
    const-string v2, "networkId"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 961
    const-string v2, "mac"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 964
    if-eqz p0, :cond_b4

    .line 965
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 966
    const-string v2, "dns1"

    iget v5, p0, Landroid/net/DhcpInfo;->dns1:I

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 967
    const-string v2, "dns2"

    iget v5, p0, Landroid/net/DhcpInfo;->dns2:I

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 968
    const-string v2, "gw"

    iget v5, p0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 969
    iget v2, p0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 970
    const-string v0, "mask"

    iget v2, p0, Landroid/net/DhcpInfo;->netmask:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 971
    const-string v0, "server"

    iget v2, p0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 972
    const-string v0, "leaseDuration"

    iget p0, p0, Landroid/net/DhcpInfo;->leaseDuration:I

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 975
    const-string p0, "dhcp"

    invoke-virtual {v4, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b4
    .catchall {:try_start_33 .. :try_end_b4} :catchall_b5

    .line 981
    :cond_b4
    goto :goto_b6

    .line 977
    :catchall_b5
    move-exception p0

    .line 982
    :goto_b6
    :try_start_b6
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_bb

    .line 983
    return-object v3

    .line 991
    :cond_ba
    goto :goto_bc

    .line 987
    :catchall_bb
    move-exception p0

    .line 992
    :goto_bc
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized z(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 13

    const-class v0, Lcom/tendcloud/tenddata/game/bb;

    monitor-enter v0

    .line 1023
    :try_start_3
    sget-boolean v1, Lcom/tendcloud/tenddata/game/bq;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d3

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1024
    monitor-exit v0

    return-object v2

    .line 1027
    :cond_a
    :try_start_a
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1029
    nop

    .line 1030
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1031
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_31

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_cf

    .line 1032
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1033
    :cond_31
    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    sget-boolean v3, Lcom/tendcloud/tenddata/game/bb;->j:Z
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_d0

    if-nez v3, :cond_4e

    .line 1036
    :try_start_3d
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1038
    sget-object v4, Lcom/tendcloud/tenddata/game/bb;->k:Lcom/tendcloud/tenddata/game/bb$b;

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4a

    .line 1044
    goto :goto_4b

    .line 1040
    :catchall_4a
    move-exception p0

    .line 1045
    :goto_4b
    const/4 p0, 0x1

    :try_start_4c
    sput-boolean p0, Lcom/tendcloud/tenddata/game/bb;->j:Z

    .line 1047
    :cond_4e
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1048
    sget-object p0, Lcom/tendcloud/tenddata/game/bb;->k:Lcom/tendcloud/tenddata/game/bb$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bb$b;->await()V

    .line 1049
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    .line 1050
    sget-object v1, Lcom/tendcloud/tenddata/game/bb;->k:Lcom/tendcloud/tenddata/game/bb$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/bb$b;->reset()V

    .line 1051
    if-eqz p0, :cond_cf

    .line 1052
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1054
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v5, -0x55

    if-ge v4, v5, :cond_7d

    .line 1055
    goto :goto_6a

    .line 1057
    :cond_7d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_82
    .catchall {:try_start_4c .. :try_end_82} :catchall_d0

    .line 1059
    :try_start_82
    const-string v5, "id"

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const-string v5, "name"

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    const-string v5, "level"

    iget v6, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1062
    const-string v5, "freq"

    iget v6, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1064
    const/16 v5, 0x11

    invoke-static {v5}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 1065
    const-string v5, "ts"

    iget-wide v6, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1067
    const-string v5, "scanTs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-wide v8, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1069
    :cond_c1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c4
    .catchall {:try_start_82 .. :try_end_c4} :catchall_c5

    .line 1074
    goto :goto_c6

    .line 1070
    :catchall_c5
    move-exception v3

    .line 1075
    :goto_c6
    goto :goto_6a

    .line 1076
    :cond_c7
    const/16 p0, 0x14

    :try_start_c9
    invoke-static {v1, p0}, Lcom/tendcloud/tenddata/game/bb;->a(Ljava/util/ArrayList;I)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_d0

    monitor-exit v0

    return-object p0

    .line 1084
    :cond_cf
    goto :goto_d1

    .line 1080
    :catchall_d0
    move-exception p0

    .line 1085
    :goto_d1
    monitor-exit v0

    return-object v2

    .line 1022
    :catchall_d3
    move-exception p0

    monitor-exit v0

    goto :goto_d7

    :goto_d6
    throw p0

    :goto_d7
    goto :goto_d6
.end method
