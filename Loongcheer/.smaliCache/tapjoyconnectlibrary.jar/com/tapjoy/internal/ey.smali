.class public final Lcom/tapjoy/internal/ey;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ey$b;,
        Lcom/tapjoy/internal/ey$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/ey;",
        "Lcom/tapjoy/internal/ey$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/ey;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/tapjoy/internal/ez;


# instance fields
.field public final e:Lcom/tapjoy/internal/ez;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/tapjoy/internal/ey$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ey$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/ek;

    .line 24
    sget-object v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    sput-object v0, Lcom/tapjoy/internal/ey;->d:Lcom/tapjoy/internal/ez;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/ez;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V
    .registers 6

    .line 55
    sget-object v0, Lcom/tapjoy/internal/ey;->c:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 56
    iput-object p1, p0, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    .line 57
    iput-object p2, p0, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 74
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/ey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 75
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/ey;

    .line 76
    invoke-virtual {p0}, Lcom/tapjoy/internal/ey;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/ey;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    iget-object v4, v1, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    .line 77
    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/ez;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    .line 79
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    return v0

    :cond_3a
    nop

    .line 76
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 84
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 85
    if-nez v0, :cond_2d

    .line 86
    invoke-virtual {p0}, Lcom/tapjoy/internal/ey;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 87
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ez;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 92
    :cond_2d
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ey;->e:Lcom/tapjoy/internal/ez;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ey;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    if-eqz v1, :cond_2a

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ey;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2a
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EventGroup{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
