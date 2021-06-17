.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$SavedState;,
        Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;,
        Landroidx/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 139
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 150
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ft"    # Landroidx/fragment/app/FragmentTransaction;

    .line 403
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-result-object v0

    .line 404
    .local v0, "newTab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eq v1, v0, :cond_55

    .line 405
    if-nez p2, :cond_10

    .line 406
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 409
    :cond_10
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eqz v1, :cond_1f

    .line 410
    iget-object v1, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1f

    .line 411
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    iget-object v1, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 415
    :cond_1f
    if-eqz v0, :cond_53

    .line 416
    iget-object v1, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_4e

    .line 417
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 419
    iget-object v1, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 420
    iget v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    iget-object v2, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v3, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_53

    .line 422
    :cond_4e
    iget-object v1, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 426
    :cond_53
    :goto_53
    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 429
    :cond_55
    return-object p2
.end method

.method private ensureContent()V
    .registers 4

    .line 243
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2c

    .line 244
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 245
    if-eqz v0, :cond_11

    goto :goto_2c

    .line 246
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2c
    :goto_2c
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 166
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 173
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setId(I)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 175
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 180
    .local v4, "fl":Landroid/widget/FrameLayout;
    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 181
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    iput-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 184
    iget v6, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 185
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    .end local v4    # "fl":Landroid/widget/FrameLayout;
    :cond_5b
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;
    .registers 6
    .param p1, "tabId"    # Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v0, v1, :cond_1d

    .line 435
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 436
    .local v2, "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-object v3, v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 437
    return-object v2

    .line 434
    .end local v2    # "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 440
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 160
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 273
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "tag":Ljava/lang/String;
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroidx/fragment/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 276
    .local v1, "info":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-boolean v2, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v2, :cond_39

    .line 280
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 281
    iget-object v2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_39

    iget-object v2, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_39

    .line 282
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 283
    .local v2, "ft":Landroidx/fragment/app/FragmentTransaction;
    iget-object v3, v1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 284
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 288
    .end local v2    # "ft":Landroidx/fragment/app/FragmentTransaction;
    :cond_39
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 290
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "currentTag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 307
    .local v1, "ft":Landroidx/fragment/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_f
    if-ge v2, v3, :cond_4a

    .line 308
    iget-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 309
    .local v4, "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    iget-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 310
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_47

    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_47

    .line 311
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 315
    iput-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    goto :goto_47

    .line 319
    :cond_3a
    if-nez v1, :cond_42

    .line 320
    iget-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 322
    :cond_42
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 307
    .end local v4    # "tab":Landroidx/fragment/app/FragmentTabHost$TabInfo;
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 329
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_4a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 330
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_5b

    .line 332
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 333
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 335
    :cond_5b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 347
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    instance-of v0, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_8

    .line 373
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 374
    return-void

    .line 376
    :cond_8
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentTabHost$SavedState;

    .line 377
    .local v0, "ss":Landroidx/fragment/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 378
    iget-object v1, v0, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 359
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 360
    .local v1, "ss":Landroidx/fragment/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 361
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_e

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 391
    .local v0, "ft":Landroidx/fragment/app/FragmentTransaction;
    if-eqz v0, :cond_e

    .line 392
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 395
    .end local v0    # "ft":Landroidx/fragment/app/FragmentTransaction;
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_15

    .line 396
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 398
    :cond_15
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 261
    return-void
.end method

.method public setup()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroidx/fragment/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 211
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 212
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 214
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 215
    return-void
.end method

.method public setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "containerId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 228
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 229
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 231
    iput p3, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 232
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTabHost;->ensureContent()V

    .line 233
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 238
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTabHost;->setId(I)V

    .line 240
    :cond_21
    return-void
.end method
