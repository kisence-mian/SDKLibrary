.class public Lcom/tds/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAssetTextAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFiles"    # Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 16
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 17
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 19
    .local v2, "bf":Ljava/io/BufferedReader;
    :goto_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_23

    goto :goto_17

    .line 24
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "bf":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_22
    goto :goto_27

    .line 22
    :catch_23
    move-exception v1

    .line 23
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    .end local v1    # "e":Ljava/io/IOException;
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
