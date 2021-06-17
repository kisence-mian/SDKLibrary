.class public final Lcom/tapjoy/internal/fd;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fd$b;,
        Lcom/tapjoy/internal/fd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/fd;",
        "Lcom/tapjoy/internal/fd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/fd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/tapjoy/internal/fd$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/ek;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 49
    sget-object v0, Lcom/tapjoy/internal/iw;->b:Lcom/tapjoy/internal/iw;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V
    .registers 6

    .line 53
    sget-object v0, Lcom/tapjoy/internal/fd;->c:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 54
    iput-object p1, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 72
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/fd;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 73
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/fd;

    .line 74
    invoke-virtual {p0}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    .line 75
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    .line 76
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    .line 77
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    return v0

    :cond_3a
    nop

    .line 74
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 82
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 83
    if-nez v0, :cond_34

    .line 84
    invoke-virtual {p0}, Lcom/tapjoy/internal/fd;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 85
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_31
    add-int/2addr v0, v2

    .line 88
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 90
    :cond_34
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", fq7Change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_14
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", fq30Change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_23
    iget-object v1, p0, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", pushId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fd;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_32
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Meta{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
