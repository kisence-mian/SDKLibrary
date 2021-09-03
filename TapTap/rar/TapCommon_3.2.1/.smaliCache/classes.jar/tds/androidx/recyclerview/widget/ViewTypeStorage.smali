.class interface abstract Ltds/androidx/recyclerview/widget/ViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;,
        Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
.end method

.method public abstract getWrapperForGlobalType(I)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
.end method
