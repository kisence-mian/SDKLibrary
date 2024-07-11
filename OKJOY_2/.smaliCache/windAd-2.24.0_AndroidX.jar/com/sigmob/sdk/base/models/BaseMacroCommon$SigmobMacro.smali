.class public final enum Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/BaseMacroCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SigmobMacro"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum _AAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _ANDROIDIDMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _ANDROIDID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _BUNDLEID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _COUNTRY_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _GAIDMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _GAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _IMEI1MD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _IMEI1_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _IMEI2MD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _IMEI2_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _IMEIMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _IMEI_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _LANGUAGE_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _MACMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _MAC_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _MC_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _MSAUDID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _OAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _OSVERSION_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _TIMEMILLIS_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _TIMESTAMP_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field public static final enum _VAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

.field private static final synthetic a:[Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v1, "_ANDROIDID_"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_ANDROIDID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v3, "_ANDROIDIDMD5_"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_ANDROIDIDMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v3, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v5, "_IMEI_"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v5, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v7, "_IMEIMD5_"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEIMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v7, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v9, "_IMEI1_"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI1_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v9, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v11, "_IMEI1MD5_"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI1MD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v11, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v13, "_IMEI2_"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI2_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v13, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v15, "_IMEI2MD5_"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_IMEI2MD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v15, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v14, "_MAC_"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MAC_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v14, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v12, "_MACMD5_"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MACMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v12, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v10, "_GAID_"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_GAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v10, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v8, "_GAIDMD5_"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_GAIDMD5_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v8, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v6, "_MC_"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MC_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v4, "_COUNTRY_"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_COUNTRY_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v4, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v2, "_TIMESTAMP_"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_TIMESTAMP_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v6, "_OSVERSION_"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_OSVERSION_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v4, "_BUNDLEID_"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_BUNDLEID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v4, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v2, "_LANGUAGE_"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_LANGUAGE_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v6, "_TIMEMILLIS_"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_TIMEMILLIS_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v4, "_OAID_"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_OAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v4, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v2, "_VAID_"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_VAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v6, "_AAID_"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_AAID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    new-instance v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const-string v4, "_MSAUDID_"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->_MSAUDID_:Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v6, v2, v0

    sput-object v2, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->a:[Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "unFind"

    :try_start_2
    sget-object v1, Lcom/sigmob/sdk/base/models/BaseMacroCommon$1;->a:[I

    invoke-static {p0}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_f2

    goto/16 :goto_ee

    :pswitch_15
    invoke-static {}, Lcom/sigmob/sdk/common/a;->P()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->O()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_41
    invoke-static {}, Lcom/sigmob/sdk/common/a;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_46
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_53
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5c
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_69
    invoke-static {}, Lcom/sigmob/sdk/common/a;->H()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_72
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7f
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_88
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_95
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9e
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_ab
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b4
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c1
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_ca
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d7
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e0
    invoke-static {}, Lcom/sigmob/sdk/common/a;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e5
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->G()Ljava/lang/String;

    move-result-object p0
    :try_end_ed
    .catchall {:try_start_2 .. :try_end_ed} :catchall_ef

    return-object p0

    :goto_ee
    return-object v0

    :catchall_ef
    move-exception p0

    return-object v0

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_e0
        :pswitch_d7
        :pswitch_ca
        :pswitch_c1
        :pswitch_b4
        :pswitch_ab
        :pswitch_9e
        :pswitch_95
        :pswitch_88
        :pswitch_7f
        :pswitch_72
        :pswitch_69
        :pswitch_5c
        :pswitch_53
        :pswitch_46
        :pswitch_41
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->a:[Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/models/BaseMacroCommon$SigmobMacro;

    return-object v0
.end method
