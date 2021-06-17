.class public final Lcom/tapjoy/internal/dc;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tapjoy/internal/dc;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/cx;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/cx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/dc;

    invoke-direct {v0}, Lcom/tapjoy/internal/dc;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dc;->c:Lcom/tapjoy/internal/dc;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dc;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dc;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dc;->c:Lcom/tapjoy/internal/dc;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
