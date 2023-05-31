.class public final Lcom/anythink/myoffer/a/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/a/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/FileDescriptor;)Lcom/anythink/myoffer/a/a/i$a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p0, :cond_5

    move-object v0, v1

    .line 72
    :goto_4
    return-object v0

    .line 53
    :cond_5
    :try_start_5
    new-instance v0, Lcom/anythink/myoffer/a/a/i$a;

    invoke-direct {v0}, Lcom/anythink/myoffer/a/a/i$a;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_33

    .line 56
    :try_start_a
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 58
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 60
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    goto :goto_4

    .line 69
    :catch_2e
    move-exception v1

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_33
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2f
.end method

.method private static a(Ljava/io/FileDescriptor;II)Lcom/anythink/myoffer/a/a/i$a;
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    invoke-static {p0}, Lcom/anythink/myoffer/a/a/i;->a(Ljava/io/FileDescriptor;)Lcom/anythink/myoffer/a/a/i$a;

    move-result-object v0

    .line 105
    if-nez v0, :cond_a

    .line 106
    const/4 v0, 0x0

    .line 125
    :goto_9
    return-object v0

    .line 109
    :cond_a
    iget v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 110
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 112
    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 113
    int-to-float v2, p1

    mul-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 116
    cmpg-float v2, v1, v2

    if-gez v2, :cond_24

    .line 117
    iput p2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 118
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    goto :goto_9

    .line 121
    :cond_24
    iput p1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 122
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/i$a;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 43
    :goto_8
    return-object v0

    .line 24
    :cond_9
    :try_start_9
    new-instance v0, Lcom/anythink/myoffer/a/a/i$a;

    invoke-direct {v0}, Lcom/anythink/myoffer/a/a/i$a;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_37

    .line 27
    :try_start_e
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 29
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 31
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    goto :goto_8

    .line 40
    :catch_32
    move-exception v1

    :goto_33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_37
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_33
.end method

.method private static a(Ljava/lang/String;II)Lcom/anythink/myoffer/a/a/i$a;
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    invoke-static {p0}, Lcom/anythink/myoffer/a/a/i;->a(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/i$a;

    move-result-object v0

    .line 79
    if-nez v0, :cond_a

    .line 80
    const/4 v0, 0x0

    .line 99
    :goto_9
    return-object v0

    .line 83
    :cond_a
    iget v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 84
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 86
    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 87
    int-to-float v2, p1

    mul-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 90
    cmpg-float v2, v1, v2

    if-gez v2, :cond_24

    .line 91
    iput p2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 92
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    goto :goto_9

    .line 95
    :cond_24
    iput p1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 96
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    goto :goto_9
.end method
