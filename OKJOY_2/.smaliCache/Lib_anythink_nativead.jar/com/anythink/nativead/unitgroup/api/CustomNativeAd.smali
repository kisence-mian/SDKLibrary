.class public Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.super Lcom/anythink/nativead/unitgroup/a;


# static fields
.field public static IS_AUTO_PLAY_KEY:Ljava/lang/String; = null

.field static final MAX_STAR_RATING:D = 5.0

.field static final MIN_STAR_RATING:D


# instance fields
.field private mAdChoiceIconUrl:Ljava/lang/String;

.field private mAdFrom:Ljava/lang/String;

.field private mCallToAction:Ljava/lang/String;

.field private mClickDestinationUrl:Ljava/lang/String;

.field private mIconImageUrl:Ljava/lang/String;

.field private mImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainImageUrl:Ljava/lang/String;

.field private mNetworkInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStarRating:Ljava/lang/Double;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "is_auto_play"

    sput-object v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->IS_AUTO_PLAY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/a;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    .line 49
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 256
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 277
    return-void
.end method

.method public final getAdChoiceIconUrl()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdChoiceIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFrom()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIconView()Landroid/view/View;
    .registers 2

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 68
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallToActionText()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNetworkInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .line 267
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 272
    return-void
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 247
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 252
    return-void
.end method

.method public final setAdChoiceIconUrl(Ljava/lang/String;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdChoiceIconUrl:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public final setAdFrom(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdFrom:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public final setCallToActionText(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCallToAction:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public final setDescriptionText(Ljava/lang/String;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mText:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mIconImageUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public final setImageUrlList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mImageUrlList:Ljava/util/List;

    .line 221
    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageUrl:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public final setNetworkInfoMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNetworkInfoMap:Ljava/util/Map;

    .line 226
    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .registers 6

    .line 199
    if-nez p1, :cond_6

    .line 200
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    return-void

    .line 201
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    .line 202
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    .line 205
    :cond_1c
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mTitle:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoUrl:Ljava/lang/String;

    .line 209
    return-void
.end method
