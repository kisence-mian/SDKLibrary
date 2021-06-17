.class final Lcom/appsflyer/internal/av$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/av;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/av;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/appsflyer/internal/av$5;->values:Lcom/appsflyer/internal/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/appsflyer/internal/av$5;->values:Lcom/appsflyer/internal/av;

    invoke-virtual {v0}, Lcom/appsflyer/internal/av;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/appsflyer/internal/av$5;->values:Lcom/appsflyer/internal/av;

    invoke-virtual {v0}, Lcom/appsflyer/internal/av;->valueOf()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
