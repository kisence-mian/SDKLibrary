.class public abstract Lcom/kwai/sodler/lib/ext/PluginError;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/sodler/lib/ext/PluginError$NotWifiDownloadError;,
        Lcom/kwai/sodler/lib/ext/PluginError$LoadError;,
        Lcom/kwai/sodler/lib/ext/PluginError$InstallError;,
        Lcom/kwai/sodler/lib/ext/PluginError$UpdateError;,
        Lcom/kwai/sodler/lib/ext/PluginError$CancelError;,
        Lcom/kwai/sodler/lib/ext/PluginError$RetryError;
    }
.end annotation


# static fields
.field public static final ERROR_INS_CAPACITY:I = 0xbbd

.field public static final ERROR_INS_INSTALL:I = 0xbbc

.field public static final ERROR_INS_INSTALL_PATH:I = 0xbbe

.field public static final ERROR_INS_NOT_FOUND:I = 0xbb9

.field public static final ERROR_INS_PACKAGE_INFO:I = 0xbba

.field public static final ERROR_INS_SIGNATURE:I = 0xbbb

.field public static final ERROR_LOA_ASSET_MANAGER:I = 0xfa6

.field public static final ERROR_LOA_CLASS:I = 0xfa7

.field public static final ERROR_LOA_CLASSLOADER:I = 0xfa5

.field public static final ERROR_LOA_CREATE_PLUGIN:I = 0xfab

.field public static final ERROR_LOA_NOT_FOUND:I = 0xfa1

.field public static final ERROR_LOA_NOT_LOADED:I = 0xfaa

.field public static final ERROR_LOA_OPT_DIR:I = 0xfa2

.field public static final ERROR_LOA_SO_DIR:I = 0xfa3

.field public static final ERROR_LOA_SO_INSTALL:I = 0xfa4

.field public static final ERROR_LOA_SO_MD5_CHECK:I = 0xfa8

.field private static final ERROR_OVER_RETRY:I = 0x3e9

.field public static final ERROR_UPD_CANCELED:I = 0x7d1

.field public static final ERROR_UPD_CAPACITY:I = 0x7d5

.field public static final ERROR_UPD_DOWNLOAD:I = 0x7d2

.field public static final ERROR_UPD_EXTRACT:I = 0x7d4

.field public static final ERROR_UPD_NOT_WIFI_DOWNLOAD:I = 0x7d7

.field public static final ERROR_UPD_NO_TEMP:I = 0x7d3

.field public static final ERROR_UPD_REQUEST:I = 0x7d6


# instance fields
.field private final mCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/kwai/sodler/lib/ext/PluginError;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/kwai/sodler/lib/ext/PluginError;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/kwai/sodler/lib/ext/PluginError;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/kwai/sodler/lib/ext/PluginError;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginError{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwai/sodler/lib/ext/PluginError;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
