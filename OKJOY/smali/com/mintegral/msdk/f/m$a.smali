.class final Lcom/mintegral/msdk/f/m$a;
.super Ljava/lang/Object;
.source "ProxyCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/f/m;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/f/m;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mintegral/msdk/f/m$a;->a:Lcom/mintegral/msdk/f/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/f/m;B)V
    .registers 3

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/f/m$a;-><init>(Lcom/mintegral/msdk/f/m;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mintegral/msdk/f/m$a;->a:Lcom/mintegral/msdk/f/m;

    iget-boolean v0, v0, Lcom/mintegral/msdk/f/m;->d:Z

    if-eqz v0, :cond_b

    .line 233
    iget-object v0, p0, Lcom/mintegral/msdk/f/m$a;->a:Lcom/mintegral/msdk/f/m;

    invoke-static {v0}, Lcom/mintegral/msdk/f/m;->a(Lcom/mintegral/msdk/f/m;)V

    .line 235
    :cond_b
    return-void
.end method
