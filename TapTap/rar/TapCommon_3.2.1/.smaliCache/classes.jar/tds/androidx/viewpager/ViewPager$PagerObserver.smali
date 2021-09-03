.class Ltds/androidx/viewpager/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/viewpager/ViewPager;


# direct methods
.method constructor <init>(Ltds/androidx/viewpager/ViewPager;)V
    .registers 2

    .line 2981
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager$PagerObserver;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2982
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 2986
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager$PagerObserver;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-virtual {v0}, Ltds/androidx/viewpager/ViewPager;->dataSetChanged()V

    .line 2987
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .line 2990
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager$PagerObserver;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-virtual {v0}, Ltds/androidx/viewpager/ViewPager;->dataSetChanged()V

    .line 2991
    return-void
.end method
