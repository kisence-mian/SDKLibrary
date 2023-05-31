.class public final Landroid/support/v4/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# instance fields
.field private final mDisplayCutout:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 5
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    new-instance v0, Landroid/view/DisplayCutout;

    invoke-direct {v0, p1, p2}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    :goto_b
    invoke-direct {p0, v0}, Landroid/support/v4/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    .line 47
    return-void

    .line 46
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "displayCutout"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static wrap(Ljava/lang/Object;)Landroid/support/v4/view/DisplayCutoutCompat;
    .registers 2
    .param p0, "displayCutout"    # Ljava/lang/Object;

    .prologue
    .line 130
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/support/v4/view/DisplayCutoutCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_5

    .line 116
    :cond_4
    :goto_4
    return v1

    .line 111
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 112
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 114
    check-cast v0, Landroid/support/v4/view/DisplayCutoutCompat;

    .line 115
    .local v0, "other":Landroid/support/v4/view/DisplayCutoutCompat;
    iget-object v3, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-nez v3, :cond_20

    iget-object v3, v0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_20
    iget-object v1, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    iget-object v2, v0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getBoundingRects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 100
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 102
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSafeInsetBottom()I
    .registers 3

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 65
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    .line 67
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSafeInsetLeft()I
    .registers 3

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 74
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 76
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSafeInsetRight()I
    .registers 3

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 83
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    .line 85
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSafeInsetTop()I
    .registers 3

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 56
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    .line 58
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
