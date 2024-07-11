.class public final Lcom/tapjoy/internal/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/gk;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:D

.field public e:J

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 8
    new-instance v9, Lcom/tapjoy/internal/gk;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/tapjoy/internal/gk;-><init>(JJJD)V

    sput-object v9, Lcom/tapjoy/internal/gk;->a:Lcom/tapjoy/internal/gk;

    return-void
.end method

.method public constructor <init>(JJJD)V
    .registers 9

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/tapjoy/internal/gk;->f:J

    .line 34
    iput-wide p3, p0, Lcom/tapjoy/internal/gk;->b:J

    .line 35
    iput-wide p5, p0, Lcom/tapjoy/internal/gk;->c:J

    .line 36
    iput-wide p7, p0, Lcom/tapjoy/internal/gk;->d:D

    .line 38
    iput-wide p1, p0, Lcom/tapjoy/internal/gk;->e:J

    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 44
    return v0

    .line 46
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 49
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/tapjoy/internal/gk;

    .line 50
    iget-wide v3, p0, Lcom/tapjoy/internal/gk;->f:J

    iget-wide v5, v2, Lcom/tapjoy/internal/gk;->f:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3e

    iget-wide v3, p0, Lcom/tapjoy/internal/gk;->b:J

    iget-wide v5, v2, Lcom/tapjoy/internal/gk;->b:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3e

    iget-wide v3, p0, Lcom/tapjoy/internal/gk;->c:J

    iget-wide v5, v2, Lcom/tapjoy/internal/gk;->c:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3e

    iget-wide v3, p0, Lcom/tapjoy/internal/gk;->d:D

    iget-wide v5, v2, Lcom/tapjoy/internal/gk;->d:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_3e

    iget-wide v3, p0, Lcom/tapjoy/internal/gk;->e:J

    iget-wide v5, v2, Lcom/tapjoy/internal/gk;->e:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_3e

    return v0

    :cond_3e
    return v1

    .line 47
    :cond_3f
    :goto_3f
    return v1
.end method
