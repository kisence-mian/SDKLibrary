.class public Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.super Lcom/anythink/nativead/unitgroup/a;


# static fields
.field public static AD_REQUEST_NUM:Ljava/lang/String; = null

.field public static IS_AUTO_PLAY_KEY:Ljava/lang/String; = null

.field static final MAX_STAR_RATING:D = 5.0

.field static final MIN_STAR_RATING:D


# instance fields
.field private mAdChoiceIconUrl:Ljava/lang/String;

.field private mAdFrom:Ljava/lang/String;

.field private mCallToAction:Ljava/lang/String;

.field private mClickDestinationUrl:Ljava/lang/String;

.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIconImageUrl:Ljava/lang/String;

.field private mImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainImageUrl:Ljava/lang/String;

.field private mStarRating:Ljava/lang/Double;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "is_auto_play"

    sput-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->IS_AUTO_PLAY_KEY:Ljava/lang/String;

    .line 27
    const-string v0, "ad_num"

    sput-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/a;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mExtras:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    :goto_6
    return-void

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public clear(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 251
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 276
    return-void
.end method

.method public final getAdChoiceIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdChoiceIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFrom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIconView()Landroid/view/View;
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallToActionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final getExtras()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isNativeExpress()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 262
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .prologue
    .line 242
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method public final setAdChoiceIconUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdChoiceIconUrl:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public final setAdFrom(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdFrom:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public final setCallToActionText(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCallToAction:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public final setClickDestinationUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public final setDescriptionText(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mText:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mIconImageUrl:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public final setImageUrlList(Ljava/util/List;)V
    .registers 2
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
    .line 224
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mImageUrlList:Ljava/util/List;

    .line 225
    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .registers 6

    .prologue
    .line 203
    if-nez p1, :cond_6

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    .line 209
    :cond_5
    :goto_5
    return-void

    .line 205
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    .line 206
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_5
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mTitle:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoUrl:Ljava/lang/String;

    .line 213
    return-void
.end method
