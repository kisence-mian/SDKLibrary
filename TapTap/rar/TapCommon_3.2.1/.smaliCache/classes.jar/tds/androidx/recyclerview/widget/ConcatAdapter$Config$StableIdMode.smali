.class public final enum Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
.super Ljava/lang/Enum;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StableIdMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum ISOLATED_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum NO_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum SHARED_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 372
    new-instance v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    const-string v1, "NO_STABLE_IDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 386
    new-instance v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    const-string v3, "ISOLATED_STABLE_IDS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 397
    new-instance v3, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    const-string v5, "SHARED_STABLE_IDS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 365
    const/4 v5, 0x3

    new-array v5, v5, [Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->$VALUES:[Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 365
    const-class v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-object v0
.end method

.method public static values()[Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    .registers 1

    .line 365
    sget-object v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->$VALUES:[Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-virtual {v0}, [Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-object v0
.end method
