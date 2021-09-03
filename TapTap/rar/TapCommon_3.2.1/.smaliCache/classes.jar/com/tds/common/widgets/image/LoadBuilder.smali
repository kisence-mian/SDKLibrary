.class public Lcom/tds/common/widgets/image/LoadBuilder;
.super Ljava/lang/Object;
.source "LoadBuilder.java"


# instance fields
.field circle:Z

.field errorDrawable:Landroid/graphics/drawable/Drawable;

.field errorRedId:I

.field height:I

.field placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field placeholderResId:I

.field final resId:I

.field roundCornerRadius:I

.field scaleType:Landroid/widget/ImageView$ScaleType;

.field final tdsImage:Lcom/tds/common/widgets/image/TdsImage;

.field final uri:Landroid/net/Uri;

.field width:I


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/TdsImage;Landroid/net/Uri;I)V
    .registers 6
    .param p1, "tdsImage"    # Lcom/tds/common/widgets/image/TdsImage;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "resId"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->placeholderResId:I

    .line 35
    iput v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->errorRedId:I

    .line 37
    iput v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    .line 38
    iput v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    .line 39
    iput v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    .line 40
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 41
    iput-boolean v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->circle:Z

    .line 44
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    .line 45
    iput-object p2, p0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    .line 46
    iput p3, p0, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/LoadBuilder;

    .line 29
    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/LoadBuilder;

    .line 29
    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder;->getDiskKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiskKey()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_d
    iget v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_85

    .line 92
    iget v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    iget v2, p0, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    mul-int/2addr v1, v2

    if-nez v1, :cond_14

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "taretUrl":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->circle:Z

    if-eqz v1, :cond_63

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    .line 99
    :cond_63
    iget v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    if-lez v1, :cond_80

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_80
    :goto_80
    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    .end local v0    # "taretUrl":Ljava/lang/String;
    :cond_85
    iget v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "in"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/tds/common/widgets/image/ImageUtil;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadImageInto(Landroid/widget/ImageView;)Lcom/tds/common/reactor/Subscription;
    .registers 4
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 173
    .local v0, "view":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;"
    new-instance v1, Lcom/tds/common/widgets/image/LoadBuilder$1;

    invoke-direct {v1, p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder$1;-><init>(Lcom/tds/common/widgets/image/LoadBuilder;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p0, v1}, Lcom/tds/common/widgets/image/LoadBuilder;->loadImageInto(Lcom/tds/common/widgets/image/ImageTarget;)Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    return-object v1
.end method

.method private loadImageInto(Lcom/tds/common/widgets/image/ImageTarget;)Lcom/tds/common/reactor/Subscription;
    .registers 4
    .param p1, "target"    # Lcom/tds/common/widgets/image/ImageTarget;

    .line 197
    new-instance v0, Lcom/tds/common/widgets/image/LoadBuilder$3;

    invoke-direct {v0, p0}, Lcom/tds/common/widgets/image/LoadBuilder$3;-><init>(Lcom/tds/common/widgets/image/LoadBuilder;)V

    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->create(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->io()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    new-instance v1, Lcom/tds/common/widgets/image/LoadBuilder$2;

    invoke-direct {v1, p0, p1}, Lcom/tds/common/widgets/image/LoadBuilder$2;-><init>(Lcom/tds/common/widgets/image/LoadBuilder;Lcom/tds/common/widgets/image/ImageTarget;)V

    .line 384
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    .line 197
    return-object v0
.end method


# virtual methods
.method public error(I)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 2
    .param p1, "errorResId"    # I

    .line 60
    iput p1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->errorRedId:I

    .line 61
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)V
    .registers 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 122
    invoke-static {}, Lcom/tds/common/widgets/image/ImageUtil;->checkMain()V

    .line 123
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    if-nez v0, :cond_1b

    .line 124
    iget v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->errorRedId:I

    if-eqz v0, :cond_13

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1a

    .line 126
    :cond_13
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_1a
    :goto_1a
    return-void

    .line 131
    :cond_1b
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    invoke-virtual {v0, p1}, Lcom/tds/common/widgets/image/TdsImage;->cancelRequest(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v0, v0, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/MemCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_32

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    return-void

    .line 139
    :cond_32
    iget v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->placeholderResId:I

    if-eqz v1, :cond_3a

    .line 140
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41

    .line 141
    :cond_3a
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    .line 142
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_41
    :goto_41
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/LoadBuilder;->loadImageInto(Landroid/widget/ImageView;)Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    .line 146
    .local v1, "subscription":Lcom/tds/common/reactor/Subscription;
    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    invoke-virtual {v2, p1, v1}, Lcom/tds/common/widgets/image/TdsImage;->enqueue(Ljava/lang/Object;Lcom/tds/common/reactor/Subscription;)V

    .line 147
    return-void
.end method

.method public into(Lcom/tds/common/widgets/image/ImageTarget;)V
    .registers 5
    .param p1, "imageTarget"    # Lcom/tds/common/widgets/image/ImageTarget;

    .line 150
    invoke-static {}, Lcom/tds/common/widgets/image/ImageUtil;->checkMain()V

    .line 151
    if-nez p1, :cond_6

    .line 152
    return-void

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_19

    iget v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    if-nez v0, :cond_19

    .line 155
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "uri == null && resId == 0"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tds/common/widgets/image/ImageTarget;->onFailure(Ljava/lang/Throwable;)V

    .line 156
    return-void

    .line 159
    :cond_19
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    invoke-virtual {v0, p1}, Lcom/tds/common/widgets/image/TdsImage;->cancelRequest(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v0, v0, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/MemCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_30

    .line 163
    invoke-interface {p1, v0}, Lcom/tds/common/widgets/image/ImageTarget;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 164
    return-void

    .line 167
    :cond_30
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/LoadBuilder;->loadImageInto(Lcom/tds/common/widgets/image/ImageTarget;)Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    .line 168
    .local v1, "subscription":Lcom/tds/common/reactor/Subscription;
    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    invoke-virtual {v2, p1, v1}, Lcom/tds/common/widgets/image/TdsImage;->enqueue(Ljava/lang/Object;Lcom/tds/common/reactor/Subscription;)V

    .line 169
    return-void
.end method

.method public placeholder(I)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 2
    .param p1, "placeholderResId"    # I

    .line 50
    iput p1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->placeholderResId:I

    .line 51
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 2
    .param p1, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    return-object p0
.end method

.method public roundCornerDp(F)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 3
    .param p1, "radiusDp"    # F

    .line 75
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v0, v0, Lcom/tds/common/widgets/image/TdsImage;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerPx(I)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    return-object v0
.end method

.method public roundCornerPx(I)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 3
    .param p1, "radiusPx"    # I

    .line 70
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    .line 71
    return-object p0
.end method

.method public scale(IILandroid/widget/ImageView$ScaleType;)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 84
    iput p1, p0, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    .line 85
    iput p2, p0, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    .line 86
    iput-object p3, p0, Lcom/tds/common/widgets/image/LoadBuilder;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 87
    return-object p0
.end method

.method public setCircle(Z)Lcom/tds/common/widgets/image/LoadBuilder;
    .registers 3
    .param p1, "circle"    # Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/widgets/image/LoadBuilder;->circle:Z

    .line 80
    return-object p0
.end method
