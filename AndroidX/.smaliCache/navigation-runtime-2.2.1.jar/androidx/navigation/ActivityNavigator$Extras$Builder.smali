.class public final Landroidx/navigation/ActivityNavigator$Extras$Builder;
.super Ljava/lang/Object;
.source "ActivityNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/ActivityNavigator$Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActivityOptions:Landroidx/core/app/ActivityOptionsCompat;

.field private mFlags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFlags(I)Landroidx/navigation/ActivityNavigator$Extras$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 484
    iget v0, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mFlags:I

    .line 485
    return-object p0
.end method

.method public build()Landroidx/navigation/ActivityNavigator$Extras;
    .registers 4

    .line 508
    new-instance v0, Landroidx/navigation/ActivityNavigator$Extras;

    iget v1, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mFlags:I

    iget-object v2, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mActivityOptions:Landroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/ActivityNavigator$Extras;-><init>(ILandroidx/core/app/ActivityOptionsCompat;)V

    return-object v0
.end method

.method public setActivityOptions(Landroidx/core/app/ActivityOptionsCompat;)Landroidx/navigation/ActivityNavigator$Extras$Builder;
    .registers 2
    .param p1, "activityOptions"    # Landroidx/core/app/ActivityOptionsCompat;

    .line 497
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator$Extras$Builder;->mActivityOptions:Landroidx/core/app/ActivityOptionsCompat;

    .line 498
    return-object p0
.end method
