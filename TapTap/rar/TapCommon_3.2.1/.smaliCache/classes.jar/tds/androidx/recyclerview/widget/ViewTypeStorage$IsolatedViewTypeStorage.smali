.class public Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ViewTypeStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsolatedViewTypeStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
    }
.end annotation


# instance fields
.field mGlobalTypeToWrapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mNextViewType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    return-void
.end method


# virtual methods
.method public createViewTypeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .registers 3
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 147
    new-instance v0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;

    invoke-direct {v0, p0, p1}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;-><init>(Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-object v0
.end method

.method public getWrapperForGlobalType(I)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .registers 6
    .param p1, "globalViewType"    # I

    .line 134
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 136
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-eqz v0, :cond_b

    .line 140
    return-object v0

    .line 137
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the wrapper for global view type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method obtainViewType(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I
    .registers 4
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 126
    iget v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    .line 127
    .local v0, "nextId":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    return v0
.end method

.method removeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V
    .registers 5
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 151
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 152
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 153
    .local v1, "existingWrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-ne v1, p1, :cond_19

    .line 154
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 151
    .end local v1    # "existingWrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 157
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method
