.class public final Lcom/tapjoy/internal/fc$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/fc;",
        "Lcom/tapjoy/internal/fc$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/fb;

.field public d:Lcom/tapjoy/internal/ev;

.field public e:Lcom/tapjoy/internal/fi;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fc;
    .registers 6

    .line 123
    new-instance v0, Lcom/tapjoy/internal/fc;

    iget-object v1, p0, Lcom/tapjoy/internal/fc$a;->c:Lcom/tapjoy/internal/fb;

    iget-object v2, p0, Lcom/tapjoy/internal/fc$a;->d:Lcom/tapjoy/internal/ev;

    iget-object v3, p0, Lcom/tapjoy/internal/fc$a;->e:Lcom/tapjoy/internal/fi;

    invoke-super {p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fc;-><init>(Lcom/tapjoy/internal/fb;Lcom/tapjoy/internal/ev;Lcom/tapjoy/internal/fi;Lcom/tapjoy/internal/iw;)V

    return-object v0
.end method
