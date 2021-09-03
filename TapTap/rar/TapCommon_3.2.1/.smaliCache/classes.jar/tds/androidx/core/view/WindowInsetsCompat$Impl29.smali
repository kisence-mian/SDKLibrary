.class Ltds/androidx/core/view/WindowInsetsCompat$Impl29;
.super Ltds/androidx/core/view/WindowInsetsCompat$Impl28;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl29"
.end annotation


# instance fields
.field private mMandatorySystemGestureInsets:Ltds/androidx/core/graphics/Insets;

.field private mSystemGestureInsets:Ltds/androidx/core/graphics/Insets;

.field private mTappableElementInsets:Ltds/androidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 4
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 1260
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    .line 1255
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    .line 1256
    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    .line 1257
    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Ltds/androidx/core/graphics/Insets;

    .line 1261
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl29;)V
    .registers 4
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Ltds/androidx/core/view/WindowInsetsCompat$Impl29;

    .line 1264
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl28;)V

    .line 1255
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    .line 1256
    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    .line 1257
    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Ltds/androidx/core/graphics/Insets;

    .line 1265
    return-void
.end method


# virtual methods
.method getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 1279
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    if-nez v0, :cond_10

    .line 1280
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1281
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    .line 1283
    :cond_10
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method getSystemGestureInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 1270
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    if-nez v0, :cond_10

    .line 1271
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    .line 1273
    :cond_10
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method getTappableElementInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 1289
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Ltds/androidx/core/graphics/Insets;

    if-nez v0, :cond_10

    .line 1290
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Ltds/androidx/core/graphics/Insets;

    .line 1292
    :cond_10
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method inset(IIII)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1298
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
