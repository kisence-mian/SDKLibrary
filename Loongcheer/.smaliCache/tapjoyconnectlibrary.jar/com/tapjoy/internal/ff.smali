.class public final Lcom/tapjoy/internal/ff;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ff$b;,
        Lcom/tapjoy/internal/ff$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/ff;",
        "Lcom/tapjoy/internal/ff$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/ff;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Long;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/tapjoy/internal/ff$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ff$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ek;

    .line 27
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ff;->d:Ljava/lang/Long;

    .line 29
    sput-object v0, Lcom/tapjoy/internal/ff;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5

    .line 52
    sget-object v0, Lcom/tapjoy/internal/iw;->b:Lcom/tapjoy/internal/iw;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/tapjoy/internal/ff;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/iw;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/iw;)V
    .registers 6

    .line 56
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, p4}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 57
    iput-object p1, p0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    .line 59
    iput-object p3, p0, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    .line 60
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ff$a;
    .registers 3

    .line 64
    new-instance v0, Lcom/tapjoy/internal/ff$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ff$a;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/ff$a;->c:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    iput-object v1, v0, Lcom/tapjoy/internal/ff$a;->d:Ljava/lang/Long;

    .line 67
    iget-object v1, p0, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    iput-object v1, v0, Lcom/tapjoy/internal/ff$a;->e:Ljava/lang/Long;

    .line 68
    invoke-virtual {p0}, Lcom/tapjoy/internal/ff;->a()Lcom/tapjoy/internal/iw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ff$a;->a(Lcom/tapjoy/internal/iw;)Lcom/tapjoy/internal/ei$a;

    .line 69
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 75
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/ff;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 76
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/ff;

    .line 77
    invoke-virtual {p0}, Lcom/tapjoy/internal/ff;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/ff;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    iget-object v1, v1, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    .line 80
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    return v0

    :cond_3a
    nop

    .line 77
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 85
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 86
    if-nez v0, :cond_2d

    .line 87
    invoke-virtual {p0}, Lcom/tapjoy/internal/ff;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 88
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 93
    :cond_2d
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    if-eqz v1, :cond_2a

    const-string v1, ", clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ff;->h:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2a
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Push{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
