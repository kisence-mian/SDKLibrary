.class synthetic Ltds/androidx/recyclerview/widget/RecyclerView$7;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$tds$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 7770
    invoke-static {}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->values()[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$7;->$SwitchMap$tds$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy:[I

    :try_start_9
    sget-object v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$7;->$SwitchMap$tds$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy:[I

    sget-object v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
