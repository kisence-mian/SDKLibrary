.class public Lcom/ss/android/downloadlib/c;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/h;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/ss/android/downloadlib/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/c;->b:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 180
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/e;->f(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 182
    return-void

    .line 184
    :cond_b
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/addownload/c/b;

    invoke-direct {v1, p1}, Lcom/ss/android/downloadlib/addownload/c/b;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 17

    .line 133
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/io/File;J)J

    move-result-wide v6

    .line 134
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/io/File;)J

    move-result-wide v3

    .line 135
    const-wide/16 v8, 0xa

    div-long/2addr v3, v8

    const-wide/32 v8, 0x1f400000

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 136
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v8

    .line 139
    long-to-double v3, v3

    long-to-double v10, v8

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double/2addr v10, v12

    add-double/2addr v10, v3

    .line 141
    cmp-long v0, v6, v1

    if-lez v0, :cond_45

    cmp-long v0, v8, v1

    if-lez v0, :cond_45

    long-to-double v0, v6

    cmpg-double v2, v0, v10

    if-gez v2, :cond_45

    .line 143
    sub-double v0, v10, v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->b()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_45

    .line 144
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->a(I)V

    .line 148
    :cond_45
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/c$3;

    move-object v3, v1

    move-object v4, p0

    move-object/from16 v5, p2

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/ss/android/downloadlib/c$3;-><init>(Lcom/ss/android/downloadlib/c;Lcom/ss/android/downloadad/a/b/b;JJDLcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 171
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 9

    .line 51
    if-nez p1, :cond_3

    .line 52
    return-void

    .line 54
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 55
    if-nez v0, :cond_e

    .line 56
    return-void

    .line 59
    :cond_e
    const/4 v1, -0x1

    if-ne p3, v1, :cond_d7

    .line 60
    const/4 p3, 0x0

    .line 61
    if-eqz p2, :cond_c6

    .line 63
    :try_start_14
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p3

    const-string v1, "toast_without_network"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_38

    .line 64
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p3

    const/16 v3, 0x419

    if-ne p3, v3, :cond_38

    .line 65
    iget-object p3, p0, Lcom/ss/android/downloadlib/c;->b:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/downloadlib/c$1;

    invoke-direct {v3, p0}, Lcom/ss/android/downloadlib/c$1;-><init>(Lcom/ss/android/downloadlib/c;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_38
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_a8

    .line 78
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p3

    if-eqz p3, :cond_4f

    .line 79
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p3

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lcom/ss/android/a/a/a/m;->a(J)V

    .line 81
    :cond_4f
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p3

    const-string v3, "download_failed_for_space"

    invoke-virtual {p3, v3, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 82
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->P()Z

    move-result p3

    if-nez p3, :cond_6a

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p3

    const-string v3, "download_can_restart"

    invoke-virtual {p3, v3, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 86
    :cond_6a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p3

    if-eqz p3, :cond_7a

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p3

    invoke-interface {p3}, Lcom/ss/android/a/a/a/m;->d()Z

    move-result p3

    if-nez p3, :cond_a8

    .line 88
    :cond_7a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p3

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object p3

    .line 89
    if-eqz p3, :cond_a8

    .line 90
    invoke-interface {p3}, Lcom/ss/android/a/a/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 91
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 92
    const-string v3, "show_no_enough_space_toast"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_a8

    .line 93
    iget-object v1, p0, Lcom/ss/android/downloadlib/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/downloadlib/c$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/ss/android/downloadlib/c$2;-><init>(Lcom/ss/android/downloadlib/c;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/a/a/b/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :cond_a8
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "exception_msg_length"

    const/16 v1, 0x1f4

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    .line 108
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 109
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1, p3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    move-object p3, v0

    .line 111
    :cond_c6
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/ss/android/downloadlib/e/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 112
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Ljava/lang/String;)V

    .line 113
    goto :goto_107

    :cond_d7
    const/4 p2, -0x3

    if-ne p3, p2, :cond_e0

    .line 114
    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V

    goto :goto_107

    .line 125
    :catch_de
    move-exception p1

    goto :goto_103

    .line 115
    :cond_e0
    const/16 p2, 0x7d1

    if-ne p3, p2, :cond_ec

    .line 117
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p3

    invoke-virtual {p3, p1, v0, p2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;I)V

    goto :goto_107

    .line 118
    :cond_ec
    const/16 p2, 0xb

    if-ne p3, p2, :cond_107

    .line 120
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p2

    const/16 p3, 0x7d0

    invoke-virtual {p2, p1, v0, p3}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;I)V

    .line 121
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->R()Z

    move-result p2

    if-nez p2, :cond_107

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_102} :catch_de

    goto :goto_107

    .line 126
    :goto_103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_108

    .line 127
    :cond_107
    :goto_107
    nop

    .line 128
    :goto_108
    return-void
.end method
