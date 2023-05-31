.class public Lcom/JoyFramework/d/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PATCH_DEX_VERSION"

.field public static final b:Ljava/lang/String; = "PATCH_SDK_VERSION"

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/d/bi;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    sget-boolean v1, Lcom/JoyFramework/d/bi;->c:Z

    if-eqz v1, :cond_32

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_dex.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_dex.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 36
    if-nez p0, :cond_4

    .line 80
    :goto_3
    return-void

    .line 37
    :cond_4
    invoke-static {p0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 38
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 39
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v1, Lcom/JoyFramework/d/bj;

    invoke-direct {v1, p0}, Lcom/JoyFramework/d/bj;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    goto :goto_3

    .line 69
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    invoke-static {p0, v0}, Lcom/JoyFramework/d/bi;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 75
    :cond_38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Lcom/JoyFramework/d/bi;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public static a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 88
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 134
    :cond_4
    :goto_4
    return-void

    .line 93
    :cond_5
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    :try_start_37
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_7d

    .line 106
    :goto_3a
    const/4 v1, 0x0

    .line 108
    :try_start_3b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_40} :catch_72

    .line 113
    :goto_40
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    if-eqz v0, :cond_4c

    .line 116
    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_78

    .line 121
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_51

    .line 122
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 123
    :cond_51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    const-string v0, "\u6ce8\u518c\u754c\u9762\u5df2\u622a\u5c4f\uff0c\u56fe\u7247\u4fdd\u5b58\u5230\u624b\u673a\u76f8\u518c\u91cc"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_6c} :catch_6d

    goto :goto_4

    .line 130
    :catch_6d
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 109
    :catch_72
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_40

    .line 117
    :catch_78
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 103
    :catch_7d
    move-exception v0

    goto :goto_3a
.end method

.method public static a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 142
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 177
    :cond_4
    :goto_4
    return-void

    .line 143
    :cond_5
    invoke-static {p0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 144
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 145
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v1, Lcom/JoyFramework/d/bl;

    invoke-direct {v1, p0, p1, p2}, Lcom/JoyFramework/d/bl;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    goto :goto_4

    .line 171
    :cond_1e
    invoke-static {p0, p1, p2}, Lcom/JoyFramework/d/bi;->c(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_4

    .line 174
    :cond_22
    invoke-static {p0, p1, p2}, Lcom/JoyFramework/d/bi;->c(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lokhttp3/ResponseBody;I)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 275
    :try_start_2
    invoke-static {p0}, Lcom/JoyFramework/d/bi;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 276
    invoke-static {p0}, Lcom/JoyFramework/d/bi;->c(Landroid/content/Context;)V

    .line 279
    :cond_b
    invoke-static {p0}, Lcom/JoyFramework/d/bi;->b(Landroid/content/Context;)Ljava/io/File;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_79

    move-result-object v4

    .line 285
    const/16 v2, 0x1000

    :try_start_11
    new-array v5, v2, [B

    .line 290
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_87
    .catchall {:try_start_11 .. :try_end_16} :catchall_7c

    move-result-object v3

    .line 291
    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_8a
    .catchall {:try_start_17 .. :try_end_1c} :catchall_82

    .line 294
    :goto_1c
    :try_start_1c
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 296
    const/4 v4, -0x1

    if-ne v0, v4, :cond_51

    .line 305
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 307
    const-string v0, "PATCH_DEX_VERSION"

    invoke-static {p0, v0, p2}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 308
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "joySdkVersion"

    invoke-static {v0, v4}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 310
    const-string v4, "PATCH_SDK_VERSION"

    invoke-static {p0, v4, v0}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_40
    const-string v0, "=====  \u5df2\u7ecf\u4fdd\u5b58 \u8865\u4e01\u6587\u4ef6 patch_dex.jar \u6587\u4ef6\u5230\u672c\u5730 \uff01  ====="

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_45} :catch_56
    .catchall {:try_start_1c .. :try_end_45} :catchall_6d

    .line 316
    const/4 v0, 0x1

    .line 320
    if-eqz v3, :cond_4b

    .line 321
    :try_start_48
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 323
    :cond_4b
    if-eqz v2, :cond_50

    .line 324
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_79

    .line 328
    :cond_50
    :goto_50
    return v0

    .line 300
    :cond_51
    const/4 v4, 0x0

    :try_start_52
    invoke-virtual {v2, v5, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_6d

    goto :goto_1c

    .line 317
    :catch_56
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 320
    :goto_59
    if-eqz v2, :cond_5e

    .line 321
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 323
    :cond_5e
    if-eqz v0, :cond_63

    .line 324
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_79

    :cond_63
    move v0, v1

    .line 318
    goto :goto_50

    .line 312
    :cond_65
    :try_start_65
    const-string v0, "PATCH_SDK_VERSION"

    const-string v4, "5.7"

    invoke-static {p0, v0, v4}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_56
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6d

    goto :goto_40

    .line 320
    :catchall_6d
    move-exception v0

    :goto_6e
    if-eqz v3, :cond_73

    .line 321
    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 323
    :cond_73
    if-eqz v2, :cond_78

    .line 324
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_78
    throw v0
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_79

    .line 327
    :catch_79
    move-exception v0

    move v0, v1

    .line 328
    goto :goto_50

    .line 320
    :catchall_7c
    move-exception v2

    move-object v3, v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_6e

    :catchall_82
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6e

    .line 317
    :catch_87
    move-exception v2

    move-object v2, v0

    goto :goto_59

    :catch_8a
    move-exception v2

    move-object v2, v3

    goto :goto_59
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 251
    .line 252
    sget-boolean v0, Lcom/JoyFramework/d/bi;->c:Z

    if-eqz v0, :cond_2b

    .line 253
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_dex.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    :goto_2a
    return-object v0

    .line 255
    :cond_2b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "patch_dex.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method static synthetic b(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/JoyFramework/d/bi;->c(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/JoyFramework/d/bw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    :try_start_23
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_8a

    .line 189
    :goto_26
    const/4 v1, 0x0

    .line 191
    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_5a

    .line 196
    :goto_2c
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 198
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_65
    .catchall {:try_start_33 .. :try_end_36} :catchall_74

    .line 203
    if-eqz v0, :cond_3b

    .line 204
    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_60

    .line 210
    :cond_3b
    :goto_3b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 216
    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    :goto_59
    return-void

    .line 192
    :catch_5a
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2c

    .line 206
    :catch_60
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 199
    :catch_65
    move-exception v1

    .line 200
    :try_start_66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    .line 203
    if-eqz v0, :cond_3b

    .line 204
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_3b

    .line 206
    :catch_6f
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 202
    :catchall_74
    move-exception v1

    .line 203
    if-eqz v0, :cond_7a

    .line 204
    :try_start_77
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 208
    :cond_7a
    :goto_7a
    throw v1

    .line 206
    :catch_7b
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 218
    :cond_80
    const-string v0, "\u56fe\u7247\u5df2\u4fdd\u5b58\u5230\u76f8\u518c\u4e2d"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_59

    .line 186
    :catch_8a
    move-exception v0

    goto :goto_26
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 338
    invoke-static {p0}, Lcom/JoyFramework/d/bi;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 340
    :try_start_6
    invoke-static {p0}, Lcom/JoyFramework/d/bi;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_14

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 343
    const-string v0, "\u5220\u9664\u4e86\u65e7\u8865\u4e01\u6587\u4ef6"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    .line 348
    :cond_14
    :goto_14
    return-void

    .line 345
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 356
    invoke-static {p0}, Lcom/JoyFramework/d/bi;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
