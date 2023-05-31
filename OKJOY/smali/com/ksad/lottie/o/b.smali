.class public Lcom/ksad/lottie/o/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/ksad/lottie/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ksad/lottie/o/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/ksad/lottie/b;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/g;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x2f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ksad/lottie/o/b;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/ksad/lottie/o/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ksad/lottie/o/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/o/b;->b:Ljava/lang/String;

    :cond_30
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_46

    const-string v0, "LOTTIE"

    const-string v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/o/b;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/o/b;->a:Landroid/content/Context;

    :goto_45
    return-void

    :cond_46
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/o/b;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/ksad/lottie/o/b;->d:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/ksad/lottie/o/b;->a(Lcom/ksad/lottie/b;)V

    goto :goto_45
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v1, Lcom/ksad/lottie/o/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ksad/lottie/o/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/g;

    invoke-virtual {v0, p2}, Lcom/ksad/lottie/g;->a(Landroid/graphics/Bitmap;)V

    monitor-exit v1

    return-object p2

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/o/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/g;

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {v0}, Lcom/ksad/lottie/g;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object v0, v2

    goto :goto_d

    :cond_16
    iget-object v2, p0, Lcom/ksad/lottie/o/b;->c:Lcom/ksad/lottie/b;

    if-eqz v2, :cond_24

    invoke-interface {v2, v0}, Lcom/ksad/lottie/b;->a(Lcom/ksad/lottie/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, v0}, Lcom/ksad/lottie/o/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_24
    invoke-virtual {v0}, Lcom/ksad/lottie/g;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v3, 0xa0

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v3, "data:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    const-string v3, "base64,"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_69

    const/16 v3, 0x2c

    :try_start_46
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_54} :catch_5f

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ksad/lottie/o/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d

    :catch_5f
    move-exception v0

    const-string v2, "LOTTIE"

    const-string v3, "data URL did not have correct base64 format."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_d

    :cond_69
    :try_start_69
    iget-object v3, p0, Lcom/ksad/lottie/o/b;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_98

    iget-object v3, p0, Lcom/ksad/lottie/o/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ksad/lottie/o/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_8d} :catch_a0

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ksad/lottie/o/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_d

    :cond_98
    :try_start_98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_a0

    :catch_a0
    move-exception v0

    const-string v2, "LOTTIE"

    const-string v3, "Unable to open asset."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_d
.end method

.method public a()V
    .registers 5

    sget-object v1, Lcom/ksad/lottie/o/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/ksad/lottie/o/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/g;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/ksad/lottie/g;->a(Landroid/graphics/Bitmap;)V

    goto :goto_d

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    return-void
.end method

.method public a(Lcom/ksad/lottie/b;)V
    .registers 2
    .param p1    # Lcom/ksad/lottie/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ksad/lottie/o/b;->c:Lcom/ksad/lottie/b;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/ksad/lottie/o/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_e

    :cond_6
    iget-object v0, p0, Lcom/ksad/lottie/o/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
