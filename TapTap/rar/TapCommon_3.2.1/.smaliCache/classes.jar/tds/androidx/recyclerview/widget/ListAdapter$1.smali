.class Ltds/androidx/recyclerview/widget/ListAdapter$1;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ListAdapter;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ListAdapter;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ListAdapter;

    .line 98
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter$1;, "Ltds/androidx/recyclerview/widget/ListAdapter$1;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ListAdapter$1;->this$0:Ltds/androidx/recyclerview/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter$1;, "Ltds/androidx/recyclerview/widget/ListAdapter$1;"
    .local p1, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "currentList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter$1;->this$0:Ltds/androidx/recyclerview/widget/ListAdapter;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/ListAdapter;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    .line 103
    return-void
.end method
