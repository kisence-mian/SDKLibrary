.class public final Lcom/tapjoy/internal/fg$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/fg;",
        "Lcom/tapjoy/internal/fg$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 80
    invoke-static {}, Lcom/tapjoy/internal/ep;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fg$a;->c:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fg;
    .registers 4

    .line 91
    new-instance v0, Lcom/tapjoy/internal/fg;

    iget-object v1, p0, Lcom/tapjoy/internal/fg$a;->c:Ljava/util/List;

    invoke-super {p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fg;-><init>(Ljava/util/List;Lcom/tapjoy/internal/iw;)V

    return-object v0
.end method
