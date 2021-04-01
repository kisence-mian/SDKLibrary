.class public Lcom/kwai/filedownloader/h0/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x10000

.field private static b:J = 0x7d0L

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/Boolean;

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kwai/filedownloader/h0/f;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->b()Lcom/kwai/filedownloader/h0/c$d;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/kwai/filedownloader/h0/c$d;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/kwai/filedownloader/c0/b;)J
    .registers 12

    const-wide/16 v0, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kwai/filedownloader/h0/f;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-string v6, "Transfer-Encoding"

    invoke-interface {p1, v6}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_4d

    if-eqz v6, :cond_43

    const-string v2, "chunked"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v4

    :goto_25
    if-nez v2, :cond_42

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/kwai/filedownloader/h0/e;->c:Z

    if-eqz v2, :cond_45

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_42

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-class v3, Lcom/kwai/filedownloader/h0/f;

    const-string v4, "%d response header is not legal but HTTP lenient is true, so handle as the case of transfer encoding chunk"

    invoke-static {v3, v4, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    :goto_42
    return-wide v0

    :cond_43
    move v2, v5

    goto :goto_25

    :cond_45
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v1, "can\'t know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties"

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move-wide v0, v2

    goto :goto_42
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filedownloader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".old_file_converted"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "2.6.4.1"

    aput-object v2, v0, v1

    const-string v1, "FileDownloader/%s"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/kwai/filedownloader/c0/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    const-string v1, "\\/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    if-eqz p1, :cond_4

    if-nez p2, :cond_b

    move-object p0, v0

    goto :goto_4

    :cond_b
    invoke-static {p0, p2}, Lcom/kwai/filedownloader/h0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput p0, Lcom/kwai/filedownloader/h0/f;->a:I

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-step\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(J)V
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwai/filedownloader/h0/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput-wide p0, Lcom/kwai/filedownloader/h0/f;->b:J

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "This value is used in the :filedownloader process, so set this value in your process is without effect. You can add \'process.non-separate=true\' in \'filedownloader.properties\' to share the main process to FileDownloadService. Or you can configure this value in \'filedownloader.properties\' by \'download.min-progress-time\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/kwai/filedownloader/h0/f;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kwai/filedownloader/h0/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILcom/kwai/filedownloader/f0/c;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/f0/c;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static a(ILcom/kwai/filedownloader/f0/c;Ljava/lang/Boolean;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_18

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_17

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "can\'t continue %d model == null"

    invoke-static {v2, v3, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_17

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "can\'t continue %d temp path == null"

    invoke-static {v2, v3, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_32
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/f0/c;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_17
.end method

.method public static a(ILcom/kwai/filedownloader/f0/c;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 16

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1a

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_19

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "can\'t continue %d path = null"

    invoke-static {v2, v3, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    :goto_19
    return v0

    :cond_1a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v3, :cond_2b

    if-eqz v4, :cond_4b

    :cond_2b
    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_19

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v10

    const-class v1, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "can\'t continue %d file not suit, exists[%B], directory[%B]"

    invoke-static {v1, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_4b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->a()I

    move-result v6

    if-gt v6, v1, :cond_73

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_73

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_19

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "can\'t continue %d the downloaded-record is zero."

    invoke-static {v2, v3, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_73
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v6

    cmp-long v8, v2, v4

    if-ltz v8, :cond_89

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_b1

    cmp-long v8, v2, v6

    if-gtz v8, :cond_89

    cmp-long v8, v4, v6

    if-ltz v8, :cond_b1

    :cond_89
    sget-boolean v8, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v8, :cond_19

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v11

    const-class v1, Lcom/kwai/filedownloader/h0/f;

    const-string v2, "can\'t continue %d dirty data fileLength[%d] sofar[%d] total[%d]"

    invoke-static {v1, v2, v8}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_b1
    if-eqz p3, :cond_d2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d2

    cmp-long v2, v6, v2

    if-nez v2, :cond_d2

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_19

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "can\'t continue %d, because of the output stream doesn\'t support seek, but the task has already pre-allocated, so we only can download it from the very beginning."

    invoke-static {v2, v3, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_d2
    move v0, v1

    goto/16 :goto_19
.end method

.method public static a(JJ)Z
    .registers 6

    invoke-static {}, Lcom/kwai/filedownloader/h0/f;->c()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_13

    invoke-static {}, Lcom/kwai/filedownloader/h0/f;->d()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    :catch_a
    move-exception v2

    goto :goto_4
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/h0/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/kwai/filedownloader/h0/f;->c:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1e
    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static b(ILcom/kwai/filedownloader/c0/b;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_21

    const-string v0, "Etag"

    invoke-interface {p1, v0}, Lcom/kwai/filedownloader/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "etag find %s for task(%d)"

    invoke-static {v2, v3, v1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connection is null when findEtag"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_21

    if-eqz p0, :cond_19

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "%s%s%s"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t generate real path, the directory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t generate real path, the file name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/kwai/filedownloader/h0/f;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_9
    return v1

    :cond_a
    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwai/filedownloader/h0/e;->d:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kwai/filedownloader/h0/f;->d:Ljava/lang/Boolean;

    sget-object v0, Lcom/kwai/filedownloader/h0/f;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_9

    :cond_20
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_38

    new-array v0, v1, [Ljava/lang/Object;

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "fail to get the activity manager!"

    invoke-static {v2, v3, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_38
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    :cond_44
    new-array v0, v1, [Ljava/lang/Object;

    const-class v2, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "The running app process info list from ActivityManager is null or empty, maybe current App is not running."

    invoke-static {v2, v3, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_52

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, ":filedownloader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    :cond_6b
    move v0, v1

    goto :goto_13
.end method

.method public static c()I
    .registers 1

    sget v0, Lcom/kwai/filedownloader/h0/f;->a:I

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->b()Lcom/kwai/filedownloader/h0/c$d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/kwai/filedownloader/h0/c$d;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Lcom/kwai/filedownloader/g0/a;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {p0}, Lcom/kwai/filedownloader/h0/f;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_34
    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/download/b;->a(Ljava/io/File;)Lcom/kwai/filedownloader/g0/a;

    move-result-object v0

    return-object v0

    :cond_3d
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "found invalid internal destination path[%s], & path is directory[%B]"

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    new-instance v1, Ljava/io/IOException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "create new file error  %s"

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    new-instance v0, Ljava/lang/RuntimeException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "found invalid internal destination filename %s"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "found invalid internal destination path, empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/kwai/filedownloader/h0/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e
.end method

.method public static d()J
    .registers 2

    sget-wide v0, Lcom/kwai/filedownloader/h0/f;->b:J

    return-wide v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method public static e()Z
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1a

    new-array v0, v1, [Ljava/lang/Object;

    const-class v1, Lcom/kwai/filedownloader/h0/f;

    const-string v3, "failed to get connectivity manager!"

    invoke-static {v1, v3, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_19
    return v2

    :cond_1a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v2, :cond_29

    :cond_26
    move v0, v2

    :goto_27
    move v2, v0

    goto :goto_19

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/kwai/filedownloader/h0/f;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/kwai/filedownloader/h0/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/kwai/filedownloader/h0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/h0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)J
    .registers 5

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_10

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    :goto_f
    return-wide v0

    :cond_10
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_f
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_4d

    if-le v4, v1, :cond_4d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_4d

    move v0, v1

    :goto_19
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_4b

    if-lez v0, :cond_4b

    :goto_23
    if-eq v1, v5, :cond_2f

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_31

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return-object v0

    :cond_31
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_46

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v0, v3, :cond_46

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_46
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_4b
    move v1, v3

    goto :goto_23

    :cond_4d
    move v0, v2

    goto :goto_19
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s.temp"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDownloader-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_38

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v3, :cond_33

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_29

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, UTF-8 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_41
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, MD5 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    sget-object v1, Lcom/kwai/filedownloader/h0/f;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_3

    :catch_16
    move-exception v1

    goto :goto_3
.end method
