.class Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;
.super Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl29"
.end annotation


# instance fields
.field final mPlatBuilder:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1754
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1755
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1756
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1758
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1759
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1760
    .local v0, "platInsets":Landroid/view/WindowInsets;
    new-instance v1, Landroid/view/WindowInsets$Builder;

    if-eqz v0, :cond_f

    invoke-direct {v1, v0}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_12

    :cond_f
    invoke-direct {v1}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_12
    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1763
    return-void
.end method


# virtual methods
.method build()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1798
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->applyInsetTypes()V

    .line 1799
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method setDisplayCutout(Ltds/androidx/core/view/DisplayCutoutCompat;)V
    .registers 4
    .param p1, "displayCutout"    # Ltds/androidx/core/view/DisplayCutoutCompat;

    .line 1792
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ltds/androidx/core/view/DisplayCutoutCompat;->unwrap()Landroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    .line 1793
    return-void
.end method

.method setMandatorySystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1777
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1778
    return-void
.end method

.method setStableInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1787
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1788
    return-void
.end method

.method setSystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1772
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1773
    return-void
.end method

.method setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1767
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1768
    return-void
.end method

.method setTappableElementInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1782
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1783
    return-void
.end method
