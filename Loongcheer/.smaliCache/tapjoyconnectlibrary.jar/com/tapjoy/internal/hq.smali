.class abstract Lcom/tapjoy/internal/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gn;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reward"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "purchase"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "custom_action"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/tapjoy/internal/hq;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tapjoy/internal/bi;)Lcom/tapjoy/internal/hq;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 42
    const-string v0, "reward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 43
    sget-object p0, Lcom/tapjoy/internal/ia;->a:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/bi;->a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/hq;

    return-object p0

    .line 44
    :cond_11
    const-string v0, "purchase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 45
    sget-object p0, Lcom/tapjoy/internal/hy;->a:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/bi;->a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/hq;

    return-object p0

    .line 50
    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 37
    sget-object v0, Lcom/tapjoy/internal/hq;->a:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/go;)V
    .registers 6

    .line 24
    instance-of v0, p0, Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_13

    .line 25
    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/gr;

    .line 26
    invoke-interface {v0}, Lcom/tapjoy/internal/gr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tapjoy/internal/gr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    :cond_13
    instance-of v0, p0, Lcom/tapjoy/internal/gs;

    if-eqz v0, :cond_2d

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/gs;

    .line 29
    invoke-interface {v0}, Lcom/tapjoy/internal/gs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tapjoy/internal/gs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/tapjoy/internal/gs;->c()I

    move-result v3

    .line 30
    invoke-interface {v0}, Lcom/tapjoy/internal/gs;->d()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    :cond_2d
    return-void
.end method
