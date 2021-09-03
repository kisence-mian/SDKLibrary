.class public final Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
.super Ljava/lang/Object;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ConcatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$Builder;,
        Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;


# instance fields
.field public final isolateViewTypes:Z

.field public final stableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 355
    new-instance v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;

    sget-object v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;-><init>(ZLtds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V

    sput-object v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;

    return-void
.end method

.method constructor <init>(ZLtds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V
    .registers 3
    .param p1, "isolateViewTypes"    # Z
    .param p2, "stableIdMode"    # Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    .line 359
    iput-object p2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 360
    return-void
.end method
