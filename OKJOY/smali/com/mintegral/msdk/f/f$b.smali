.class final Lcom/mintegral/msdk/f/f$b;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/f/f;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/f/f;Ljava/net/Socket;)V
    .registers 3

    .prologue
    .line 410
    iput-object p1, p0, Lcom/mintegral/msdk/f/f$b;->a:Lcom/mintegral/msdk/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p2, p0, Lcom/mintegral/msdk/f/f$b;->b:Ljava/net/Socket;

    .line 412
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mintegral/msdk/f/f$b;->a:Lcom/mintegral/msdk/f/f;

    iget-object v1, p0, Lcom/mintegral/msdk/f/f$b;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/f;Ljava/net/Socket;)V

    .line 417
    return-void
.end method
