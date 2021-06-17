.class public final Lcom/tapjoy/internal/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/tapjoy/internal/be$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/be$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/be;->a:Lcom/tapjoy/internal/bd;

    .line 32
    new-instance v0, Lcom/tapjoy/internal/be$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/be$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/be;->b:Lcom/tapjoy/internal/bd;

    return-void
.end method
