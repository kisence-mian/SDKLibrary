.class Ltds/androidx/core/view/WindowInsetsCompat$Impl21;
.super Ltds/androidx/core/view/WindowInsetsCompat$Impl20;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation


# instance fields
.field private mStableInsets:Ltds/androidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 4
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 1177
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Ltds/androidx/core/graphics/Insets;

    .line 1178
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl21;)V
    .registers 4
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Ltds/androidx/core/view/WindowInsetsCompat$Impl21;

    .line 1181
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl20;)V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Ltds/androidx/core/graphics/Insets;

    .line 1182
    return-void
.end method


# virtual methods
.method consumeStableInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1192
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method consumeSystemWindowInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1198
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method final getStableInsets()Ltds/androidx/core/graphics/Insets;
    .registers 5

    .line 1204
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Ltds/androidx/core/graphics/Insets;

    if-nez v0, :cond_22

    .line 1205
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1206
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1207
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1208
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1209
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 1205
    invoke-static {v0, v1, v2, v3}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Ltds/androidx/core/graphics/Insets;

    .line 1211
    :cond_22
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method isConsumed()Z
    .registers 2

    .line 1186
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
