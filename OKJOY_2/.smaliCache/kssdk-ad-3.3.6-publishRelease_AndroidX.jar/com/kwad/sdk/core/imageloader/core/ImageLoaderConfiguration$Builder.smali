.class public Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_TASK_PROCESSING_TYPE:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x3

.field private static final WARNING_OVERLAP_DISK_CACHE_NAME_GENERATOR:Ljava/lang/String; = "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

.field private static final WARNING_OVERLAP_DISK_CACHE_PARAMS:Ljava/lang/String; = "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

.field private static final WARNING_OVERLAP_EXECUTOR:Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final WARNING_OVERLAP_MEMORY_CACHE:Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"


# instance fields
.field private context:Landroid/content/Context;

.field private customExecutor:Z

.field private customExecutorForCachedImages:Z

.field private decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

.field private defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

.field private diskCacheFileCount:I

.field private diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

.field private diskCacheSize:J

.field private downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field private maxImageHeightForDiskCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiskCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

.field private memoryCacheSize:I

.field private processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I

.field private writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->FIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return p0
.end method

.method static synthetic access$1000(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return p0
.end method

.method static synthetic access$300(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    return p0
.end method

.method static synthetic access$400(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    return p0
.end method

.method static synthetic access$500(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return p0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_14

    :cond_12
    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    :goto_14
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_25

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    goto :goto_27

    :cond_25
    iput-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    :goto_27
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_35

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    :cond_35
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    iget-wide v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    iget v4, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createDiskCache(Landroid/content/Context;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    :cond_43
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createMemoryCache(Landroid/content/Context;I)Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    :cond_51
    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    if-eqz v0, :cond_62

    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/utils/MemoryCacheUtils;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    :cond_62
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createImageDownloader(Landroid/content/Context;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    :cond_6e
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createImageDecoder(Z)Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    :cond_7a
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    if-nez v0, :cond_84

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->createSimple()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    :cond_84
    return-void
.end method


# virtual methods
.method public build()Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;-><init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$1;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    return-object p0
.end method

.method public discCache(Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public discCacheExtraOptions(IILcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public discCacheFileCount(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public discCacheFileNameGenerator(Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public discCacheSize(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public diskCache(Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 6

    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_d

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    if-lez v0, :cond_14

    :cond_d
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_1f

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    return-object p0
.end method

.method public diskCacheExtraOptions(IILcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public diskCacheFileCount(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    return-object p0

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxFileCount must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public diskCacheFileNameGenerator(Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    return-object p0
.end method

.method public diskCacheSize(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    return-object p0

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public imageDecoder(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    return-object p0
.end method

.method public imageDownloader(Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    return-object p0
.end method

.method public memoryCache(Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 3

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return-object p0
.end method

.method public memoryCacheSize(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    return-object p0

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "memoryCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public memoryCacheSizePercentage(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_24

    const/16 v0, 0x64

    if-ge p1, v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    return-object p0

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "availableMemoryPercent must be in range (0 < % < 100)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_17

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_17

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public tasksProcessingOrder(Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method public threadPoolSize(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return-object p0
.end method

.method public threadPriority(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_10

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x1

    if-ge p1, v0, :cond_16

    :goto_13
    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_1d

    :cond_16
    const/16 v0, 0xa

    if-le p1, v0, :cond_1b

    goto :goto_13

    :cond_1b
    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    :goto_1d
    return-object p0
.end method

.method public writeDebugLogs()Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return-object p0
.end method
