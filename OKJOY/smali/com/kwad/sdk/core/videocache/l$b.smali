.class Lcom/kwad/sdk/core/videocache/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/videocache/l;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/videocache/l;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/l$b;->a:Lcom/kwad/sdk/core/videocache/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/videocache/l;Lcom/kwad/sdk/core/videocache/l$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/l$b;-><init>(Lcom/kwad/sdk/core/videocache/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l$b;->a:Lcom/kwad/sdk/core/videocache/l;

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/l;->a(Lcom/kwad/sdk/core/videocache/l;)V

    return-void
.end method
