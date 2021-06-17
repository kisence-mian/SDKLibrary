.class final Lcom/tapjoy/internal/hy;
.super Lcom/tapjoy/internal/hq;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gr;


# static fields
.field public static final a:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/hy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/tapjoy/internal/hy$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hy$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hy;->a:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/tapjoy/internal/hq;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tapjoy/internal/hy;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tapjoy/internal/hy;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/tapjoy/internal/hy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/tapjoy/internal/hy;->c:Ljava/lang/String;

    return-object v0
.end method
