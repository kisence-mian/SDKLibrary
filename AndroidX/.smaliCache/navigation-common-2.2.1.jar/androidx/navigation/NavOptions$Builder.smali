.class public final Landroidx/navigation/NavOptions$Builder;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mEnterAnim:I

.field mExitAnim:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mPopUpTo:I

.field mPopUpToInclusive:Z

.field mSingleTop:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpTo:I

    .line 131
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mEnterAnim:I

    .line 133
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mExitAnim:I

    .line 135
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mPopEnterAnim:I

    .line 137
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mPopExitAnim:I

    .line 141
    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/NavOptions;
    .registers 10

    .line 236
    new-instance v8, Landroidx/navigation/NavOptions;

    iget-boolean v1, p0, Landroidx/navigation/NavOptions$Builder;->mSingleTop:Z

    iget v2, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpTo:I

    iget-boolean v3, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpToInclusive:Z

    iget v4, p0, Landroidx/navigation/NavOptions$Builder;->mEnterAnim:I

    iget v5, p0, Landroidx/navigation/NavOptions$Builder;->mExitAnim:I

    iget v6, p0, Landroidx/navigation/NavOptions$Builder;->mPopEnterAnim:I

    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->mPopExitAnim:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/NavOptions;-><init>(ZIZIIII)V

    return-object v8
.end method

.method public setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;
    .registers 2
    .param p1, "enterAnim"    # I

    .line 183
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mEnterAnim:I

    .line 184
    return-object p0
.end method

.method public setExitAnim(I)Landroidx/navigation/NavOptions$Builder;
    .registers 2
    .param p1, "exitAnim"    # I

    .line 197
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mExitAnim:I

    .line 198
    return-object p0
.end method

.method public setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;
    .registers 2
    .param p1, "singleTop"    # Z

    .line 152
    iput-boolean p1, p0, Landroidx/navigation/NavOptions$Builder;->mSingleTop:Z

    .line 153
    return-object p0
.end method

.method public setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;
    .registers 2
    .param p1, "popEnterAnim"    # I

    .line 212
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mPopEnterAnim:I

    .line 213
    return-object p0
.end method

.method public setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;
    .registers 2
    .param p1, "popExitAnim"    # I

    .line 227
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mPopExitAnim:I

    .line 228
    return-object p0
.end method

.method public setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;
    .registers 3
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z

    .line 168
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpTo:I

    .line 169
    iput-boolean p2, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpToInclusive:Z

    .line 170
    return-object p0
.end method
