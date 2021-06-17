.class public final Landroidx/test/espresso/matcher/HasBackgroundMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "HasBackgroundMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HasBackgroundMatcher"


# instance fields
.field private final drawableId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableId"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 43
    iput p1, p0, Landroidx/test/espresso/matcher/HasBackgroundMatcher;->drawableId:I

    .line 44
    return-void
.end method

.method private static assertDrawable(Landroid/graphics/drawable/Drawable;ILandroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "expectedId",
            "v"
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    if-eqz p0, :cond_58

    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_8

    goto :goto_58

    .line 74
    :cond_8
    const/4 v1, 0x0

    .line 76
    :try_start_9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 77
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xc

    if-lt p1, p2, :cond_2b

    .line 78
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p0
    :try_end_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_25} :catch_3d
    .catchall {:try_start_9 .. :try_end_25} :catchall_3b

    .line 87
    if-eqz v1, :cond_2a

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_2a
    return p0

    .line 80
    :cond_2b
    :try_start_2b
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/test/espresso/matcher/HasBackgroundMatcher;->compareBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result p0
    :try_end_35
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_35} :catch_3d
    .catchall {:try_start_2b .. :try_end_35} :catchall_3b

    .line 87
    if-eqz v1, :cond_3a

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    :cond_3a
    return p0

    .line 87
    :catchall_3b
    move-exception p0

    goto :goto_52

    .line 82
    :catch_3d
    move-exception p0

    .line 83
    :try_start_3e
    const-string p1, "HasBackgroundMatcher"

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_3b

    .line 84
    nop

    .line 87
    if-eqz v1, :cond_51

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    :cond_51
    return v0

    .line 87
    :goto_52
    if-eqz v1, :cond_57

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_57
    throw p0

    .line 71
    :cond_58
    :goto_58
    return v0
.end method

.method static compareBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "img1",
            "img2"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_58

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_58

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [I

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    new-array v10, v1, [I

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 62
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v2, p1

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 64
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 66
    :cond_58
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 53
    iget v0, p0, Landroidx/test/espresso/matcher/HasBackgroundMatcher;->drawableId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "has background with drawable ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 54
    return-void
.end method

.method protected matchesSafely(Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/HasBackgroundMatcher;->drawableId:I

    invoke-static {v0, v1, p1}, Landroidx/test/espresso/matcher/HasBackgroundMatcher;->assertDrawable(Landroid/graphics/drawable/Drawable;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 36
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/HasBackgroundMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
