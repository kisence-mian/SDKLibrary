.class public final Lcom/tapjoy/internal/cw;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/cw;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/cw;->b:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/internal/cw;->c:Ljava/lang/String;

    return-void
.end method
