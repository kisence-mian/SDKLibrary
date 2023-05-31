.class public Lcom/mintegral/msdk/out/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;
.implements Lcom/mintegral/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_BIG:I = 0x3

.field public static final TYPE_ICON:I = 0x2

.field public static final TYPE_MTG:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public adCall:Ljava/lang/String;

.field private adchoiceSizeHeight:I

.field private adchoiceSizeWidth:I

.field private appDesc:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private bigDrawable:Landroid/graphics/drawable/Drawable;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

.field private nativead:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private rating:D

.field private size:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private timestamp:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->id:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->packageName:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->appName:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->appDesc:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->size:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->iconUrl:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->imageUrl:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/out/Campaign;->timestamp:J

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/out/Campaign;->type:I

    .line 77
    iput v2, p0, Lcom/mintegral/msdk/out/Campaign;->adchoiceSizeWidth:I

    .line 82
    iput v2, p0, Lcom/mintegral/msdk/out/Campaign;->adchoiceSizeHeight:I

    return-void
.end method

.method private BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 261
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    return-object v0
.end method


# virtual methods
.method public getAdCall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->adCall:Ljava/lang/String;

    return-object v0
.end method

.method public getAdchoiceSizeHeight()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/mintegral/msdk/out/Campaign;->adchoiceSizeHeight:I

    return v0
.end method

.method public getAdchoiceSizeWidth()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/mintegral/msdk/out/Campaign;->adchoiceSizeWidth:I

    return v0
.end method

.method public getAppDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->appDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBigDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->bigDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNativead()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->nativead:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()D
    .registers 3

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/mintegral/msdk/out/Campaign;->rating:D

    return-wide v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/mintegral/msdk/out/Campaign;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/mintegral/msdk/out/Campaign;->type:I

    return v0
.end method

.method public loadIconUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V
    .registers 4

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    .line 92
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 93
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 95
    :cond_1f
    return-void
.end method

.method public loadImageUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V
    .registers 4

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    .line 104
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 105
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 107
    :cond_1f
    return-void
.end method

.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 135
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 116
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/out/Campaign;->BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/out/Campaign;->setBigDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    if-eqz v0, :cond_2b

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    invoke-direct {p0, p1}, Lcom/mintegral/msdk/out/Campaign;->BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/out/OnImageLoadListener;->loadSuccess(Landroid/graphics/drawable/Drawable;I)V

    .line 122
    :cond_2b
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/mintegral/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 123
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/out/Campaign;->BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/out/Campaign;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    if-eqz v0, :cond_5c

    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    invoke-direct {p0, p1}, Lcom/mintegral/msdk/out/Campaign;->BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/out/OnImageLoadListener;->loadSuccess(Landroid/graphics/drawable/Drawable;I)V

    .line 130
    :cond_5c
    return-void
.end method

.method public setAdCall(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    :goto_6
    return-void

    .line 161
    :cond_7
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->adCall:Ljava/lang/String;

    goto :goto_6
.end method

.method public setAdchoiceSizeHeight(I)V
    .registers 2

    .prologue
    .line 249
    iput p1, p0, Lcom/mintegral/msdk/out/Campaign;->adchoiceSizeHeight:I

    .line 250
    return-void
.end method

.method public setAdchoiceSizeWidth(I)V
    .registers 2

    .prologue
    .line 241
    iput p1, p0, Lcom/mintegral/msdk/out/Campaign;->adchoiceSizeWidth:I

    .line 242
    return-void
.end method

.method public setAppDesc(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->appDesc:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->appName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setBigDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->bigDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->iconUrl:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->id:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->imageUrl:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setNativead(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->nativead:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public setOnImageLoadListener(Lcom/mintegral/msdk/out/OnImageLoadListener;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->mOnImageLoadListener:Lcom/mintegral/msdk/out/OnImageLoadListener;

    .line 111
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->packageName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRating(D)V
    .registers 4

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/mintegral/msdk/out/Campaign;->rating:D

    .line 143
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->size:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mintegral/msdk/out/Campaign;->subType:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setTimestamp(J)V
    .registers 4

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/mintegral/msdk/out/Campaign;->timestamp:J

    .line 226
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 217
    iput p1, p0, Lcom/mintegral/msdk/out/Campaign;->type:I

    .line 218
    return-void
.end method
