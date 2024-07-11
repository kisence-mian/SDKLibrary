.class public interface abstract Lcom/ss/android/socialbase/downloader/constants/c;
.super Ljava/lang/Object;
.source "DBDefinition.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 39

    .line 113
    const-string v0, "_id"

    const-string v1, "url"

    const-string v2, "savePath"

    const-string v3, "tempPath"

    const-string v4, "name"

    const-string v5, "chunkCount"

    const-string v6, "status"

    const-string v7, "curBytes"

    const-string v8, "totalBytes"

    const-string v9, "eTag"

    const-string v10, "onlyWifi"

    const-string v11, "force"

    const-string v12, "retryCount"

    const-string v13, "extra"

    const-string v14, "mimeType"

    const-string v15, "title"

    const-string v16, "notificationEnable"

    const-string v17, "notificationVisibility"

    const-string v18, "isFirstDownload"

    const-string v19, "isFirstSuccess"

    const-string v20, "needHttpsToHttpRetry"

    const-string v21, "downloadTime"

    const-string v22, "packageName"

    const-string v23, "md5"

    const-string v24, "retryDelay"

    const-string v25, "curRetryTime"

    const-string v26, "retryDelayStatus"

    const-string v27, "defaultHttpServiceBackUp"

    const-string v28, "chunkRunnableReuse"

    const-string v29, "retryDelayTimeArray"

    const-string v30, "chunkDowngradeRetry"

    const-string v31, "backUpUrlsStr"

    const-string v32, "backUpUrlRetryCount"

    const-string v33, "realDownloadTime"

    const-string v34, "retryScheduleMinutes"

    const-string v35, "independentProcess"

    const-string v36, "auxiliaryJsonobjectString"

    const-string v37, "iconUrl"

    const-string v38, "appVersionCode"

    filled-new-array/range {v0 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/c;->a:[Ljava/lang/String;

    .line 155
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/c;->b:[Ljava/lang/String;

    .line 181
    const-string v2, "_id"

    const-string v3, "chunkIndex"

    const-string v4, "startOffset"

    const-string v5, "curOffset"

    const-string v6, "endOffset"

    const-string v7, "chunkContentLen"

    const-string v8, "hostChunkIndex"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/c;->c:[Ljava/lang/String;

    .line 191
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/c;->d:[Ljava/lang/String;

    .line 206
    const-string v1, "info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/c;->e:[Ljava/lang/String;

    .line 211
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/c;->f:[Ljava/lang/String;

    return-void
.end method
