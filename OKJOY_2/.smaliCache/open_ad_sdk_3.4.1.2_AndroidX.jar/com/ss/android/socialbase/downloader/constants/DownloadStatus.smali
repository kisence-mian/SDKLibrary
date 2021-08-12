.class public Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# static fields
.field public static final CANCELED:I = -0x4

.field public static final CONNECTED:I = 0x3

.field public static final DOWNLOAD_COMPLETE_HANDLE:I = 0xb

.field public static final FAILED:I = -0x1

.field public static final FIRST_START:I = 0x6

.field public static final FIRST_SUCCESS:I = -0x6

.field public static final IDLE_STATUS:I = 0x0

.field public static final INTERCEPT:I = -0x7

.field public static final PAUSED:I = -0x2

.field public static final PAUSED_BY_DB_INIT:I = -0x5

.field public static final PREPARE:I = 0x1

.field public static final PROGRESS:I = 0x4

.field public static final RETRY:I = 0x5

.field public static final RETRY_DELAY:I = 0x7

.field public static final SINGLE_CHUNK_DELAY_RETRY:I = 0xa

.field public static final SINGLE_CHUNK_RETRY:I = 0x9

.field public static final START:I = 0x2

.field public static final SUCCESSED:I = -0x3

.field public static final WAITING_ASYNC_HANDLER:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDownloadOver(I)Z
    .registers 2

    .line 32
    if-gez p0, :cond_a

    const/4 v0, -0x2

    if-eq p0, v0, :cond_a

    const/4 v0, -0x5

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isDownloading(I)Z
    .registers 2

    .line 36
    if-lez p0, :cond_b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isFailedStatus(I)Z
    .registers 2

    .line 62
    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, -0x7

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static isMonitorStatus(I)Z
    .registers 2

    .line 41
    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, -0x3

    if-eq p0, v0, :cond_17

    const/4 v0, -0x1

    if-eq p0, v0, :cond_17

    const/4 v0, -0x4

    if-eq p0, v0, :cond_17

    const/4 v0, -0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x6

    if-eq p0, v0, :cond_17

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static isRealTimeUploadStatus(I)Z
    .registers 2

    .line 52
    const/4 v0, -0x3

    if-eq p0, v0, :cond_19

    const/4 v0, -0x1

    if-eq p0, v0, :cond_19

    const/4 v0, -0x4

    if-eq p0, v0, :cond_19

    const/4 v0, -0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_19

    const/4 v0, 0x7

    if-eq p0, v0, :cond_19

    const/16 v0, 0x8

    if-ne p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static isTimeUploadStatus(I)Z
    .registers 2

    .line 48
    const/4 v0, -0x3

    if-eq p0, v0, :cond_c

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 v0, -0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static isUnCompletedStatus(I)Z
    .registers 2

    .line 57
    const/4 v0, -0x1

    if-eq p0, v0, :cond_12

    const/4 v0, -0x2

    if-eq p0, v0, :cond_12

    const/4 v0, -0x7

    if-eq p0, v0, :cond_12

    const/4 v0, -0x4

    if-eq p0, v0, :cond_12

    const/4 v0, -0x5

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method
