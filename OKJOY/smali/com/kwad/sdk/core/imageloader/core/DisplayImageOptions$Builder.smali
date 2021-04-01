.class public Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisk:Z

.field private considerExifParams:Z

.field private decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private delayBeforeLoading:I

.field private displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

.field private extraForDownloader:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private imageOnFail:Landroid/graphics/drawable/Drawable;

.field private imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private imageResForEmptyUri:I

.field private imageResOnFail:I

.field private imageResOnLoading:I

.field private imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field private isSyncLoading:Z

.field private postProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

.field private preProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

.field private resetViewBeforeLoading:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createBitmapDisplayer()Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return v0
.end method

.method static synthetic access$1000(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return v0
.end method

.method static synthetic access$1200(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return v0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$300(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return v0
.end method

.method static synthetic access$700(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;)Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    return-object v0
.end method


# virtual methods
.method public bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;-><init>(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$1;)V

    return-object v0
.end method

.method public cacheInMemory()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return-object p0
.end method

.method public cacheInMemory(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return-object p0
.end method

.method public cacheOnDisc()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public cacheOnDisc(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public cacheOnDisk(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    return-object p0
.end method

.method public cloneFrom(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 3

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageResOnLoading:I
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$1900(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageResForEmptyUri:I
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2000(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageResOnFail:I
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2100(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageOnLoading:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2200(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2300(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageOnFail:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2400(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->resetViewBeforeLoading:Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2500(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->cacheInMemory:Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2600(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->cacheOnDisk:Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2700(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2800(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->decodingOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$2900(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->delayBeforeLoading:I
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3000(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->considerExifParams:Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3100(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->extraForDownloader:Ljava/lang/Object;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3200(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->preProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3300(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->postProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3400(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3500(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3600(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading:Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->access$3700(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-object p0
.end method

.method public considerExifParams(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return-object p0
.end method

.method public decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decodingOptions can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delayBeforeLoading(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return-object p0
.end method

.method public displayer(Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extraForDownloader(Ljava/lang/Object;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object p0
.end method

.method public handler(Landroid/os/Handler;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public imageScaleType(Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    return-object p0
.end method

.method public postProcessor(Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public preProcessor(Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public resetViewBeforeLoading()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return-object p0
.end method

.method public resetViewBeforeLoading(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return-object p0
.end method

.method public showImageForEmptyUri(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return-object p0
.end method

.method public showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public showImageOnFail(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return-object p0
.end method

.method public showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public showImageOnLoading(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return-object p0
.end method

.method public showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public showStubImage(I)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return-object p0
.end method

.method syncLoading(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-object p0
.end method
