.class public Ltds/androidx/core/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method public static makeBasic()Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 2

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    .line 248
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 250
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 7
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    .line 124
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 127
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 70
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 73
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 7
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 100
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 103
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    .line 181
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 184
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Ltds/androidx/core/util/Pair;)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ltds/androidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Ltds/androidx/core/app/ActivityOptionsCompat;"
        }
    .end annotation

    .line 208
    .local p1, "sharedElements":[Ltds/androidx/core/util/Pair;, "[Ltds/androidx/core/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2b

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    if-eqz p1, :cond_21

    .line 211
    array-length v1, p1

    new-array v0, v1, [Landroid/util/Pair;

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_21

    .line 213
    aget-object v2, p1, v1

    iget-object v2, v2, Ltds/androidx/core/util/Pair;->first:Ljava/lang/Object;

    aget-object v3, p1, v1

    iget-object v3, v3, Ltds/androidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 217
    .end local v1    # "i":I
    :cond_21
    new-instance v1, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 218
    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    .line 217
    return-object v1

    .line 220
    .end local v0    # "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    :cond_2b
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeTaskLaunchBehind()Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 2

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    .line 236
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 238
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 153
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0

    .line 156
    :cond_10
    new-instance v0, Ltds/androidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Ltds/androidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 376
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Ltds/androidx/core/app/ActivityOptionsCompat;
    .registers 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 316
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Ltds/androidx/core/app/ActivityOptionsCompat;)V
    .registers 2
    .param p1, "otherOptions"    # Ltds/androidx/core/app/ActivityOptionsCompat;

    .line 348
    return-void
.end method
