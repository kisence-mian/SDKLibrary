.class public Lpl/droidsonroids/gif/GifAnimationMetaData;
.super Ljava/lang/Object;
.source "GifAnimationMetaData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lpl/droidsonroids/gif/GifAnimationMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4eff56d4f010140dL


# instance fields
.field private final mDuration:I

.field private final mHeight:I

.field private final mImageCount:I

.field private final mLoopCount:I

.field private final mMetadataBytesCount:J

.field private final mPixelsBytesCount:J

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 306
    new-instance v0, Lpl/droidsonroids/gif/GifAnimationMetaData$1;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;-><init>()V

    sput-object v0, Lpl/droidsonroids/gif/GifAnimationMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 3
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    .line 304
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifAnimationMetaData$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lpl/droidsonroids/gif/GifAnimationMetaData$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .registers 4
    .param p1, "gifInfoHandle"    # Lpl/droidsonroids/gif/GifInfoHandle;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getLoopCount()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 167
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getDuration()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 168
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 169
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 170
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    .line 171
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getMetadataByteCount()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    .line 172
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getAllocationByteCount()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    .line 173
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->recycle()V

    .line 174
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>([B)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 138
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getAllocationByteCount()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    return-wide v0
.end method

.method public getDrawableAllocationByteCount(Lpl/droidsonroids/gif/GifDrawable;I)J
    .registers 11
    .param p1, "oldDrawable"    # Lpl/droidsonroids/gif/GifDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "sampleSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xffffL
        .end annotation
    .end param
    .annotation build Lpl/droidsonroids/gif/annotations/Beta;
    .end annotation

    .prologue
    const v6, 0xffff

    .line 246
    const/4 v3, 0x1

    if-lt p2, v3, :cond_8

    if-le p2, v6, :cond_31

    .line 247
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sample size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range <1, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_31
    mul-int v2, p2, p2

    .line 252
    .local v2, "sampleSizeFactor":I
    if-eqz p1, :cond_56

    iget-object v3, p1, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_56

    .line 253
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_50

    .line 254
    iget-object v3, p1, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    int-to-long v0, v3

    .line 261
    .local v0, "bufferSize":J
    :goto_4a
    iget-wide v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    int-to-long v6, v2

    div-long/2addr v4, v6

    add-long/2addr v4, v0

    return-wide v4

    .line 256
    .end local v0    # "bufferSize":J
    :cond_50
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifDrawable;->getFrameByteCount()I

    move-result v3

    int-to-long v0, v3

    .restart local v0    # "bufferSize":J
    goto :goto_4a

    .line 259
    .end local v0    # "bufferSize":J
    :cond_56
    iget v3, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    div-int/2addr v3, v2

    int-to-long v0, v3

    .restart local v0    # "bufferSize":J
    goto :goto_4a
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    return v0
.end method

.method public getMetadataAllocationByteCount()J
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    return-wide v0
.end method

.method public getNumberOfFrames()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    return v0
.end method

.method public isAnimated()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 219
    iget v1, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    if-le v1, v0, :cond_a

    iget v1, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    if-lez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 275
    iget v2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    if-nez v2, :cond_52

    const-string v0, "Infinity"

    .line 276
    .local v0, "loopCount":Ljava/lang/String;
    :goto_6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "GIF: size: %dx%d, frames: %d, loops: %s, duration: %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifAnimationMetaData;->isAnimated()Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "suffix":Ljava/lang/String;
    :cond_51
    return-object v1

    .line 275
    .end local v0    # "loopCount":Ljava/lang/String;
    :cond_52
    iget v2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 287
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mMetadataBytesCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mPixelsBytesCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    return-void
.end method
