.class final Lcom/mintegral/msdk/rover/b$1;
.super Landroid/os/Handler;
.source "RoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/rover/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/rover/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/rover/b;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mintegral/msdk/rover/b$1;->a:Lcom/mintegral/msdk/rover/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mintegral/msdk/rover/b$1;->a:Lcom/mintegral/msdk/rover/b;

    invoke-static {v0}, Lcom/mintegral/msdk/rover/b;->a(Lcom/mintegral/msdk/rover/b;)V

    .line 24
    return-void
.end method
