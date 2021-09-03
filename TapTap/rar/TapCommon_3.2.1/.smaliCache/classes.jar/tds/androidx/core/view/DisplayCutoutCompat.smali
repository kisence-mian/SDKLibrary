.class public final Ltds/androidx/core/view/DisplayCutoutCompat;
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
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/view/DisplayCutout;

    invoke-direct {v0, p1, p2}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Ltds/androidx/core/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "displayCutout"    # Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor <init>(Ltds/androidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Ltds/androidx/core/graphics/Insets;)V
    .registers 8
    .param p1, "safeInsets"    # Ltds/androidx/core/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;
    .param p6, "waterfallInsets"    # Ltds/androidx/core/graphics/Insets;

    .line 77
    invoke-static/range {p1 .. p6}, Ltds/androidx/core/view/DisplayCutoutCompat;->constructDisplayCutout(Ltds/androidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Ltds/androidx/core/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/core/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method private static constructDisplayCutout(Ltds/androidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Ltds/androidx/core/graphics/Insets;)Landroid/view/DisplayCutout;
    .registers 14
    .param p0, "safeInsets"    # Ltds/androidx/core/graphics/Insets;
    .param p1, "boundLeft"    # Landroid/graphics/Rect;
    .param p2, "boundTop"    # Landroid/graphics/Rect;
    .param p3, "boundRight"    # Landroid/graphics/Rect;
    .param p4, "boundBottom"    # Landroid/graphics/Rect;
    .param p5, "waterfallInsets"    # Ltds/androidx/core/graphics/Insets;

    .line 84
    invoke-static {}, Ltds/androidx/core/os/BuildCompat;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 85
    new-instance v0, Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 86
    invoke-virtual {p5}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v7

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    .line 85
    return-object v0

    .line 87
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2e

    .line 88
    new-instance v0, Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v3

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    .line 90
    :cond_2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_60

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Ltds/androidx/core/graphics/Insets;->left:I

    iget v2, p0, Ltds/androidx/core/graphics/Insets;->top:I

    iget v3, p0, Ltds/androidx/core/graphics/Insets;->right:I

    iget v4, p0, Ltds/androidx/core/graphics/Insets;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .local v0, "safeInsetRect":Landroid/graphics/Rect;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "boundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    if-eqz p1, :cond_4b

    .line 95
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4b
    if-eqz p2, :cond_50

    .line 98
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_50
    if-eqz p3, :cond_55

    .line 101
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_55
    if-eqz p4, :cond_5a

    .line 104
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_5a
    new-instance v2, Landroid/view/DisplayCutout;

    invoke-direct {v2, v0, v1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    return-object v2

    .line 108
    .end local v0    # "safeInsetRect":Landroid/graphics/Rect;
    .end local v1    # "boundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_60
    const/4 v0, 0x0

    return-object v0
.end method

.method static wrap(Ljava/lang/Object;)Ltds/androidx/core/view/DisplayCutoutCompat;
    .registers 2
    .param p0, "displayCutout"    # Ljava/lang/Object;

    .line 212
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ltds/androidx/core/view/DisplayCutoutCompat;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/DisplayCutoutCompat;-><init>(Ljava/lang/Object;)V

    :goto_9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    if-ne p0, p1, :cond_4

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 197
    :cond_11
    move-object v0, p1

    check-cast v0, Ltds/androidx/core/view/DisplayCutoutCompat;

    .line 198
    .local v0, "other":Ltds/androidx/core/view/DisplayCutoutCompat;
    iget-object v1, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    iget-object v2, v0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    invoke-static {v1, v2}, Ltds/androidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 195
    .end local v0    # "other":Ltds/androidx/core/view/DisplayCutoutCompat;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingRects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 164
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 166
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .registers 3

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 128
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    return v0

    .line 130
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetLeft()I
    .registers 3

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 137
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    return v0

    .line 139
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetRight()I
    .registers 3

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 146
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    return v0

    .line 148
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetTop()I
    .registers 3

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_f

    .line 119
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    return v0

    .line 121
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getWaterfallInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 182
    invoke-static {}, Ltds/androidx/core/os/BuildCompat;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 183
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 185
    :cond_13
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 203
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unwrap()Landroid/view/DisplayCutout;
    .registers 2

    .line 217
    iget-object v0, p0, Ltds/androidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    return-object v0
.end method
