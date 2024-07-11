.class Lcom/tendcloud/tenddata/game/az$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private fileLock:Ljava/nio/channels/FileLock;

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private threadLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/game/ba;)V
    .registers 2

    .line 222
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/az$a;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tendcloud/tenddata/game/az$a;)Ljava/io/RandomAccessFile;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/az$a;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tendcloud/tenddata/game/az$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/az$a;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tendcloud/tenddata/game/az$a;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/az$a;->threadLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tendcloud/tenddata/game/az$a;Ljava/util/concurrent/locks/Lock;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/az$a;->threadLock:Ljava/util/concurrent/locks/Lock;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tendcloud/tenddata/game/az$a;)Ljava/nio/channels/FileLock;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/tendcloud/tenddata/game/az$a;->fileLock:Ljava/nio/channels/FileLock;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tendcloud/tenddata/game/az$a;Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/az$a;->fileLock:Ljava/nio/channels/FileLock;

    return-object p1
.end method
