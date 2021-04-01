.class public interface abstract Lcom/ss/android/socialbase/downloader/b/c;
.super Ljava/lang/Object;
.source "DBDefinition.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "savePath"

    aput-object v1, v0, v5

    const-string v1, "tempPath"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "chunkCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "curBytes"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "totalBytes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eTag"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "onlyWifi"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "force"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "retryCount"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "notificationEnable"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "notificationVisibility"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "isFirstDownload"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "isFirstSuccess"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "needHttpsToHttpRetry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "downloadTime"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "retryDelay"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "curRetryTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retryDelayStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "defaultHttpServiceBackUp"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "chunkRunnableReuse"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "retryDelayTimeArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "chunkDowngradeRetry"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "backUpUrlsStr"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "backUpUrlRetryCount"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "realDownloadTime"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "retryScheduleMinutes"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "independentProcess"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "auxiliaryJsonobjectString"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/c;->a:[Ljava/lang/String;

    .line 148
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/c;->b:[Ljava/lang/String;

    .line 174
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "chunkIndex"

    aput-object v1, v0, v4

    const-string v1, "startOffset"

    aput-object v1, v0, v5

    const-string v1, "curOffset"

    aput-object v1, v0, v6

    const-string v1, "endOffset"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "chunkContentLen"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostChunkIndex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/c;->c:[Ljava/lang/String;

    .line 184
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/ss/android/socialbase/downloader/b/c;->d:[Ljava/lang/String;

    return-void
.end method
