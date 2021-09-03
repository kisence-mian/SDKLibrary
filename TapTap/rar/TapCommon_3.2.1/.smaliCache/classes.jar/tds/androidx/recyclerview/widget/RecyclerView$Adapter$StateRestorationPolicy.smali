.class public final enum Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
.super Ljava/lang/Enum;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateRestorationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum ALLOW:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT_WHEN_EMPTY:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7789
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7794
    new-instance v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v3, "PREVENT_WHEN_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7800
    new-instance v3, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v5, "PREVENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7784
    const/4 v5, 0x3

    new-array v5, v5, [Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7784
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7784
    const-class v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method public static values()[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .registers 1

    .line 7784
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v0}, [Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method
