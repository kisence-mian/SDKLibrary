.class Lcom/ssjj/fnsdk/core/update/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;J)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/p;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    iput-wide p2, p0, Lcom/ssjj/fnsdk/core/update/p;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7

    const-string v0, ".p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/p;->b:J

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x240c8400

    cmp-long v0, v2, p1

    if-lez v0, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_27
    return v1
.end method
