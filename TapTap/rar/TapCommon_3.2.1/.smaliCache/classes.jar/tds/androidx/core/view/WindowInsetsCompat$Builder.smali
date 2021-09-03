.class public final Ltds/androidx/core/view/WindowInsetsCompat$Builder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 1367
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_34

    .line 1368
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1f

    .line 1369
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_34

    .line 1370
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2d

    .line 1371
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_34

    .line 1373
    :cond_2d
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 1375
    :goto_34
    return-void
.end method

.method public constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 4
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 1384
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_34

    .line 1385
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1f

    .line 1386
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_34

    .line 1387
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2d

    .line 1388
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_34

    .line 1390
    :cond_2d
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 1392
    :goto_34
    return-void
.end method


# virtual methods
.method public build()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1579
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayCutout(Ltds/androidx/core/view/DisplayCutoutCompat;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .param p1, "displayCutout"    # Ltds/androidx/core/view/DisplayCutoutCompat;

    .line 1568
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setDisplayCutout(Ltds/androidx/core/view/DisplayCutoutCompat;)V

    .line 1569
    return-object p0
.end method

.method public setInsets(ILtds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 4
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1490
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsets(ILtds/androidx/core/graphics/Insets;)V

    .line 1491
    return-object p0
.end method

.method public setInsetsIgnoringVisibility(ILtds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 4
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Ltds/androidx/core/graphics/Insets;

    .line 1516
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsetsIgnoringVisibility(ILtds/androidx/core/graphics/Insets;)V

    .line 1517
    return-object p0
.end method

.method public setMandatorySystemGestureInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1453
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1454
    return-object p0
.end method

.method public setStableInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1553
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setStableInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1554
    return-object p0
.end method

.method public setSystemGestureInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1428
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1429
    return-object p0
.end method

.method public setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1408
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1409
    return-object p0
.end method

.method public setTappableElementInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .param p1, "insets"    # Ltds/androidx/core/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1472
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Ltds/androidx/core/graphics/Insets;)V

    .line 1473
    return-object p0
.end method

.method public setVisible(IZ)Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    .registers 4
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1530
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->mImpl:Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$BuilderImpl;->setVisible(IZ)V

    .line 1531
    return-object p0
.end method
