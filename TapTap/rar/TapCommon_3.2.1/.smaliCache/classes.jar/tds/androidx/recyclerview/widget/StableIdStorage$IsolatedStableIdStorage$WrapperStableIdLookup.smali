.class Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperStableIdLookup"
.end annotation


# instance fields
.field private final mLocalToGlobalLookup:Ltds/androidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/collection/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;)V
    .registers 3
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;

    .line 92
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->this$0:Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ltds/androidx/collection/LongSparseArray;

    invoke-direct {v0}, Ltds/androidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Ltds/androidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .registers 6
    .param p1, "localId"    # J

    .line 97
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 98
    .local v0, "globalId":Ljava/lang/Long;
    if-nez v0, :cond_19

    .line 99
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->this$0:Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->obtainId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 100
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Ltds/androidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 102
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method
