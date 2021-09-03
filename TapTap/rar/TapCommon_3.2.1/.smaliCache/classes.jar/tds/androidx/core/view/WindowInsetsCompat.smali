.class public Ltds/androidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;,
        Ltds/androidx/core/view/WindowInsetsCompat$Type;,
        Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;,
        Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;,
        Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;,
        Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;,
        Ltds/androidx/core/view/WindowInsetsCompat$Builder;,
        Ltds/androidx/core/view/WindowInsetsCompat$Impl30;,
        Ltds/androidx/core/view/WindowInsetsCompat$Impl29;,
        Ltds/androidx/core/view/WindowInsetsCompat$Impl28;,
        Ltds/androidx/core/view/WindowInsetsCompat$Impl21;,
        Ltds/androidx/core/view/WindowInsetsCompat$Impl20;,
        Ltds/androidx/core/view/WindowInsetsCompat$Impl;
    }
.end annotation


# static fields
.field public static final CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

.field private static final TAG:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 79
    sget-object v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    sput-object v0, Ltds/androidx/core/view/WindowInsetsCompat;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    goto :goto_f

    .line 81
    :cond_b
    sget-object v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    sput-object v0, Ltds/androidx/core/view/WindowInsetsCompat;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 83
    :goto_f
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 90
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v0, p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_50

    .line 91
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1f

    .line 92
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v0, p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_50

    .line 93
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2d

    .line 94
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v0, p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_50

    .line 95
    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3b

    .line 96
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v0, p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_50

    .line 97
    :cond_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_49

    .line 98
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    invoke-direct {v0, p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_50

    .line 100
    :cond_49
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    .line 102
    :goto_50
    return-void
.end method

.method public constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 5
    .param p1, "src"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_7b

    .line 112
    iget-object v0, p1, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    .line 113
    .local v0, "srcImpl":Ltds/androidx/core/view/WindowInsetsCompat$Impl;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1c

    instance-of v1, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;

    if-eqz v1, :cond_1c

    .line 114
    new-instance v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;

    move-object v2, v0

    check-cast v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v1, p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl30;)V

    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_77

    .line 115
    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_31

    instance-of v1, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;

    if-eqz v1, :cond_31

    .line 116
    new-instance v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;

    move-object v2, v0

    check-cast v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v1, p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl29;)V

    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_77

    .line 117
    :cond_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_46

    instance-of v1, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    if-eqz v1, :cond_46

    .line 118
    new-instance v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    move-object v2, v0

    check-cast v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v1, p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl28;)V

    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_77

    .line 119
    :cond_46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5b

    instance-of v1, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;

    if-eqz v1, :cond_5b

    .line 120
    new-instance v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;

    move-object v2, v0

    check-cast v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v1, p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl21;)V

    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_77

    .line 121
    :cond_5b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_70

    instance-of v1, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v1, :cond_70

    .line 122
    new-instance v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    move-object v2, v0

    check-cast v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    invoke-direct {v1, p0, v2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl20;)V

    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_77

    .line 124
    :cond_70
    new-instance v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v1, p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    .line 126
    :goto_77
    invoke-virtual {v0, p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->copyWindowDataInto(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 127
    .end local v0    # "srcImpl":Ltds/androidx/core/view/WindowInsetsCompat$Impl;
    goto :goto_82

    .line 129
    :cond_7b
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    .line 131
    :goto_82
    return-void
.end method

.method static insetInsets(Ltds/androidx/core/graphics/Insets;IIII)Ltds/androidx/core/graphics/Insets;
    .registers 10
    .param p0, "insets"    # Ltds/androidx/core/graphics/Insets;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1303
    iget v0, p0, Ltds/androidx/core/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1304
    .local v0, "newLeft":I
    iget v2, p0, Ltds/androidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1305
    .local v2, "newTop":I
    iget v3, p0, Ltds/androidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1306
    .local v3, "newRight":I
    iget v4, p0, Ltds/androidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1307
    .local v1, "newBottom":I
    if-ne v0, p1, :cond_26

    if-ne v2, p2, :cond_26

    if-ne v3, p3, :cond_26

    if-ne v1, p4, :cond_26

    .line 1308
    return-object p0

    .line 1310
    :cond_26
    invoke-static {v0, v2, v3, v1}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v4

    return-object v4
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2
    .param p0, "insets"    # Landroid/view/WindowInsets;

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p0, "insets"    # Landroid/view/WindowInsets;
    .param p1, "view"    # Landroid/view/View;

    .line 168
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-static {p0}, Ltds/androidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;)V

    .line 169
    .local v0, "wic":Ltds/androidx/core/view/WindowInsetsCompat;
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 171
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    .line 175
    :cond_21
    return-object v0
.end method


# virtual methods
.method public consumeDisplayCutout()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->consumeDisplayCutout()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeStableInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->consumeStableInsets()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeSystemWindowInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .registers 3
    .param p1, "rootView"    # Landroid/view/View;

    .line 2052
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->copyRootViewBounds(Landroid/view/View;)V

    .line 2053
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 718
    if-ne p0, p1, :cond_4

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_4
    instance-of v0, p1, Ltds/androidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_a

    .line 722
    const/4 v0, 0x0

    return v0

    .line 724
    :cond_a
    move-object v0, p1

    check-cast v0, Ltds/androidx/core/view/WindowInsetsCompat;

    .line 725
    .local v0, "other":Ltds/androidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    iget-object v2, v0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-static {v1, v2}, Ltds/androidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;
    .registers 2

    .line 490
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public getInsets(I)Ltds/androidx/core/graphics/Insets;
    .registers 3
    .param p1, "typeMask"    # I

    .line 668
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getInsetsIgnoringVisibility(I)Ltds/androidx/core/graphics/Insets;
    .registers 3
    .param p1, "typeMask"    # I

    .line 696
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getStableInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method public getStableInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->left:I

    return v0
.end method

.method public getStableInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->right:I

    return v0
.end method

.method public getStableInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->top:I

    return v0
.end method

.method public getStableInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemGestureInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemGestureInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->left:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->right:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Ltds/androidx/core/graphics/Insets;->top:I

    return v0
.end method

.method public getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTappableElementInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getTappableElementInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hasInsets()Z
    .registers 3

    .line 267
    invoke-static {}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getInsets(I)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ltds/androidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 268
    invoke-static {}, Ltds/androidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ltds/androidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 269
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 267
    :goto_2a
    return v0
.end method

.method public hasStableInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ltds/androidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ltds/androidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 730
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public inset(IIII)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 651
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public inset(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 626
    iget v0, p1, Ltds/androidx/core/graphics/Insets;->left:I

    iget v1, p1, Ltds/androidx/core/graphics/Insets;->top:I

    iget v2, p1, Ltds/androidx/core/graphics/Insets;->right:I

    iget v3, p1, Ltds/androidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Ltds/androidx/core/view/WindowInsetsCompat;->inset(IIII)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public isConsumed()Z
    .registers 2

    .line 286
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .registers 2

    .line 302
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v0

    return v0
.end method

.method public isVisible(I)Z
    .registers 3
    .param p1, "typeMask"    # I

    .line 713
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 341
    invoke-static {p1, p2, p3, p4}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->build()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 340
    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 361
    invoke-static {p1}, Ltds/androidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->build()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 360
    return-object v0
.end method

.method setRootViewData(Ltds/androidx/core/graphics/Insets;)V
    .registers 3
    .param p1, "visibleInsets"    # Ltds/androidx/core/graphics/Insets;

    .line 2048
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->setRootViewData(Ltds/androidx/core/graphics/Insets;)V

    .line 2049
    return-void
.end method

.method setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 3
    .param p1, "rootWindowInsets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 2044
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;->setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 2045
    return-void
.end method

.method public toWindowInsets()Landroid/view/WindowInsets;
    .registers 3

    .line 741
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$Impl;

    instance-of v1, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v1, :cond_b

    check-cast v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    iget-object v0, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
