.class final Lcom/tonyodev/fetch/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# static fields
.field static final BAD_REQUEST:I = -0x74

.field static final CONNECTION_TIMED_OUT:I = -0x68

.field static final DOWNLOAD_INTERRUPTED:I = -0x76

.field static final ENQUEUE_ERROR:I = -0x75

.field static final FILE_ALREADY_CREATED:I = -0x70

.field static final FILE_NOT_CREATED:I = -0x66

.field static final FILE_NOT_FOUND:I = -0x6f

.field static final HTTP_NOT_FOUND:I = -0x6a

.field static final ILLEGAL_STATE:I = -0x6d

.field static final INVALID_STATUS:I = -0x72

.field static final N0_STORAGE_SPACE:I = -0x6c

.field static final NOT_USABLE:I = -0x73

.field static final REQUEST_ALREADY_EXIST:I = -0x71

.field static final SERVER_ERROR:I = -0x6e

.field static final THREAD_INTERRUPTED:I = -0x67

.field static final UNKNOWN:I = -0x65

.field static final UNKNOWN_HOST:I = -0x69

.field static final WRITE_PERMISSION_DENIED:I = -0x6b


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static getCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/16 v0, -0x65

    .line 52
    if-nez p0, :cond_5

    .line 78
    :cond_4
    :goto_4
    return v0

    .line 54
    :cond_5
    const-string v1, "FNC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "open failed: ENOENT (No such file or directory)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 55
    :cond_15
    const/16 v0, -0x66

    goto :goto_4

    .line 56
    :cond_18
    const-string v1, "TI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 57
    const/16 v0, -0x67

    goto :goto_4

    .line 58
    :cond_23
    const-string v1, "DIE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 59
    const/16 v0, -0x76

    goto :goto_4

    .line 60
    :cond_2e
    const-string v1, "recvfrom failed: ETIMEDOUT (Connection timed out)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "timeout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 61
    :cond_3e
    const/16 v0, -0x68

    goto :goto_4

    .line 62
    :cond_41
    const-string v1, "java.io.IOException: 404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "No address associated with hostname"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 63
    :cond_51
    const/16 v0, -0x6a

    goto :goto_4

    .line 64
    :cond_54
    const-string v1, "Unable to resolve host"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 65
    const/16 v0, -0x69

    goto :goto_4

    .line 66
    :cond_5f
    const-string v1, "open failed: EACCES (Permission denied)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 67
    const/16 v0, -0x6b

    goto :goto_4

    .line 68
    :cond_6a
    const-string v1, "write failed: ENOSPC (No space left on device)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "database or disk is full (code 13)"

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 70
    :cond_7a
    const/16 v0, -0x6c

    goto :goto_4

    .line 71
    :cond_7d
    const-string v1, "SSRV:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 72
    const/16 v0, -0x6e

    goto/16 :goto_4

    .line 74
    :cond_89
    const-string v1, "column _file_path is not unique"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    const/16 v0, -0x71

    goto/16 :goto_4
.end method
