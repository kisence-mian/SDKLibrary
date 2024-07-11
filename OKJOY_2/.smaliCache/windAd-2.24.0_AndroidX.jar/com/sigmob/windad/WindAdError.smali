.class public final enum Lcom/sigmob/windad/WindAdError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/windad/WindAdError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_AD_LOAD_FAIL_LOADING:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_AD_LOAD_FAIL_PLAYING:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_OTHER:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_APP_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_APP_NOT_SET_CHANNEL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_NEED_AD_SLOTS_INFO:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_NEED_DEVICE_ID_INFO:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_NEED_DEVICE_INFO:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_NO_DEVICE_ID:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_NO_SUCH_APP:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_REQUEST_SIGMOB_NOT_SUPPORT_REGION:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_ADAPTER_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INIT_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_STRATEGY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

.field public static final enum REQUEST_AD_SLOT_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

.field public static final enum REQUEST_AD_SLOT_NOT_EXISTS:Lcom/sigmob/windad/WindAdError;

.field public static final enum REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE:Lcom/sigmob/windad/WindAdError;

.field public static final enum REQUEST_OS_TYPE_NOT_MATCH_APP_TYPE:Lcom/sigmob/windad/WindAdError;

.field public static final enum RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

.field private static final synthetic b:[Lcom/sigmob/windad/WindAdError;


# instance fields
.field private final a:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 48

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_AD_LOAD_FAIL_PLAYING"

    const/4 v2, 0x0

    const v3, 0x94edb

    const-string v4, "\u5e7f\u544a\u6b63\u5728\u64ad\u653e\u4e2d\uff0c\u5982\u679c\u9700\u8981\u81ea\u52a8\u52a0\u8f7d\uff0c\u8bf7\u5728\u5e7f\u544a\u5173\u95ed\u7684\u56de\u8c03\u4e2d\u5904\u7406"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_PLAYING:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const-string v3, "ERROR_AD_LOAD_FAIL_LOADING"

    const/4 v4, 0x1

    const v5, 0x94edc

    const-string v6, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/sigmob/windad/WindAdError;

    new-instance v3, Lcom/sigmob/windad/WindAdError;

    const-string v5, "ERROR_AD_LOAD_FAIL_INTERVAL"

    const/4 v6, 0x2

    const v7, 0x94edd

    const-string v8, "\u5e7f\u544a\u52a0\u8f7d\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u5728\u8bd5"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/sigmob/windad/WindAdError;

    new-instance v5, Lcom/sigmob/windad/WindAdError;

    const-string v7, "ERROR_REQUEST_SIGMOB_NOT_SUPPORT_REGION"

    const/4 v8, 0x3

    const v9, 0x7a2b2

    const-string v10, "\u8be5\u5730\u533a\u65e0sigmob\u5e7f\u544a\u6e20\u9053\u670d\u52a1"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_SIGMOB_NOT_SUPPORT_REGION:Lcom/sigmob/windad/WindAdError;

    new-instance v7, Lcom/sigmob/windad/WindAdError;

    const-string v9, "ERROR_REQUEST_APP_IS_CLOSED"

    const/4 v10, 0x4

    const v11, 0x7a2c4

    const-string v12, "\u8bf7\u6c42\u7684app\u5df2\u7ecf\u5173\u95ed\u5e7f\u544a\u670d\u52a1"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

    new-instance v9, Lcom/sigmob/windad/WindAdError;

    const-string v11, "ERROR_REQUEST_NEED_DEVICE_INFO"

    const/4 v12, 0x5

    const v13, 0x7a2c6

    const-string v14, "\u8bf7\u6c42\u53c2\u6570\u7f3a\u5c11\u8bbe\u5907\u4fe1\u606f"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_DEVICE_INFO:Lcom/sigmob/windad/WindAdError;

    new-instance v11, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_REQUEST_NEED_DEVICE_ID_INFO"

    const/4 v14, 0x6

    const v15, 0x7a2c8

    const-string v12, "\u7f3a\u5c11\u8bbe\u5907id\u76f8\u5173\u4fe1\u606f"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_DEVICE_ID_INFO:Lcom/sigmob/windad/WindAdError;

    new-instance v12, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_REQUEST_NEED_AD_SLOTS_INFO"

    const/4 v15, 0x7

    const v14, 0x7a2cc

    const-string v10, " \u7f3a\u5c11\u5e7f\u544a\u4f4d\u4fe1\u606f"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_AD_SLOTS_INFO:Lcom/sigmob/windad/WindAdError;

    new-instance v10, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_INVALID_ADSLOT_ID"

    const/16 v14, 0x8

    const v15, 0x7a2ce

    const-string v8, " \u9519\u8bef\u7684\u5e7f\u544a\u4f4d\u4fe1\u606f"

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    new-instance v8, Lcom/sigmob/windad/WindAdError;

    const-string v13, "REQUEST_AD_SLOT_NOT_EXISTS"

    const/16 v15, 0x9

    const v14, 0x7a2d0

    const-string v6, "\u5e7f\u544a\u4f4d\u4e0d\u5b58\u5728\uff0c\u6216\u8005appid\u4e0e\u5e7f\u544a\u4f4d\u4e0d\u5339\u914d"

    invoke-direct {v8, v13, v15, v14, v6}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_NOT_EXISTS:Lcom/sigmob/windad/WindAdError;

    new-instance v6, Lcom/sigmob/windad/WindAdError;

    const-string v13, "REQUEST_AD_SLOT_IS_CLOSED"

    const/16 v14, 0xa

    const v15, 0x7a2d1

    const-string v4, "\u5e7f\u544a\u4f4d\u4e0d\u5b58\u5728\u6216\u662f\u5df2\u5173\u95ed"

    invoke-direct {v6, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "REQUEST_OS_TYPE_NOT_MATCH_APP_TYPE"

    const/16 v15, 0xb

    const v14, 0x7a2d3

    const-string v2, "\u8bbe\u5907\u7684\u64cd\u4f5c\u7cfb\u7edf\u7c7b\u578b\uff0c\u4e0e\u8bf7\u6c42\u7684app\u7684\u7cfb\u7edf\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->REQUEST_OS_TYPE_NOT_MATCH_APP_TYPE:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE"

    const/16 v14, 0xc

    const v15, 0x7a2d4

    move-object/from16 v16, v4

    const-string v4, "\u5e7f\u544a\u5355\u5143id\u4e0e\u8bf7\u6c42\u7684\u5e7f\u544a\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_REQUEST_NO_SUCH_APP"

    const/16 v15, 0xd

    const v14, 0x7a2f9

    move-object/from16 v17, v2

    const-string v2, "\u8bf7\u6c42\u7684app\u4e0d\u5b58\u5728"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NO_SUCH_APP:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY"

    const/16 v14, 0xe

    const v15, 0x7a2ff

    move-object/from16 v18, v4

    const-string v4, "\u5e7f\u544a\u4f4did\u4e3a\u7a7a"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_REQUEST_NO_DEVICE_ID"

    const/16 v15, 0xf

    const v14, 0x7a302

    move-object/from16 v19, v2

    const-string v2, "\u65e0\u6cd5\u83b7\u53d6\u8bbe\u5907ID"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NO_DEVICE_ID:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_REQUEST_APP_NOT_SET_STRATEGY"

    const/16 v14, 0x10

    const v15, 0x7a3dc

    move-object/from16 v20, v4

    const-string v4, "app\u672a\u8bbe\u7f6e\u805a\u5408\u7b56\u7565"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_REQUEST_APP_NOT_SET_CHANNEL"

    const/16 v15, 0x11

    const v14, 0x7a3dd

    move-object/from16 v21, v2

    const-string v2, "app\u672a\u5f00\u901a\u4efb\u4f55\u5e7f\u544a\u6e20\u9053"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_CHANNEL:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "RTB_SIG_DSP_NO_ADS_ERROR"

    const/16 v14, 0x12

    const v15, 0x30d40

    move-object/from16 v22, v4

    const-string v4, "\u5e7f\u544a\u65e0\u586b\u5145"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_NETWORK"

    const/16 v15, 0x13

    const v14, 0x92824

    move-object/from16 v23, v2

    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_REQUEST"

    const/16 v14, 0x14

    const v15, 0x92825

    move-object/from16 v24, v4

    const-string v4, "\u5e7f\u544a\u8bf7\u6c42\u51fa\u9519"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_NOT_FOUD_ADAPTER"

    const/16 v15, 0x15

    const v14, 0x92826

    move-object/from16 v25, v2

    const-string v2, "\u672a\u627e\u5230\u8be5\u6e20\u9053\u7684\u9002\u914d\u5668"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_STRATEGY_EMPTY"

    const/16 v14, 0x16

    const v15, 0x92827

    move-object/from16 v26, v4

    const-string v4, "\u914d\u7f6e\u7684\u7b56\u7565\u4e3a\u7a7a"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_FILE_DOWNLOAD"

    const/16 v14, 0x17

    const v15, 0x92828

    move-object/from16 v27, v2

    const-string v2, "\u6587\u4ef6\u4e0b\u8f7d\u9519\u8bef"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_AD_TIME_OUT"

    const/16 v14, 0x18

    const v15, 0x92829

    move-object/from16 v28, v4

    const-string v4, "\u4e0b\u8f7d\u5e7f\u544a\u8d85\u65f6"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_AD_ADAPTER_ERROR"

    const/16 v14, 0x19

    const v15, 0x92830

    move-object/from16 v29, v2

    const-string v2, "\u6e20\u9053\u9002\u914d\u5668\u7248\u672c\u4e0d\u517c\u5bb9"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_ADAPTER_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_NOT_INIT"

    const/16 v14, 0x1a

    const v15, 0x92b44

    move-object/from16 v30, v4

    const-string v4, "SDK\u672a\u521d\u59cb\u5316"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_PLACEMENTID_EMPTY"

    const/16 v14, 0x1b

    const v15, 0x92b45

    move-object/from16 v31, v2

    const-string v2, "\u5e7f\u544a\u4f4d\u4e3a\u7a7a"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_STRATEGY"

    const/16 v14, 0x1c

    const v15, 0x92b46

    move-object/from16 v32, v4

    const-string v4, "\u7b56\u7565\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_INSTALL_FAIL"

    const/16 v14, 0x1d

    const v15, 0x92b47

    move-object/from16 v33, v2

    const-string v2, "\u5b89\u88c5\u5931\u8d25"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_AD_DB_INSERT"

    const/16 v14, 0x1e

    const v15, 0x92b48

    move-object/from16 v34, v4

    const-string v4, "\u63d2\u5165\u6570\u636e\u5e93\u5931\u8d25"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_GDPR_DENIED"

    const/16 v14, 0x1f

    const v15, 0x92b49

    move-object/from16 v35, v2

    const-string v2, "User GDPR Consent Status is denied"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_INIT_FAIL"

    const/16 v14, 0x20

    const v15, 0x92b4a

    move-object/from16 v36, v4

    const-string v4, "SDK \u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INIT_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_OTHER"

    const/16 v14, 0x21

    const v15, 0x92ba7

    move-object/from16 v37, v2

    const-string v2, ""

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_OTHER:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_AD_PLAY"

    const/16 v14, 0x22

    const v15, 0x94ed2

    move-object/from16 v38, v4

    const-string v4, "\u6fc0\u52b1\u89c6\u9891\u64ad\u653e\u51fa\u9519"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_NOT_READY"

    const/16 v14, 0x23

    const v15, 0x94ed3

    move-object/from16 v39, v2

    const-string v2, "\u6fc0\u52b1\u89c6\u9891\u672a\u51c6\u5907\u597d"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_INFORMATION_LOSE"

    const/16 v14, 0x24

    const v15, 0x94ed4

    move-object/from16 v40, v4

    const-string v4, "server\u4e0b\u53d1\u7684\u5e7f\u544a\u4fe1\u606f\u7f3a\u5931\u5173\u952e\u4fe1\u606f"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_FILE_MD5"

    const/16 v14, 0x25

    const v15, 0x94ed5

    move-object/from16 v41, v2

    const-string v2, "\u4e0b\u8f7d\u7684\u6587\u4ef6\u6821\u9a8cmd5\u51fa\u9519"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_AD_PLAY_CHECK_FAIL"

    const/16 v14, 0x26

    const v15, 0x94ed6

    move-object/from16 v42, v4

    const-string v4, "\u6fc0\u52b1\u89c6\u9891\u64ad\u63a5\u53e3\u68c0\u67e5\u51fa\u9519\uff08\u5e7f\u544a\u8fc7\u671f\u6216\u8005\u672aready)"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_AD_PLAY_HAS_PLAYING"

    const/16 v14, 0x27

    const v15, 0x94ed7

    move-object/from16 v43, v2

    const-string v2, "\u6fc0\u52b1\u89c6\u9891\u64ad\u63a5\u53e3\u68c0\u67e5\u51fa\u9519\uff08\u6fc0\u52b1\u89c6\u9891\u5f53\u524d\u6709\u5e7f\u544a\u6b63\u5728\u64ad\u653e\u4e2d)"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_SPLASH_TIMEOUT"

    const/16 v14, 0x28

    const v15, 0x975e1

    move-object/from16 v44, v4

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION"

    const/16 v14, 0x29

    const v15, 0x975e2

    move-object/from16 v45, v2

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a\u4e0d\u652f\u6301\u5f53\u524d\u65b9\u5411"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE"

    const/16 v14, 0x2a

    const v15, 0x975e3

    move-object/from16 v46, v4

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u4e0d\u652f\u6301\u7684\u8d44\u6e90\u7c7b\u578b"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

    new-instance v4, Lcom/sigmob/windad/WindAdError;

    const-string v13, "ERROR_SPLASH_ADBLOCK"

    const/16 v14, 0x2b

    const v15, 0x97964

    move-object/from16 v47, v2

    const-string v2, "AD BLOCK"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

    const/16 v2, 0x2c

    new-array v2, v2, [Lcom/sigmob/windad/WindAdError;

    const/4 v13, 0x0

    aput-object v0, v2, v13

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

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v24, v2, v0

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v26, v2, v0

    const/16 v0, 0x16

    aput-object v27, v2, v0

    const/16 v0, 0x17

    aput-object v28, v2, v0

    const/16 v0, 0x18

    aput-object v29, v2, v0

    const/16 v0, 0x19

    aput-object v30, v2, v0

    const/16 v0, 0x1a

    aput-object v31, v2, v0

    const/16 v0, 0x1b

    aput-object v32, v2, v0

    const/16 v0, 0x1c

    aput-object v33, v2, v0

    const/16 v0, 0x1d

    aput-object v34, v2, v0

    const/16 v0, 0x1e

    aput-object v35, v2, v0

    const/16 v0, 0x1f

    aput-object v36, v2, v0

    const/16 v0, 0x20

    aput-object v37, v2, v0

    const/16 v0, 0x21

    aput-object v38, v2, v0

    const/16 v0, 0x22

    aput-object v39, v2, v0

    const/16 v0, 0x23

    aput-object v40, v2, v0

    const/16 v0, 0x24

    aput-object v41, v2, v0

    const/16 v0, 0x25

    aput-object v42, v2, v0

    const/16 v0, 0x26

    aput-object v43, v2, v0

    const/16 v0, 0x27

    aput-object v44, v2, v0

    const/16 v0, 0x28

    aput-object v45, v2, v0

    const/16 v0, 0x29

    aput-object v46, v2, v0

    const/16 v0, 0x2a

    aput-object v47, v2, v0

    const/16 v0, 0x2b

    aput-object v4, v2, v0

    sput-object v2, Lcom/sigmob/windad/WindAdError;->b:[Lcom/sigmob/windad/WindAdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/windad/WindAdError;->a:I

    iput-object p4, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-void
.end method

.method public static getWindAdError(I)Lcom/sigmob/windad/WindAdError;
    .registers 6

    invoke-static {}, Lcom/sigmob/windad/WindAdError;->values()[Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdError;
    .registers 2

    const-class v0, Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/windad/WindAdError;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/windad/WindAdError;
    .registers 1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->b:[Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, [Lcom/sigmob/windad/WindAdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/WindAdError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/WindAdError;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sigmob/windad/WindAdError;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{ \"error_code\":%d, \"message\": %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
