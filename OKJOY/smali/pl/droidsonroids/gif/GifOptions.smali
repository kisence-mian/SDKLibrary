.class public Lpl/droidsonroids/gif/GifOptions;
.super Ljava/lang/Object;
.source "GifOptions.java"


# instance fields
.field inIsOpaque:Z

.field inSampleSize:C


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifOptions;->reset()V

    .line 17
    return-void
.end method

.method private reset()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-char v0, p0, Lpl/droidsonroids/gif/GifOptions;->inSampleSize:C

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifOptions;->inIsOpaque:Z

    .line 22
    return-void
.end method


# virtual methods
.method setFrom(Lpl/droidsonroids/gif/GifOptions;)V
    .registers 3
    .param p1, "source"    # Lpl/droidsonroids/gif/GifOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    if-nez p1, :cond_6

    .line 64
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifOptions;->reset()V

    .line 69
    :goto_5
    return-void

    .line 66
    :cond_6
    iget-boolean v0, p1, Lpl/droidsonroids/gif/GifOptions;->inIsOpaque:Z

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifOptions;->inIsOpaque:Z

    .line 67
    iget-char v0, p1, Lpl/droidsonroids/gif/GifOptions;->inSampleSize:C

    iput-char v0, p0, Lpl/droidsonroids/gif/GifOptions;->inSampleSize:C

    goto :goto_5
.end method

.method public setInIsOpaque(Z)V
    .registers 2
    .param p1, "inIsOpaque"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifOptions;->inIsOpaque:Z

    .line 60
    return-void
.end method

.method public setInSampleSize(I)V
    .registers 4
    .param p1, "inSampleSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0xffffL
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 38
    if-lt p1, v1, :cond_8

    const v0, 0xffff

    if-le p1, v0, :cond_b

    .line 39
    :cond_8
    iput-char v1, p0, Lpl/droidsonroids/gif/GifOptions;->inSampleSize:C

    .line 43
    :goto_a
    return-void

    .line 41
    :cond_b
    int-to-char v0, p1

    iput-char v0, p0, Lpl/droidsonroids/gif/GifOptions;->inSampleSize:C

    goto :goto_a
.end method
