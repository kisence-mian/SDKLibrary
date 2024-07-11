.class public Lcom/kwad/sdk/crash/utils/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/kwad/sdk/crash/utils/h;->a:C

    new-instance v0, Lcom/kwad/sdk/crash/utils/StringBuilderWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/kwad/sdk/crash/utils/StringBuilderWriter;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/utils/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/crash/utils/h;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/kwad/sdk/crash/utils/h;->b(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    long-to-int p0, p0

    return p0
.end method

.method public static a(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .registers 7

    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    return-wide v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/crash/utils/StringBuilderWriter;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/utils/StringBuilderWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/utils/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_27

    const/16 v0, 0x400

    :try_start_c
    new-array v0, v0, [C

    :goto_e
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_25

    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    return-object v0

    :catchall_25
    move-exception v0

    goto :goto_2b

    :catchall_27
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2b
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    throw v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lcom/kwad/sdk/crash/utils/a;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0, p1}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3

    if-eqz p0, :cond_d

    invoke-static {p2}, Lcom/kwad/sdk/crash/utils/a;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_d
    return-void
.end method

.method public static b(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 3

    const/16 v0, 0x1000

    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    :goto_5
    return-void
.end method
