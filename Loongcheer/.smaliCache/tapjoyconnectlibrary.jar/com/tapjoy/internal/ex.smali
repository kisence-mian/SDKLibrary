.class public final Lcom/tapjoy/internal/ex;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ex$b;,
        Lcom/tapjoy/internal/ex$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/ex;",
        "Lcom/tapjoy/internal/ex$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/ex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ew;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/tapjoy/internal/ex$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ex$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/ek;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/tapjoy/internal/iw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ew;",
            ">;",
            "Lcom/tapjoy/internal/iw;",
            ")V"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, p2}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 38
    const-string p2, "events"

    invoke-static {p2, p1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 52
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/ex;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 53
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/ex;

    .line 54
    invoke-virtual {p0}, Lcom/tapjoy/internal/ex;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/ex;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    iget-object v1, v1, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    .line 55
    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return v0

    :cond_26
    nop

    .line 54
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 60
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 61
    if-nez v0, :cond_17

    .line 62
    invoke-virtual {p0}, Lcom/tapjoy/internal/ex;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 63
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 66
    :cond_17
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ex;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EventBatch{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
