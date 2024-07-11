.class public final Lcom/tapjoy/internal/fa;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fa$b;,
        Lcom/tapjoy/internal/fa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/fa;",
        "Lcom/tapjoy/internal/fa$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/fa;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Long;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/tapjoy/internal/fa$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fa$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fa;->c:Lcom/tapjoy/internal/ek;

    .line 27
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fa;->d:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4

    .line 44
    sget-object v0, Lcom/tapjoy/internal/iw;->b:Lcom/tapjoy/internal/iw;

    invoke-direct {p0, p1, p2, v0}, Lcom/tapjoy/internal/fa;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/tapjoy/internal/iw;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/tapjoy/internal/iw;)V
    .registers 5

    .line 48
    sget-object v0, Lcom/tapjoy/internal/fa;->c:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, p3}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 49
    iput-object p1, p0, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    .line 51
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 65
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/fa;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 66
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/fa;

    .line 67
    invoke-virtual {p0}, Lcom/tapjoy/internal/fa;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    iget-object v1, v1, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    return v0

    :cond_30
    nop

    .line 67
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 74
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 75
    if-nez v0, :cond_20

    .line 76
    invoke-virtual {p0}, Lcom/tapjoy/internal/fa;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 77
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 81
    :cond_20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fa;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fa;->f:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EventValue{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
