.class final Lcom/tapjoy/internal/hc$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hc;->b(Ljava/lang/String;)V
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

    .line 91
    iput-object p1, p0, Lcom/tapjoy/internal/hc$3;->b:Lcom/tapjoy/internal/hc;

    iput-object p2, p0, Lcom/tapjoy/internal/hc$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/hc$3;->b:Lcom/tapjoy/internal/hc;

    invoke-static {v0}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/hc;)Lcom/tapjoy/internal/gq;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hc$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/gq;->b(Ljava/lang/String;)V

    .line 95
    return-void
.end method
