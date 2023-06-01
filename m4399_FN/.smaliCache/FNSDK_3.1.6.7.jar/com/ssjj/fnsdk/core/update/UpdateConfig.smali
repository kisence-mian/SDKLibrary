.class public Lcom/ssjj/fnsdk/core/update/UpdateConfig;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_DOWNLOADING:I = 0x4

.field public static final CODE_DOWNLOAD_CANCEL:I = 0x5

.field public static final CODE_DOWNLOAD_FAILURE:I = 0x7

.field public static final CODE_DOWNLOAD_SUCCESS:I = 0x6

.field public static final PARAM_KEY_CURSIZE:Ljava/lang/String; = "cursize"

.field public static final PARAM_KEY_DWONLOAD_FILE:Ljava/lang/String; = "tempfile"

.field public static final PARAM_KEY_DWONLOAD_URL:Ljava/lang/String; = "downurl"

.field public static final PARAM_KEY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final PARAM_KEY_TOTALSIZE:Ljava/lang/String; = "totalsize"

.field public static final PARAM_KEY_UPDATE_TYPE:Ljava/lang/String; = "updatetype"

.field public static final TYPE_CHECK_MD5_ERR:I = 0x1

.field public static final TYPE_NET_ERR:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_RENAME_ERR:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
