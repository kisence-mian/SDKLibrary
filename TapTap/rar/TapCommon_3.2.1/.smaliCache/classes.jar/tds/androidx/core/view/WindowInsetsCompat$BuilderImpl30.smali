.class Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;
.super Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl30"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1806
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    .line 1807
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1810
    invoke-direct {p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 1811
    return-void
.end method


# virtual methods
.method setInsets(ILtds/androidx/core/graphics/Insets;)V
    .registers 6
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1815
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1816
    invoke-static {p1}, Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    .line 1817
    invoke-virtual {p2}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 1815
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1819
    return-void
.end method

.method setInsetsIgnoringVisibility(ILtds/androidx/core/graphics/Insets;)V
    .registers 6
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1823
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1824
    invoke-static {p1}, Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    .line 1825
    invoke-virtual {p2}, Ltds/androidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 1823
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 1827
    return-void
.end method

.method setVisible(IZ)V
    .registers 5
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1831
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowInsets$Builder;->setVisible(IZ)Landroid/view/WindowInsets$Builder;

    .line 1832
    return-void
.end method
