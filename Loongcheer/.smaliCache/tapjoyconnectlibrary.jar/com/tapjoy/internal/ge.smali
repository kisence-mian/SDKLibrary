.class abstract Lcom/tapjoy/internal/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/ge;

.field private static b:Lcom/tapjoy/internal/ge;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/tapjoy/internal/gf;

    invoke-direct {v0}, Lcom/tapjoy/internal/gf;-><init>()V

    .line 12
    sput-object v0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/ge;

    sput-object v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/ge;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/tapjoy/internal/ge;
    .registers 1

    .line 15
    sget-object v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/ge;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
.end method

.method public abstract b()Ljava/lang/Object;
.end method
