.class public final Landroidx/test/runner/screenshot/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# static fields
.field private static final DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

.field private filename:Ljava/lang/String;

.field private format:Landroid/graphics/Bitmap$CompressFormat;

.field private processorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Landroidx/test/runner/screenshot/ScreenCapture;->DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;

    invoke-direct {v0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 56
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    sget-object v0, Landroidx/test/runner/screenshot/ScreenCapture;->DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Landroidx/test/runner/screenshot/ScreenCaptureProcessor;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "defaultProcessor"    # Landroidx/test/runner/screenshot/ScreenCaptureProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "defaultProcessor"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;

    invoke-direct {v0}, Landroidx/test/runner/screenshot/BasicScreenCaptureProcessor;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 61
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    .line 62
    sget-object v0, Landroidx/test/runner/screenshot/ScreenCapture;->DEFAULT_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    .line 63
    iput-object p2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 169
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 170
    return v0

    .line 172
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 173
    return v1

    .line 175
    :cond_8
    instance-of v2, p1, Landroidx/test/runner/screenshot/ScreenCapture;

    if-nez v2, :cond_d

    .line 176
    return v1

    .line 179
    :cond_d
    move-object v2, p1

    check-cast v2, Landroidx/test/runner/screenshot/ScreenCapture;

    .line 181
    .local v2, "other":Landroidx/test/runner/screenshot/ScreenCapture;
    iget-object v3, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1e

    .line 182
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .local v3, "bitmapsEqual":Z
    :goto_1d
    goto :goto_2a

    .line 184
    .end local v3    # "bitmapsEqual":Z
    :cond_1e
    invoke-virtual {p0}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 188
    .restart local v3    # "bitmapsEqual":Z
    :goto_2a
    iget-object v4, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    if-nez v4, :cond_38

    .line 189
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    .local v4, "nameEqual":Z
    :goto_37
    goto :goto_40

    .line 191
    .end local v4    # "nameEqual":Z
    :cond_38
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 194
    .restart local v4    # "nameEqual":Z
    :goto_40
    iget-object v5, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v5, :cond_4e

    .line 195
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    if-nez v5, :cond_4c

    const/4 v5, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v5, 0x0

    .local v5, "formatEqual":Z
    :goto_4d
    goto :goto_56

    .line 197
    .end local v5    # "formatEqual":Z
    :cond_4e
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 199
    .restart local v5    # "formatEqual":Z
    :goto_56
    if-eqz v3, :cond_75

    if-eqz v4, :cond_75

    if-eqz v5, :cond_75

    iget-object v6, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 202
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getProcessors()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 203
    invoke-virtual {v2}, Landroidx/test/runner/screenshot/ScreenCapture;->getProcessors()Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    .line 199
    :goto_76
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 68
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFormat()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .line 78
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    return-object v0
.end method

.method getProcessors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 150
    const/16 v0, 0x25

    .line 151
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 152
    .local v1, "result":I
    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    .line 153
    mul-int/lit8 v3, v1, 0x25

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v1, v3, v2

    .line 155
    :cond_f
    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v2, :cond_1b

    .line 156
    mul-int/lit8 v3, v1, 0x25

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->hashCode()I

    move-result v2

    add-int v1, v3, v2

    .line 158
    :cond_1b
    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 159
    mul-int/lit8 v3, v1, 0x25

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v1, v3, v2

    .line 161
    :cond_27
    iget-object v2, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 162
    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 164
    :cond_39
    return v1
.end method

.method public process()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroidx/test/runner/screenshot/ScreenCapture;->process(Ljava/util/Set;)V

    .line 127
    return-void
.end method

.method public process(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processorSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    .local p1, "processorSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/runner/screenshot/ScreenCaptureProcessor;>;"
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    iget-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->defaultProcessor:Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    invoke-interface {v0, p0}, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;->process(Landroidx/test/runner/screenshot/ScreenCapture;)Ljava/lang/String;

    .line 141
    return-void

    .line 143
    :cond_f
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 144
    .local v1, "processor":Landroidx/test/runner/screenshot/ScreenCaptureProcessor;
    invoke-interface {v1, p0}, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;->process(Landroidx/test/runner/screenshot/ScreenCapture;)Ljava/lang/String;

    .line 145
    .end local v1    # "processor":Landroidx/test/runner/screenshot/ScreenCaptureProcessor;
    goto :goto_13

    .line 146
    :cond_23
    return-void
.end method

.method public setFormat(Landroid/graphics/Bitmap$CompressFormat;)Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 2
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->format:Landroid/graphics/Bitmap$CompressFormat;

    .line 100
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Landroidx/test/runner/screenshot/ScreenCapture;->filename:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method setProcessors(Ljava/util/Set;)Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processorSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;)",
            "Landroidx/test/runner/screenshot/ScreenCapture;"
        }
    .end annotation

    .line 109
    .local p1, "processorSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/runner/screenshot/ScreenCaptureProcessor;>;"
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/test/runner/screenshot/ScreenCapture;->processorSet:Ljava/util/Set;

    .line 110
    return-object p0
.end method
