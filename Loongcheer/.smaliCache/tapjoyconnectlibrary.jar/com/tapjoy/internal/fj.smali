.class public final Lcom/tapjoy/internal/fj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/fj;


# instance fields
.field public final b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    new-instance v0, Lcom/tapjoy/internal/fj;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fj;-><init>(J)V

    sput-object v0, Lcom/tapjoy/internal/fj;->a:Lcom/tapjoy/internal/fj;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/tapjoy/internal/fj;->b:J

    .line 41
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tapjoy/internal/fj;->c:J
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_f} :catch_10

    .line 45
    return-void

    .line 42
    :catch_10
    move-exception v0

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/fj;->c:J

    .line 46
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/tapjoy/internal/fj;->b:J

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tapjoy/internal/fj;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 7

    .line 65
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tapjoy/internal/fj;->c:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/tapjoy/internal/fj;->b:J
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_11

    cmp-long v5, v1, v3

    if-lez v5, :cond_f

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0

    .line 66
    :catch_11
    move-exception v1

    .line 68
    return v0
.end method

.method public final a(J)Z
    .registers 8

    .line 89
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tapjoy/internal/fj;->c:J

    sub-long/2addr v1, v3

    add-long/2addr v1, p1

    iget-wide p1, p0, Lcom/tapjoy/internal/fj;->b:J
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_12

    cmp-long v3, v1, p1

    if-lez v3, :cond_10

    return v0

    :cond_10
    const/4 p1, 0x0

    return p1

    .line 90
    :catch_12
    move-exception p1

    .line 92
    return v0
.end method
