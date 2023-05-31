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
    .registers 15

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_5
    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v0, :cond_3c

    const-string v0, ""

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1046#####"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qq/e/comm/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/FileUtil;->copyTo(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    :goto_60
    return v0

    :cond_61
    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const/16 v0, 0x400

    new-array v8, v0, [B

    array-length v9, v7

    move v0, v2

    move v1, v2

    :goto_7f
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_ac

    move v3, v2

    :goto_86
    if-ge v3, v10, :cond_9f

    add-int/lit8 v4, v0, 0x1

    const/16 v11, 0x40

    if-lt v0, v11, :cond_b4

    aget-byte v11, v8, v3

    add-int/lit8 v0, v1, 0x1

    rem-int/2addr v1, v9

    aget-byte v1, v7, v1

    xor-int/2addr v1, v11

    int-to-byte v1, v1

    aput-byte v1, v8, v3

    :goto_99
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    move v0, v4

    goto :goto_86

    :cond_9f
    const/4 v3, 0x0

    invoke-virtual {v6, v8, v3, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a3} :catch_a4

    goto :goto_7f

    :catch_a4
    move-exception v0

    const-string v1, "Exception while init default plugin manager"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_60

    :cond_ac
    :try_start_ac
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_b2} :catch_a4

    const/4 v0, 0x1

    goto :goto_60

    :cond_b4
    move v0, v1

    goto :goto_99

    :cond_b6
    move v0, v2

    goto :goto_60
.end method


# virtual methods
.method a()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/qq/e/comm/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#####"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4e

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/qq/e/comm/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/qq/e/comm/util/a;->a()Lcom/qq/e/comm/util/a;

    move-result-object v2

    iget-object v5, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_43

    :cond_3b
    move v2, v1

    :goto_3c
    if-eqz v2, :cond_4c

    iput-object v3, p0, Lcom/qq/e/comm/managers/plugin/a;->c:Ljava/lang/String;

    iput v4, p0, Lcom/qq/e/comm/managers/plugin/a;->d:I

    :goto_42
    return v0

    :cond_43
    invoke-static {v5}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4a} :catch_52

    move-result v2

    goto :goto_3c

    :cond_4c
    move v0, v1

    goto :goto_42

    :cond_4e
    move v0, v1

    goto :goto_42

    :cond_50
    move v0, v1

    goto :goto_42

    :catch_52
    move-exception v0

    const-string v2, "Exception while checking plugin"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_42
.end method

.method a(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->a:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_16
    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-virtual {p2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/qq/e/comm/managers/plugin/a;->b:Ljava/io/File;

    invoke-static {v1, p2}, Lcom/qq/e/comm/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_26
    const/4 v0, 0x1

    goto :goto_5
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
