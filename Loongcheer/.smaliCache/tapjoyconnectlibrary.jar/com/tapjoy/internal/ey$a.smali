.class public final Lcom/tapjoy/internal/ey$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/ey;",
        "Lcom/tapjoy/internal/ey$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/ez;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 112
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ey;
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/ez;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/tapjoy/internal/ey$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 136
    new-instance v0, Lcom/tapjoy/internal/ey;

    iget-object v1, p0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/ez;

    iget-object v2, p0, Lcom/tapjoy/internal/ey$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/ey$a;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/ey;-><init>(Lcom/tapjoy/internal/ez;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V

    return-object v0

    .line 133
    :cond_18
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "type"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/tapjoy/internal/ey$a;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "name"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/tapjoy/internal/ep;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
