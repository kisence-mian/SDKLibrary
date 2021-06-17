.class final Lcom/tapjoy/internal/gf;
.super Lcom/tapjoy/internal/ge;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/tapjoy/internal/ge;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
    .registers 5

    .line 37
    new-instance v0, Lcom/tapjoy/TJPlacement;

    invoke-direct {v0, p1, p2, p3}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 42
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method
