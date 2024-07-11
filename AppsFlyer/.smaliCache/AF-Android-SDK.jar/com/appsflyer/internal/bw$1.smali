.class final Lcom/appsflyer/internal/bw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/bw;->values()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/bw;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/bw;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/appsflyer/internal/bw$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    .line 33
    iget-object p1, p0, Lcom/appsflyer/internal/bw$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

    .line 1013
    iget-object p1, p1, Lcom/appsflyer/internal/bw;->AFInAppEventParameterName:Ljava/lang/Runnable;

    .line 33
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 34
    return-void
.end method
