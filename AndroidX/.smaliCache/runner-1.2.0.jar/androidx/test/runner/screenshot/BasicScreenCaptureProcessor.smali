.class public Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;
.super Ljava/lang/Object;
.source "BasicScreenCaptureProcessor.java"

# interfaces
.implements Landroidx/test/runner/screenshot/ScreenCaptureProcessor;


# static fields
.field private static sAndroidDeviceName:Ljava/lang/String;

.field private static sAndroidRuntimeVersion:I


# instance fields
.field protected mDefaultFilenamePrefix:Ljava/lang/String;

.field protected mDefaultScreenshotPath:Ljava/io/File;

.field protected mFileNameDelimiter:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->sAndroidRuntimeVersion:I

    .line 45
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->sAndroidDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 53
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "screenshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;-><init>(Ljava/io/File;)V

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "defaultScreenshotPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultScreenshotPath"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "BasicScreenCaptureProcessor"

    iput-object v0, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mTag:Ljava/lang/String;

    .line 58
    const-string v0, "-"

    iput-object v0, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mFileNameDelimiter:Ljava/lang/String;

    .line 59
    const-string v0, "screenshot"

    iput-object v0, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mDefaultFilenamePrefix:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mDefaultScreenshotPath:Ljava/io/File;

    .line 61
    return-void
.end method

.method static setAndroidDeviceName(Ljava/lang/String;)V
    .registers 1
    .param p0, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 112
    sput-object p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->sAndroidDeviceName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method static setAndroidRuntimeVersion(I)V
    .registers 1
    .param p0, "sdkInt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkInt"
        }
    .end annotation

    .line 117
    sput p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->sAndroidRuntimeVersion:I

    .line 118
    return-void
.end method


# virtual methods
.method protected getDefaultFilename()Ljava/lang/String;
    .registers 7

    .line 97
    iget-object v0, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mDefaultFilenamePrefix:Ljava/lang/String;

    iget-object v1, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mFileNameDelimiter:Ljava/lang/String;

    sget-object v2, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->sAndroidDeviceName:Ljava/lang/String;

    sget v3, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->sAndroidRuntimeVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mFileNameDelimiter:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Landroidx/test/runner/screenshot/ScreenCapture;)Ljava/lang/String;
    .registers 10
    .param p1, "capture"    # Landroidx/test/runner/screenshot/ScreenCapture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const-string v0, "Could not close output steam."

    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->getDefaultFilename()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_d
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "filename":Ljava/lang/String;
    :goto_15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mDefaultScreenshotPath:Ljava/io/File;

    .line 69
    .local v2, "imageFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_72

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_72

    .line 71
    :cond_61
    new-instance v0, Ljava/io/IOException;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 72
    const-string v4, "The directory %s does not exist and could not be created or is not writable."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_72
    :goto_72
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v3, "imageFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 80
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_78
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 81
    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/test/runner/screenshot/ScreenCapture;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_a0

    .line 85
    nop

    .line 86
    :try_start_94
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 90
    goto :goto_9f

    .line 88
    :catch_98
    move-exception v5

    .line 89
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mTag:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 92
    :goto_9f
    return-object v1

    .line 84
    :catchall_a0
    move-exception v5

    .line 85
    if-eqz v4, :cond_ae

    .line 86
    :try_start_a3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_ae

    .line 88
    :catch_a7
    move-exception v6

    .line 89
    .local v6, "e":Ljava/io/IOException;
    iget-object v7, p0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;->mTag:Ljava/lang/String;

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_af

    .line 90
    .end local v6    # "e":Ljava/io/IOException;
    :cond_ae
    :goto_ae
    nop

    :goto_af
    throw v5
.end method
