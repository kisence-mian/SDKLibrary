.class Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Ltds/androidx/core/view/WindowInsetsCompat;

.field private mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1589
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    check-cast v1, Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 1590
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1594
    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .registers 6

    .line 1638
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    if-eqz v0, :cond_58

    .line 1639
    const/4 v1, 0x1

    invoke-static {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 1640
    .local v0, "statusBars":Ltds/androidx/core/graphics/Insets;
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    const/4 v2, 0x2

    invoke-static {v2}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aget-object v1, v1, v2

    .line 1641
    .local v1, "navigationBars":Ltds/androidx/core/graphics/Insets;
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 1642
    invoke-static {v0, v1}, Ltds/androidx/core/graphics/Insets;->max(Ltds/androidx/core/graphics/Insets;Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V

    goto :goto_2b

    .line 1643
    :cond_20
    if-eqz v0, :cond_26

    .line 1644
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V

    goto :goto_2b

    .line 1645
    :cond_26
    if-eqz v1, :cond_2b

    .line 1646
    invoke-virtual {p0, v1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1649
    :cond_2b
    :goto_2b
    iget-object v2, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    const/16 v3, 0x10

    invoke-static {v3}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v3

    aget-object v2, v2, v3

    .line 1650
    .local v2, "i":Ltds/androidx/core/graphics/Insets;
    if-eqz v2, :cond_3a

    invoke-virtual {p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1652
    :cond_3a
    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    const/16 v4, 0x20

    invoke-static {v4}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v3, v4

    .line 1653
    if-eqz v2, :cond_49

    invoke-virtual {p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1655
    :cond_49
    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    const/16 v4, 0x40

    invoke-static {v4}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v3, v4

    .line 1656
    if-eqz v2, :cond_58

    invoke-virtual {p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1658
    .end local v0    # "statusBars":Ltds/androidx/core/graphics/Insets;
    .end local v1    # "navigationBars":Ltds/androidx/core/graphics/Insets;
    .end local v2    # "i":Ltds/androidx/core/graphics/Insets;
    :cond_58
    return-void
.end method

.method build()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1662
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 1663
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method setDisplayCutout(Ltds/androidx/core/view/DisplayCutoutCompat;)V
    .registers 2
    .param p1, "displayCutout"    # Ltds/androidx/core/view/DisplayCutoutCompat;

    .line 1606
    return-void
.end method

.method setInsets(ILtds/androidx/core/graphics/Insets;)V
    .registers 6
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1610
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    if-nez v0, :cond_a

    .line 1611
    const/16 v0, 0x9

    new-array v0, v0, [Ltds/androidx/core/graphics/Insets;

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    .line 1613
    :cond_a
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1f

    .line 1614
    and-int v1, p1, v0

    if-nez v1, :cond_14

    .line 1615
    goto :goto_1c

    .line 1617
    :cond_14
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Ltds/androidx/core/graphics/Insets;

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aput-object p2, v1, v2

    .line 1613
    :goto_1c
    shl-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1619
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method setInsetsIgnoringVisibility(ILtds/androidx/core/graphics/Insets;)V
    .registers 5
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1622
    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    .line 1628
    return-void

    .line 1625
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ignoring visibility inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMandatorySystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1600
    return-void
.end method

.method setStableInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1604
    return-void
.end method

.method setSystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1598
    return-void
.end method

.method setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1596
    return-void
.end method

.method setTappableElementInsets(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1602
    return-void
.end method

.method setVisible(IZ)V
    .registers 3
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1630
    return-void
.end method
