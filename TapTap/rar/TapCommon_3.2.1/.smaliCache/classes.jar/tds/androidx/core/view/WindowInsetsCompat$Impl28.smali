.class Ltds/androidx/core/view/WindowInsetsCompat$Impl28;
.super Ltds/androidx/core/view/WindowInsetsCompat$Impl21;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl28"
.end annotation


# direct methods
.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 1218
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    .line 1219
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl28;)V
    .registers 3
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    .line 1222
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl21;)V

    .line 1223
    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1234
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1239
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 1240
    :cond_4
    instance-of v0, p1, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1241
    :cond_a
    move-object v0, p1

    check-cast v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;

    .line 1243
    .local v0, "otherImpl28":Ltds/androidx/core/view/WindowInsetsCompat$Impl28;
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    iget-object v2, v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;
    .registers 2

    .line 1228
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/view/DisplayCutoutCompat;->wrap(Ljava/lang/Object;)Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1248
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
