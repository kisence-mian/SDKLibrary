.class Ltds/androidx/core/view/WindowInsetsCompat$Impl30;
.super Ltds/androidx/core/view/WindowInsetsCompat$Impl29;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# static fields
.field static final CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1316
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Ltds/androidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 1319
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    .line 1320
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl30;)V
    .registers 3
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Ltds/androidx/core/view/WindowInsetsCompat$Impl30;

    .line 1323
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl29;)V

    .line 1324
    return-void
.end method


# virtual methods
.method final copyRootViewBounds(Landroid/view/View;)V
    .registers 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 1353
    return-void
.end method

.method public getInsets(I)Ltds/androidx/core/graphics/Insets;
    .registers 4
    .param p1, "typeMask"    # I

    .line 1329
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1330
    invoke-static {p1}, Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1329
    invoke-static {v0}, Ltds/androidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getInsetsIgnoringVisibility(I)Ltds/androidx/core/graphics/Insets;
    .registers 4
    .param p1, "typeMask"    # I

    .line 1337
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1338
    invoke-static {p1}, Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1337
    invoke-static {v0}, Ltds/androidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(I)Z
    .registers 4
    .param p1, "typeMask"    # I

    .line 1344
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {p1}, Ltds/androidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    return v0
.end method
