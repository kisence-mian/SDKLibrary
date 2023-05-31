.class public final Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;
.super Ljava/lang/Object;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsolateViewTypes:Z

.field private mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    sget-object v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method


# virtual methods
.method public build()Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
    .registers 4

    .line 445
    new-instance v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-direct {v0, v1, v2}, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;-><init>(ZLtds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V

    return-object v0
.end method

.method public setIsolateViewTypes(Z)Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;
    .registers 2
    .param p1, "isolateViewTypes"    # Z

    .line 420
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    .line 421
    return-object p0
.end method

.method public setStableIdMode(Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;
    .registers 2
    .param p1, "stableIdMode"    # Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 436
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 437
    return-object p0
.end method
