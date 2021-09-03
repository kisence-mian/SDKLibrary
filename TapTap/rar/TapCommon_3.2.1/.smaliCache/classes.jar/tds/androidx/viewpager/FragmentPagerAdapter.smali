.class public abstract Ltds/androidx/viewpager/FragmentPagerAdapter;
.super Ltds/androidx/viewpager/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Ltds/androidx/viewpager/PagerAdapter;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 69
    iput-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 75
    iput-object p1, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 76
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .registers 5
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_c

    .line 134
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 138
    :cond_c
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    move-object v1, p3

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 139
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_f

    .line 167
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 169
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 171
    :cond_f
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_c

    .line 103
    iget-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 106
    :cond_c
    invoke-virtual {p0, p2}, Ltds/androidx/viewpager/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 109
    .local v0, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Ltds/androidx/viewpager/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 111
    .local v3, "fragment":Landroid/app/Fragment;
    if-eqz v3, :cond_26

    .line 113
    iget-object v4, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v3}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3b

    .line 115
    :cond_26
    invoke-virtual {p0, p2}, Ltds/androidx/viewpager/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v3

    .line 117
    iget-object v4, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v0, v1}, Ltds/androidx/viewpager/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v4, v5, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 120
    :goto_3b
    iget-object v4, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v3, v4, :cond_46

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 122
    invoke-static {v3, v4}, Ltds/androidx/viewpager/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 125
    :cond_46
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    move-object v0, p2

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 148
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_1d

    .line 149
    if-eqz v1, :cond_12

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 151
    iget-object v1, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Ltds/androidx/viewpager/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 153
    :cond_12
    if-eqz v0, :cond_1b

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 155
    invoke-static {v0, v1}, Ltds/androidx/viewpager/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 157
    :cond_1b
    iput-object v0, p0, Ltds/androidx/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 159
    :cond_1d
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 94
    return-void

    .line 91
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
