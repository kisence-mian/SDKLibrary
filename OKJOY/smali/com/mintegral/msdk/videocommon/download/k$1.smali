.class final Lcom/mintegral/msdk/videocommon/download/k$1;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videocommon/download/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videocommon/download/k;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/k;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/k$1;->a:Lcom/mintegral/msdk/videocommon/download/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .registers 5

    .prologue
    .line 47
    const/4 v0, 0x5

    if-eq p3, v0, :cond_9

    const/4 v0, 0x4

    if-eq p3, v0, :cond_9

    const/4 v0, 0x6

    if-ne p3, v0, :cond_13

    .line 48
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k$1;->a:Lcom/mintegral/msdk/videocommon/download/k;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/k;)Z

    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k$1;->a:Lcom/mintegral/msdk/videocommon/download/k;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a()V

    .line 51
    :cond_13
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1b

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/k$1;->a:Lcom/mintegral/msdk/videocommon/download/k;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/k;)Z

    .line 54
    :cond_1b
    return-void
.end method
