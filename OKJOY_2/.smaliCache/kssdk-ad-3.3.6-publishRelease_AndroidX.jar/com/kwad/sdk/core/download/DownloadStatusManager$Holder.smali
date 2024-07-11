.class final enum Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/download/DownloadStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

.field public static final enum INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    aput-object v0, v1, v2

    sput-object v1, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->$VALUES:[Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/kwad/sdk/core/download/DownloadStatusManager;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/kwad/sdk/core/download/DownloadStatusManager;-><init>(Lcom/kwad/sdk/core/download/DownloadStatusManager$1;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$300(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Lcom/kwad/sdk/core/download/DownloadStatusManager;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->$VALUES:[Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    return-object v0
.end method


# virtual methods
.method getInstance()Lcom/kwad/sdk/core/download/DownloadStatusManager;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Lcom/kwad/sdk/core/download/DownloadStatusManager;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;

    invoke-static {v1}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b(Lcom/kwad/sdk/core/download/DownloadStatusManager;)V

    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;

    return-object v0
.end method
