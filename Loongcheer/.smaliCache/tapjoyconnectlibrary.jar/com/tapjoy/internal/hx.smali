.class public final Lcom/tapjoy/internal/hx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/hx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/tapjoy/internal/hz;

.field public final b:Landroid/graphics/Point;

.field public final c:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/tapjoy/internal/hx$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hx$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hx;->d:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/hz;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hz;

    .line 19
    iput-object p2, p0, Lcom/tapjoy/internal/hx;->b:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/tapjoy/internal/hx;->c:Landroid/graphics/Point;

    .line 21
    return-void
.end method
