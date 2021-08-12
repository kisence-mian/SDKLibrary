.class public Lcom/qq/e/comm/managers/plugin/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .registers 12

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_b0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v2, :cond_3c

    const-string v2, ""

    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1200#####"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/qq/e/comm/util/FileUtil;->copyTo(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    goto :goto_b0

    :cond_61
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/16 v1, 0x400

    new-array v1, v1, [B

    array-length v2, p1

    move v3, v0

    move v4, v3

    :goto_7f
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_a2

    move v6, v0

    :goto_86
    if-ge v6, v5, :cond_9e

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x40

    if-lt v3, v8, :cond_9a

    aget-byte v3, v1, v6

    add-int/lit8 v8, v4, 0x1

    rem-int/2addr v4, v2

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    move v4, v8

    :cond_9a
    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_86

    :cond_9e
    invoke-virtual {p2, v1, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7f

    :cond_a2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_a8
    .catchall {:try_start_5 .. :try_end_a8} :catchall_aa

    const/4 v0, 0x1

    goto :goto_b0

    :catchall_aa
    move-exception p0

    const-string p1, "Exception while init default plugin manager"

    invoke-static {p1, p0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b0
    :goto_b0
    return v0
.end method


# virtual methods
.method a()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#####"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4a

    const/4 v2, 0x1

    aget-object v3, v1, v2

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v4

    iget-object v5, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_42

    :cond_39
    invoke-static {v5}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_43

    :cond_42
    :goto_42
    move v4, v0

    :goto_43
    if-eqz v4, :cond_4a

    iput-object v3, p0, Lcom/qq/e/comm/managers/plugin/a;->c:Ljava/lang/String;

    iput v1, p0, Lcom/qq/e/comm/managers/plugin/a;->d:I
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    return v2

    :cond_4a
    return v0

    :catchall_4b
    move-exception v1

    const-string v2, "Exception while checking plugin"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method a(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    if-nez p2, :cond_6

    goto :goto_2a

    :cond_6
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_27

    :cond_16
    iget-object p1, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-virtual {p2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    return v0

    :cond_28
    :goto_28
    const/4 p1, 0x1

    return p1

    :cond_2a
    :goto_2a
    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/plugin/a;->d:I

    return v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/a;->c:Ljava/lang/String;

    return-object v0
.end method
