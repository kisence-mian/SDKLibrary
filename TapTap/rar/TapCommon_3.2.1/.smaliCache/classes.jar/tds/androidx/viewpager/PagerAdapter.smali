.class public abstract Ltds/androidx/viewpager/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private final mObservable:Landroid/database/DataSetObservable;

.field private mViewPagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 6
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/viewpager/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 139
    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 266
    const/4 v0, -0x1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageWidth(I)F
    .registers 3
    .param p1, "position"    # I

    .line 328
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 100
    invoke-virtual {p0, p1, p2}, Ltds/androidx/viewpager/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 274
    monitor-enter p0

    .line 275
    :try_start_1
    iget-object v0, p0, Ltds/androidx/viewpager/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_8

    .line 276
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 278
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    .line 279
    iget-object v0, p0, Ltds/androidx/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 280
    return-void

    .line 278
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 288
    iget-object v0, p0, Ltds/androidx/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 248
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/viewpager/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method setViewPagerObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iput-object p1, p0, Ltds/androidx/viewpager/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 303
    monitor-exit p0

    .line 304
    return-void

    .line 303
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "container"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 297
    iget-object v0, p0, Ltds/androidx/viewpager/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 298
    return-void
.end method
