.class public final Lcom/tapjoy/internal/ev;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ev$b;,
        Lcom/tapjoy/internal/ev$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/ev;",
        "Lcom/tapjoy/internal/ev$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/ev;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Integer;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/tapjoy/internal/ev$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ev$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ev;->c:Lcom/tapjoy/internal/ek;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ev;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V
    .registers 8

    .line 70
    sget-object v0, Lcom/tapjoy/internal/ev;->c:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, p6}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    .line 73
    iput-object p3, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 93
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/ev;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 94
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/ev;

    .line 95
    invoke-virtual {p0}, Lcom/tapjoy/internal/ev;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/ev;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    .line 96
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    .line 97
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    .line 98
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    .line 99
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    .line 100
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return v0

    :cond_4e
    nop

    .line 95
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 105
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 106
    if-nez v0, :cond_4e

    .line 107
    invoke-virtual {p0}, Lcom/tapjoy/internal/ev;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 108
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4b
    add-int/2addr v0, v2

    .line 113
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 115
    :cond_4e
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", pkgVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_14
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", pkgRev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    :cond_23
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", dataVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_32
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", installer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_41
    iget-object v1, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ev;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_50
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "App{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
