.class public final enum Lcom/sigmob/windad/WindAdError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/windad/WindAdError;",
        ">;"
    }
.end annotation


# static fields
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

.field public static final enum ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

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
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_APP_IS_CLOSED"

    const v2, 0x7a2c4

    const-string v3, "\u8bf7\u6c42\u7684app\u5df2\u7ecf\u5173\u95ed\u5e7f\u544a\u670d\u52a1"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_NEED_DEVICE_INFO"

    const v2, 0x7a2c6

    const-string v3, "\u8bf7\u6c42\u53c2\u6570\u7f3a\u5c11\u8bbe\u5907\u4fe1\u606f"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_DEVICE_INFO:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_NEED_DEVICE_ID_INFO"

    const v2, 0x7a2c8

    const-string v3, "\u7f3a\u5c11\u8bbe\u5907id\u76f8\u5173\u4fe1\u606f"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_DEVICE_ID_INFO:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_NEED_AD_SLOTS_INFO"

    const v2, 0x7a2cc

    const-string v3, " \u7f3a\u5c11\u5e7f\u544a\u4f4d\u4fe1\u606f"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_AD_SLOTS_INFO:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_INVALID_ADSLOT_ID"

    const v2, 0x7a2ce

    const-string v3, " \u9519\u8bef\u7684\u5e7f\u544a\u4f4d\u4fe1\u606f"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "REQUEST_AD_SLOT_NOT_EXISTS"

    const/4 v2, 0x5

    const v3, 0x7a2d0

    const-string v4, "\u5e7f\u544a\u4f4d\u4e0d\u5b58\u5728\uff0c\u6216\u8005appid\u4e0e\u5e7f\u544a\u4f4d\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_NOT_EXISTS:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "REQUEST_AD_SLOT_IS_CLOSED"

    const/4 v2, 0x6

    const v3, 0x7a2d1

    const-string v4, "\u5e7f\u544a\u4f4d\u4e0d\u5b58\u5728\u6216\u662f\u5df2\u5173\u95ed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "REQUEST_OS_TYPE_NOT_MATCH_APP_TYPE"

    const/4 v2, 0x7

    const v3, 0x7a2d3

    const-string v4, "\u8bbe\u5907\u7684\u64cd\u4f5c\u7cfb\u7edf\u7c7b\u578b\uff0c\u4e0e\u8bf7\u6c42\u7684app\u7684\u7cfb\u7edf\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->REQUEST_OS_TYPE_NOT_MATCH_APP_TYPE:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE"

    const/16 v2, 0x8

    const v3, 0x7a2d4

    const-string v4, "\u5e7f\u544a\u5355\u5143id\u4e0e\u8bf7\u6c42\u7684\u5e7f\u544a\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_NO_SUCH_APP"

    const/16 v2, 0x9

    const v3, 0x7a2f9

    const-string v4, "\u8bf7\u6c42\u7684app\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NO_SUCH_APP:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY"

    const/16 v2, 0xa

    const v3, 0x7a2ff

    const-string v4, "\u5e7f\u544a\u4f4did\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_NO_DEVICE_ID"

    const/16 v2, 0xb

    const v3, 0x7a302

    const-string v4, "\u65e0\u6cd5\u83b7\u53d6\u8bbe\u5907ID"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NO_DEVICE_ID:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_APP_NOT_SET_STRATEGY"

    const/16 v2, 0xc

    const v3, 0x7a3dc

    const-string v4, "app\u672a\u8bbe\u7f6e\u805a\u5408\u7b56\u7565"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_REQUEST_APP_NOT_SET_CHANNEL"

    const/16 v2, 0xd

    const v3, 0x7a3dd

    const-string v4, "app\u672a\u5f00\u901a\u4efb\u4f55\u5e7f\u544a\u6e20\u9053"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_CHANNEL:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "RTB_SIG_DSP_NO_ADS_ERROR"

    const/16 v2, 0xe

    const v3, 0x30d40

    const-string v4, "\u5e7f\u544a\u65e0\u586b\u5145"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_NETWORK"

    const/16 v2, 0xf

    const v3, 0x92824

    const-string v4, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_REQUEST"

    const/16 v2, 0x10

    const v3, 0x92825

    const-string v4, "\u5e7f\u544a\u8bf7\u6c42\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_NOT_FOUD_ADAPTER"

    const/16 v2, 0x11

    const v3, 0x92826

    const-string v4, "\u672a\u627e\u5230\u8be5\u6e20\u9053\u7684\u9002\u914d\u5668"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_STRATEGY_EMPTY"

    const/16 v2, 0x12

    const v3, 0x92827

    const-string v4, "\u914d\u7f6e\u7684\u7b56\u7565\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_FILE_DOWNLOAD"

    const/16 v2, 0x13

    const v3, 0x92828

    const-string v4, "\u6587\u4ef6\u4e0b\u8f7d\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_AD_TIME_OUT"

    const/16 v2, 0x14

    const v3, 0x92829

    const-string v4, "\u4e0b\u8f7d\u5e7f\u544a\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_GDPR_DENIED"

    const/16 v2, 0x15

    const v3, 0x92b49

    const-string v4, "User GDPR Consent Status is denied"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_AD_DB_INSERT"

    const/16 v2, 0x16

    const v3, 0x92b48

    const-string v4, "\u63d2\u5165\u6570\u636e\u5e93\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_NOT_INIT"

    const/16 v2, 0x17

    const v3, 0x92b44

    const-string v4, "SDK\u672a\u521d\u59cb\u5316"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_PLACEMENTID_EMPTY"

    const/16 v2, 0x18

    const v3, 0x92b45

    const-string v4, "\u5e7f\u544a\u4f4d\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_STRATEGY"

    const/16 v2, 0x19

    const v3, 0x92b46

    const-string v4, "\u7b56\u7565\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_INSTALL_FAIL"

    const/16 v2, 0x1a

    const v3, 0x92b47

    const-string v4, "\u5b89\u88c5\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_OTHER"

    const/16 v2, 0x1b

    const v3, 0x92b48

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_OTHER:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_AD_PLAY"

    const/16 v2, 0x1c

    const v3, 0x94ed2

    const-string v4, "\u6fc0\u52b1\u89c6\u9891\u64ad\u653e\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_NOT_READY"

    const/16 v2, 0x1d

    const v3, 0x94ed3

    const-string v4, "\u6fc0\u52b1\u89c6\u9891\u672a\u51c6\u5907\u597d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_INFORMATION_LOSE"

    const/16 v2, 0x1e

    const v3, 0x94ed4

    const-string v4, "server\u4e0b\u53d1\u7684\u5e7f\u544a\u4fe1\u606f\u7f3a\u5931\u5173\u952e\u4fe1\u606f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_FILE_MD5"

    const/16 v2, 0x1f

    const v3, 0x94ed5

    const-string v4, "\u4e0b\u8f7d\u7684\u6587\u4ef6\u6821\u9a8cmd5\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_AD_PLAY_CHECK_FAIL"

    const/16 v2, 0x20

    const v3, 0x94ed6

    const-string v4, "\u6fc0\u52b1\u89c6\u9891\u64ad\u63a5\u53e3\u68c0\u67e5\u51fa\u9519\uff08\u5e7f\u544a\u8fc7\u671f\u6216\u8005\u672aready)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_AD_PLAY_HAS_PLAYING"

    const/16 v2, 0x21

    const v3, 0x94ed7

    const-string v4, "\u6fc0\u52b1\u89c6\u9891\u64ad\u63a5\u53e3\u68c0\u67e5\u51fa\u9519\uff08\u6fc0\u52b1\u89c6\u9891\u5f53\u524d\u6709\u5e7f\u544a\u6b63\u5728\u64ad\u653e\u4e2d)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_SPLASH_TIMEOUT"

    const/16 v2, 0x22

    const v3, 0x975e1

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION"

    const/16 v2, 0x23

    const v3, 0x975e2

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u4e0d\u652f\u6301\u5f53\u524d\u65b9\u5411"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE"

    const/16 v2, 0x24

    const v3, 0x975e3

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u4e0d\u652f\u6301\u7684\u8d44\u6e90\u7c7b\u578b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const-string v1, "ERROR_SPLASH_ADBLOCK"

    const/16 v2, 0x25

    const v3, 0x97964

    const-string v4, "AD BLOCK"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

    const/16 v0, 0x26

    new-array v0, v0, [Lcom/sigmob/windad/WindAdError;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_DEVICE_INFO:Lcom/sigmob/windad/WindAdError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_DEVICE_ID_INFO:Lcom/sigmob/windad/WindAdError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NEED_AD_SLOTS_INFO:Lcom/sigmob/windad/WindAdError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_NOT_EXISTS:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_IS_CLOSED:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sigmob/windad/WindAdError;->REQUEST_OS_TYPE_NOT_MATCH_APP_TYPE:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sigmob/windad/WindAdError;->REQUEST_AD_SLOT_NOT_MATCH__AD_TYPE:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NO_SUCH_APP:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_NO_DEVICE_ID:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_STRATEGY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_REQUEST_APP_NOT_SET_CHANNEL:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_OTHER:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/windad/WindAdError;->b:[Lcom/sigmob/windad/WindAdError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdError;
    .registers 2

    const-class v0, Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/WindAdError;

    return-object v0
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
    .registers 5

    const-string v0, "[ %d ] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sigmob/windad/WindAdError;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
