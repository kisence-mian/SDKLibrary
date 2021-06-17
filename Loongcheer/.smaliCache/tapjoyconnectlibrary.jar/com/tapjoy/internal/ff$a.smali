.class public final Lcom/tapjoy/internal/ff$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/ff;",
        "Lcom/tapjoy/internal/ff$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ff;
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/tapjoy/internal/ff$a;->d:Ljava/lang/Long;

    if-eqz v1, :cond_18

    .line 137
    new-instance v0, Lcom/tapjoy/internal/ff;

    iget-object v1, p0, Lcom/tapjoy/internal/ff$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ff$a;->d:Ljava/lang/Long;

    iget-object v3, p0, Lcom/tapjoy/internal/ff$a;->e:Ljava/lang/Long;

    invoke-super {p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/ff;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/tapjoy/internal/iw;)V

    return-object v0

    .line 134
    :cond_18
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "id"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/tapjoy/internal/ff$a;->d:Ljava/lang/Long;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "received"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/tapjoy/internal/ep;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
