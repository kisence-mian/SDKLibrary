.class public final Lcom/anythink/basead/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/a/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/FileDescriptor;)Lcom/anythink/basead/a/a/e$a;
    .registers 4

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 56
    return-object v0

    .line 58
    :cond_4
    nop

    .line 60
    :try_start_5
    new-instance v1, Lcom/anythink/basead/a/a/e$a;

    invoke-direct {v1}, Lcom/anythink/basead/a/a/e$a;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_31

    .line 63
    :try_start_a
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 67
    const/16 p0, 0x12

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 69
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/anythink/basead/a/a/e$a;->b:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    .line 77
    goto :goto_36

    .line 76
    :catch_2e
    move-exception p0

    move-object v0, v1

    goto :goto_32

    :catch_31
    move-exception p0

    :goto_32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 79
    :goto_36
    return-object v1
.end method

.method private static a(Ljava/io/FileDescriptor;II)Lcom/anythink/basead/a/a/e$a;
    .registers 6

    .line 111
    invoke-static {p0}, Lcom/anythink/basead/a/a/e;->a(Ljava/io/FileDescriptor;)Lcom/anythink/basead/a/a/e$a;

    move-result-object p0

    .line 112
    if-nez p0, :cond_8

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_8
    iget v0, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 117
    iget v1, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 119
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 120
    int-to-float v1, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 123
    cmpg-float v1, v0, v1

    if-gez v1, :cond_24

    .line 124
    iput p2, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 125
    iget p1, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    goto :goto_2d

    .line 128
    :cond_24
    iput p1, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 129
    iget p1, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 132
    :goto_2d
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/basead/a/a/e$a;
    .registers 4

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 27
    return-object v1

    .line 29
    :cond_8
    nop

    .line 31
    :try_start_9
    new-instance v0, Lcom/anythink/basead/a/a/e$a;

    invoke-direct {v0}, Lcom/anythink/basead/a/a/e$a;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_35

    .line 34
    :try_start_e
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 36
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 38
    const/16 p0, 0x12

    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 40
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/anythink/basead/a/a/e$a;->b:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    .line 48
    goto :goto_3a

    .line 47
    :catch_32
    move-exception p0

    move-object v1, v0

    goto :goto_36

    :catch_35
    move-exception p0

    :goto_36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 50
    :goto_3a
    return-object v0
.end method

.method private static a(Ljava/lang/String;II)Lcom/anythink/basead/a/a/e$a;
    .registers 6

    .line 85
    invoke-static {p0}, Lcom/anythink/basead/a/a/e;->a(Ljava/lang/String;)Lcom/anythink/basead/a/a/e$a;

    move-result-object p0

    .line 86
    if-nez p0, :cond_8

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_8
    iget v0, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 91
    iget v1, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 93
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 94
    int-to-float v1, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 97
    cmpg-float v1, v0, v1

    if-gez v1, :cond_24

    .line 98
    iput p2, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 99
    iget p1, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    goto :goto_2d

    .line 102
    :cond_24
    iput p1, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 103
    iget p1, p0, Lcom/anythink/basead/a/a/e$a;->a:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 106
    :goto_2d
    return-object p0
.end method
