.class final Lcom/tapjoy/internal/ia;
.super Lcom/tapjoy/internal/hq;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gs;


# static fields
.field public static final a:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/ia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/tapjoy/internal/ia$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ia$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ia;->a:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Lcom/tapjoy/internal/hq;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tapjoy/internal/ia;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tapjoy/internal/ia;->c:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/tapjoy/internal/ia;->d:I

    .line 20
    iput-object p4, p0, Lcom/tapjoy/internal/ia;->e:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/tapjoy/internal/ia;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/tapjoy/internal/ia;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/tapjoy/internal/ia;->d:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/ia;->e:Ljava/lang/String;

    return-object v0
.end method
