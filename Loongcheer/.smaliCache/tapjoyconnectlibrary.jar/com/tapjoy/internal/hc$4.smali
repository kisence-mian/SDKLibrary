.class final Lcom/tapjoy/internal/hc$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hc;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/hc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/tapjoy/internal/hc$4;->b:Lcom/tapjoy/internal/hc;

    iput-object p2, p0, Lcom/tapjoy/internal/hc$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/tapjoy/internal/hc$4;->b:Lcom/tapjoy/internal/hc;

    invoke-static {v0}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/hc;)Lcom/tapjoy/internal/gq;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hc$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/gq;->c(Ljava/lang/String;)V

    .line 105
    return-void
.end method
