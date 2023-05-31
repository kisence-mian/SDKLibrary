.class public Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;
.super Lcom/JoyFramework/module/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;
    }
.end annotation


# static fields
.field public static final ICON_LIST:Ljava/lang/String; = "icon_list"


# instance fields
.field private isVideoTypePlaying:Z

.field private mIvClose:Landroid/widget/ImageView;

.field private mIvShowResource:Landroid/widget/ImageView;

.field private mMoreGameItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/MoreGameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mShowingCurrentPosition:I

.field private mTvContentDescription:Landroid/widget/TextView;

.field private mTvOpenToDownLoad:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/VideoView;

.field private mViewPagerLayoutManager:Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/JoyFramework/module/BaseActivity;-><init>()V

    .line 56
    iput v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    .line 61
    iput-boolean v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->isVideoTypePlaying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;I)I
    .registers 2

    .prologue
    .line 44
    iput p1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mViewPagerLayoutManager:Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)Landroid/widget/VideoView;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method public static getLocalBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 288
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 295
    :goto_9
    return-object v0

    .line 290
    :catch_a
    move-exception v0

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 293
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isShowDownLoadButton(Lcom/JoyFramework/remote/bean/MoreGameItem;)V
    .registers 4

    .prologue
    .line 270
    if-eqz p1, :cond_13

    .line 271
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/MoreGameItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 273
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvOpenToDownLoad:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :cond_13
    :goto_13
    return-void

    .line 275
    :cond_14
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvOpenToDownLoad:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13
.end method

.method private setDataToRecyclerView(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {p0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mViewPagerLayoutManager:Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mViewPagerLayoutManager:Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->setMoveSpeed(F)V

    .line 106
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;

    invoke-direct {v0, p1}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;-><init>(Ljava/util/List;)V

    .line 107
    new-instance v1, Lcom/JoyFramework/module/user/fragment/account/i;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/user/fragment/account/i;-><init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter;->setOnItemClickListener(Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 123
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mViewPagerLayoutManager:Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;

    invoke-direct {v1, p0, p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;-><init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->showPicOrVideo()V

    .line 127
    return-void
.end method


# virtual methods
.method public getContentViewId()I
    .registers 3

    .prologue
    .line 301
    const-string v0, "joy_activity_more_game"

    .line 302
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->isPortraitOrientation()Z

    move-result v1

    if-nez v1, :cond_a

    .line 303
    const-string v0, "joy_activity_more_game_landscape"

    .line 305
    :cond_a
    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 158
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    iget v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameItem;

    .line 159
    if-eqz v0, :cond_39

    .line 160
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 162
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 164
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    :cond_39
    :goto_39
    return-void

    .line 169
    :cond_3a
    new-array v1, v2, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_39

    .line 172
    :cond_40
    const-string v0, "\u6682\u65e0\u4e0b\u8f7d"

    new-array v1, v2, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_39
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Lcom/JoyFramework/d/a;->a(Landroid/app/Activity;)V

    .line 72
    invoke-static {p0}, Lcom/JoyFramework/d/aj;->a(Landroid/content/Context;)Lcom/JoyFramework/d/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/d/aj;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    .line 74
    const-string v0, "id_more_game_video"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    .line 76
    const-string v0, "id_more_game_description"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvContentDescription:Landroid/widget/TextView;

    .line 77
    const-string v0, "id_more_game_title"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvTitle:Landroid/widget/TextView;

    .line 78
    const-string v0, "id_more_game_open"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvOpenToDownLoad:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvOpenToDownLoad:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const-string v0, "id_more_game_close"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvClose:Landroid/widget/ImageView;

    .line 81
    const-string v0, "id_more_game_picture"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvShowResource:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_more_game_recyclerView"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/JoyFramework/module/user/fragment/account/h;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/user/fragment/account/h;-><init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-static {p0}, Lcom/JoyFramework/d/aj;->a(Landroid/content/Context;)Lcom/JoyFramework/d/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/d/aj;->d()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_98

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_98

    .line 94
    invoke-direct {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->setDataToRecyclerView(Ljava/util/List;)V

    .line 100
    :cond_98
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 345
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 346
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->finish()V

    .line 350
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->finish()V

    .line 352
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/JoyFramework/module/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0

    .line 348
    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onResume()V

    .line 311
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 312
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 313
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->isVideoTypePlaying:Z

    if-eqz v0, :cond_1b

    .line 314
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1b

    .line 315
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 318
    :cond_1b
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/JoyFramework/module/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 338
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/JoyFramework/module/BaseActivity;->onStop()V

    .line 328
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->isVideoTypePlaying:Z

    if-eqz v0, :cond_18

    .line 329
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 330
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 333
    :cond_18
    return-void
.end method

.method public showPicOrVideo()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 180
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mMoreGameItemList:Ljava/util/List;

    iget v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameItem;

    .line 181
    if-nez v0, :cond_1c

    .line 263
    :cond_1b
    :goto_1b
    return-void

    .line 183
    :cond_1c
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->f()I

    move-result v1

    if-nez v1, :cond_6d

    .line 184
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :goto_27
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->c()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 191
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvContentDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_36
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->b()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 195
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_45
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->d()Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_1b

    .line 200
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 203
    const-string v0, "\u6587\u4ef6\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    new-array v1, v4, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 204
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvShowResource:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    .line 186
    :cond_6d
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_27

    .line 209
    :cond_73
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->e()Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    move-result-object v3

    .line 210
    invoke-direct {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->isShowDownLoadButton(Lcom/JoyFramework/remote/bean/MoreGameItem;)V

    .line 211
    sget-object v0, Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;->b:Lcom/JoyFramework/remote/bean/MoreGameItem$MoreGameItemType;

    if-ne v3, v0, :cond_cc

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 214
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvShowResource:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 217
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/JoyFramework/module/user/fragment/account/j;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/account/j;-><init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 227
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/JoyFramework/module/user/fragment/account/k;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/account/k;-><init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 235
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 237
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->isVideoTypePlaying:Z

    goto/16 :goto_1b

    .line 240
    :cond_ba
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "\u89c6\u9891\u6587\u4ef6\u4e0d\u5b58\u5728"

    new-array v1, v4, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_1b

    .line 245
    :cond_cc
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_dd

    .line 246
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 247
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 251
    :cond_dd
    invoke-static {v1, v2}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->getLocalBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_f2

    .line 253
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvShowResource:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mIvShowResource:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 257
    :cond_f2
    iput-boolean v4, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->isVideoTypePlaying:Z

    goto/16 :goto_1b
.end method
