.class Ltds/androidx/core/view/WindowInsetsCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# static fields
.field static final CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;


# instance fields
.field final mHost:Ltds/androidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 746
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 747
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->build()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->consumeDisplayCutout()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->consumeStableInsets()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 746
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->mHost:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 756
    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 783
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->mHost:Ltds/androidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method consumeStableInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 773
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->mHost:Ltds/androidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method consumeSystemWindowInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 768
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->mHost:Ltds/androidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .registers 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 863
    return-void
.end method

.method copyWindowDataInto(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "other"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 866
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 839
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 840
    :cond_4
    instance-of v1, p1, Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 841
    :cond_a
    move-object v1, p1

    check-cast v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    .line 842
    .local v1, "impl":Ltds/androidx/core/view/WindowInsetsCompat$Impl;
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v3

    invoke-virtual {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v4

    if-ne v3, v4, :cond_4c

    .line 843
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v3

    invoke-virtual {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v4

    if-ne v3, v4, :cond_4c

    .line 844
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v4

    invoke-static {v3, v4}, Ltds/androidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 845
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v4

    invoke-static {v3, v4}, Ltds/androidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 846
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v3

    invoke-virtual {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v4

    invoke-static {v3, v4}, Ltds/androidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 842
    :goto_4d
    return v0
.end method

.method getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;
    .registers 2

    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method getInsets(I)Ltds/androidx/core/graphics/Insets;
    .registers 3
    .param p1, "typeMask"    # I

    .line 821
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method getInsetsIgnoringVisibility(I)Ltds/androidx/core/graphics/Insets;
    .registers 4
    .param p1, "typeMask"    # I

    .line 826
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_7

    .line 829
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0

    .line 827
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to query the maximum insets for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 805
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method getStableInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 793
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method getSystemGestureInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 799
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 788
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method getTappableElementInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 811
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 852
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 853
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 852
    invoke-static {v0}, Ltds/androidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method inset(IIII)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 816
    sget-object v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method isConsumed()Z
    .registers 2

    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method isRound()Z
    .registers 2

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method isVisible(I)Z
    .registers 3
    .param p1, "typeMask"    # I

    .line 833
    const/4 v0, 0x1

    return v0
.end method

.method setRootViewData(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "visibleInsets"    # Ltds/androidx/core/graphics/Insets;

    .line 860
    return-void
.end method

.method setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "rootWindowInsets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 857
    return-void
.end method
