.class public Ltool/HotUpdate;
.super LsdkInterface/SDKBase;
.source "HotUpdate.java"

# interfaces
.implements LsdkInterface/IOther;


# instance fields
.field private currentFilePath:Ljava/lang/String;

.field downLoadURL:Ljava/lang/String;

.field private final fileEx:Ljava/lang/String;

.field private final fileNa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Ltool/HotUpdate;->currentFilePath:Ljava/lang/String;

    .line 29
    const-string v1, "InstallAPKCache"

    iput-object v1, p0, Ltool/HotUpdate;->fileEx:Ljava/lang/String;

    .line 30
    const-string v1, ".apk"

    iput-object v1, p0, Ltool/HotUpdate;->fileNa:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ltool/HotUpdate;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ltool/HotUpdate;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Ltool/HotUpdate;->getDataSource(Ljava/lang/String;)V

    return-void
.end method

.method private getDataSource(Ljava/lang/String;)V
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9519\u8bef\u7684URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 133
    const-string v0, "Error URL"

    invoke-virtual {p0, v0}, Ltool/HotUpdate;->SendProgressError(Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 136
    :cond_23
    const/4 v0, 0x0

    .line 137
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 138
    .local v1, "savedFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 142
    .local v2, "file":Ljava/io/File;
    :try_start_26
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "myURL":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 145
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 148
    if-eqz v4, :cond_7c

    .line 151
    if-eqz v0, :cond_74

    .line 155
    const-string v5, "InstallAPKCache"

    const-string v6, ".apk"

    invoke-static {v5, v6, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 157
    .local v5, "myTempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "currentTempFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    .local v7, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 162
    .local v8, "total":I
    const/4 v9, 0x0

    .line 164
    .local v9, "current":I
    const/16 v10, 0x400

    new-array v10, v10, [B

    .line 166
    .local v10, "buf":[B
    :goto_59
    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 167
    .local v11, "numbed":I
    add-int/2addr v9, v11

    .line 168
    if-gtz v11, :cond_6c

    .line 169
    nop

    .line 175
    .end local v11    # "numbed":I
    const/4 v11, 0x1

    invoke-virtual {p0, v8, v9, v11}, Ltool/HotUpdate;->SendProgress(IIZ)V

    .line 178
    invoke-direct {p0, v5}, Ltool/HotUpdate;->openFile(Ljava/io/File;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 185
    .end local v3    # "myURL":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "myTempFile":Ljava/io/File;
    .end local v6    # "currentTempFilePath":Ljava/lang/String;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "total":I
    .end local v9    # "current":I
    .end local v10    # "buf":[B
    goto :goto_a4

    .line 171
    .restart local v3    # "myURL":Ljava/net/URL;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "myTempFile":Ljava/io/File;
    .restart local v6    # "currentTempFilePath":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "total":I
    .restart local v9    # "current":I
    .restart local v10    # "buf":[B
    .restart local v11    # "numbed":I
    :cond_6c
    const/4 v12, 0x0

    invoke-virtual {p0, v8, v9, v12}, Ltool/HotUpdate;->SendProgress(IIZ)V

    .line 172
    invoke-virtual {v7, v10, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 173
    .end local v11    # "numbed":I
    goto :goto_59

    .line 152
    .end local v5    # "myTempFile":Ljava/io/File;
    .end local v6    # "currentTempFilePath":Ljava/lang/String;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "total":I
    .end local v9    # "current":I
    .end local v10    # "buf":[B
    :cond_74
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "stream is null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "savedFile":Ljava/io/RandomAccessFile;
    .end local v2    # "file":Ljava/io/File;
    .end local p1    # "url":Ljava/lang/String;
    throw v5

    .line 149
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p1    # "url":Ljava/lang/String;
    :cond_7c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "HttpURLConnection is null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "savedFile":Ljava/io/RandomAccessFile;
    .end local v2    # "file":Ljava/io/File;
    .end local p1    # "url":Ljava/lang/String;
    throw v5
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_84} :catch_84

    .line 182
    .end local v3    # "myURL":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p1    # "url":Ljava/lang/String;
    :catch_84
    move-exception v3

    .line 183
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    const-string v4, "Download Exception"

    invoke-virtual {p0, v4}, Ltool/HotUpdate;->SendProgressError(Ljava/lang/String;)V

    .line 187
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "savedFile":Ljava/io/RandomAccessFile;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method

.method private getFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "strPath"    # Ljava/lang/String;

    .line 113
    :try_start_0
    iput-object p1, p0, Ltool/HotUpdate;->currentFilePath:Ljava/lang/String;

    .line 114
    new-instance v0, Ltool/HotUpdate$1;

    invoke-direct {v0, p0, p1}, Ltool/HotUpdate$1;-><init>(Ltool/HotUpdate;Ljava/lang/String;)V

    .line 123
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 126
    .end local v0    # "r":Ljava/lang/Runnable;
    goto :goto_2b

    .line 124
    :catch_10
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFile Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method private openFile(Ljava/io/File;)V
    .registers 6
    .param p1, "f"    # Ljava/io/File;

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_47

    .line 230
    invoke-virtual {p0}, Ltool/HotUpdate;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    .line 231
    .local v0, "b":Z
    if-eqz v0, :cond_18

    .line 232
    invoke-virtual {p0, p1}, Ltool/HotUpdate;->InstallAPK(Ljava/io/File;)V

    goto :goto_46

    .line 235
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltool/HotUpdate;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 236
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ltool/HotUpdate$2;

    invoke-direct {v3, p0, p1}, Ltool/HotUpdate$2;-><init>(Ltool/HotUpdate;Ljava/io/File;)V

    invoke-virtual {p0, v2, v3}, Ltool/HotUpdate;->StartForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V

    .line 249
    .end local v0    # "b":Z
    .end local v1    # "packageURI":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_46
    goto :goto_4a

    .line 251
    :cond_47
    invoke-virtual {p0, p1}, Ltool/HotUpdate;->InstallAPK(Ljava/io/File;)V

    .line 253
    :goto_4a
    return-void
.end method


# virtual methods
.method DownloadAPK(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const-string v0, "DownloadURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    goto :goto_19

    .line 64
    :cond_f
    invoke-virtual {p0}, Ltool/HotUpdate;->GetProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    .line 67
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadAPK Other -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltool/HotUpdate;->getFile(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method GetAPKSize(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const-string v0, "DownloadURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    goto :goto_19

    .line 82
    :cond_f
    invoke-virtual {p0}, Ltool/HotUpdate;->GetProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    .line 86
    :goto_19
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ltool/HotUpdate;->downLoadURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "myURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 89
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 92
    .local v2, "total":I
    invoke-virtual {p0, v2}, Ltool/HotUpdate;->SendAPKSize(I)V

    .line 93
    return-void
.end method

.method public GetFunctionName()[Ljava/lang/String;
    .registers 4

    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DownloadAPK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GetAPKSize"

    aput-object v2, v0, v1

    return-object v0
.end method

.method InstallAPK(Ljava/io/File;)V
    .registers 7
    .param p1, "f"    # Ljava/io/File;

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3f

    .line 262
    const-string v1, "openFile A"

    invoke-virtual {p0, v1}, Ltool/HotUpdate;->SendLog(Ljava/lang/String;)V

    .line 264
    const-string v1, "application/vnd.android.package-archive"

    .line 265
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Ltool/HotUpdate;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltool/HotUpdate;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 266
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "contentUri":Landroid/net/Uri;
    goto :goto_52

    .line 268
    :cond_3f
    const-string v1, "openFile B"

    invoke-virtual {p0, v1}, Ltool/HotUpdate;->SendLog(Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    :goto_52
    new-instance v1, Ltool/HotUpdate$3;

    invoke-direct {v1, p0}, Ltool/HotUpdate$3;-><init>(Ltool/HotUpdate;)V

    invoke-virtual {p0, v0, v1}, Ltool/HotUpdate;->StartForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V

    .line 289
    return-void
.end method

.method public Other(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotUpdate Other -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 39
    const-string v0, "FunctionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "functionName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    :cond_28
    goto :goto_3c

    :sswitch_29
    const-string v2, "GetAPKSize"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_3c

    :sswitch_33
    const-string v2, "DownloadAPK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x0

    :goto_3c
    packed-switch v1, :pswitch_data_70

    goto :goto_48

    .line 46
    :pswitch_40
    invoke-virtual {p0, p1}, Ltool/HotUpdate;->GetAPKSize(Lorg/json/JSONObject;)V

    goto :goto_48

    .line 43
    :pswitch_44
    invoke-virtual {p0, p1}, Ltool/HotUpdate;->DownloadAPK(Lorg/json/JSONObject;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_49

    .line 44
    nop

    .line 51
    .end local v0    # "functionName":Ljava/lang/String;
    :goto_48
    goto :goto_64

    .line 49
    :catch_49
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotUpdate error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_64
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        0x1b38b054 -> :sswitch_33
        0x4ca77427 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_44
        :pswitch_40
    .end packed-switch
.end method

.method SendAPKSize(I)V
    .registers 5
    .param p1, "total"    # I

    .line 99
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "FunctionName"

    const-string v2, "GetAPKSize"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "Size"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 107
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_37

    .line 105
    :catch_1c
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendAPKSize error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method SendInstallResult(Z)V
    .registers 5
    .param p1, "success"    # Z

    .line 295
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 296
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v1, "FunctionName"

    const-string v2, "DownloadAPK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v1, "TotalProgress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v1, "Progress"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 302
    if-nez p1, :cond_2c

    .line 304
    const-string v1, "Error"

    const-string v2, "User Cancel Install"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_2c
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 310
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_4b

    .line 308
    :catch_30
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method SendProgress(IIZ)V
    .registers 7
    .param p1, "total"    # I
    .param p2, "current"    # I
    .param p3, "success"    # Z

    .line 193
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v1, "FunctionName"

    const-string v2, "DownloadAPK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v1, "TotalProgress"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v1, "Progress"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 203
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_41

    .line 201
    :catch_26
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method SendProgressError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .line 210
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, "ModuleName"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "FunctionName"

    const-string v2, "DownloadAPK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v1, "TotalProgress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v1, "Progress"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v1, "IsSuccess"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    const-string v1, "Error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 221
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_47

    .line 219
    :catch_2c
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method
