.class public Lcom/kwad/sdk/utils/af;
.super Ljava/lang/Object;


# static fields
.field private static volatile l:Lcom/kwad/sdk/utils/af;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:J

.field private volatile h:J

.field private volatile i:J

.field private volatile j:J

.field private volatile k:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->a:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->b:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->c:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->d:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->e:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->f:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kwad/sdk/utils/af;->g:J

    iput-wide v1, p0, Lcom/kwad/sdk/utils/af;->h:J

    iput-wide v1, p0, Lcom/kwad/sdk/utils/af;->i:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/kwad/sdk/utils/af;->j:J

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/af;->k:Z

    return-void
.end method

.method public static a()Lcom/kwad/sdk/utils/af;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/utils/af;->l:Lcom/kwad/sdk/utils/af;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/utils/af;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/utils/af;->l:Lcom/kwad/sdk/utils/af;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/utils/af;

    invoke-direct {v1}, Lcom/kwad/sdk/utils/af;-><init>()V

    sput-object v1, Lcom/kwad/sdk/utils/af;->l:Lcom/kwad/sdk/utils/af;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/kwad/sdk/utils/af;->l:Lcom/kwad/sdk/utils/af;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/utils/af;->j:J

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/utils/af;->f:Z

    return v0
.end method
