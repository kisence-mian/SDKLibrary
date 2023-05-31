.class final Lcom/kwad/sdk/core/videocache/f$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/net/Socket;

.field final synthetic b:Lcom/kwad/sdk/core/videocache/f;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/f;Ljava/net/Socket;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/f$c;->b:Lcom/kwad/sdk/core/videocache/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/f$c;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f$c;->b:Lcom/kwad/sdk/core/videocache/f;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f$c;->a:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/videocache/f;->a(Lcom/kwad/sdk/core/videocache/f;Ljava/net/Socket;)V

    return-void
.end method
