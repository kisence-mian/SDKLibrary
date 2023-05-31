.class final Lcom/mintegral/msdk/f/k$a;
.super Ljava/lang/Object;
.source "Pinger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/f/k;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/f/k;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mintegral/msdk/f/k$a;->a:Lcom/mintegral/msdk/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/f/k;B)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/f/k$a;-><init>(Lcom/mintegral/msdk/f/k;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    .line 1110
    iget-object v0, p0, Lcom/mintegral/msdk/f/k$a;->a:Lcom/mintegral/msdk/f/k;

    invoke-static {v0}, Lcom/mintegral/msdk/f/k;->a(Lcom/mintegral/msdk/f/k;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    return-object v0
.end method
