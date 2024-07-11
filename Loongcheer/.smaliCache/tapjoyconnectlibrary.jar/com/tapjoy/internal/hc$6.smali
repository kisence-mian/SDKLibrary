.class final Lcom/tapjoy/internal/hc$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/gn;

.field final synthetic c:Lcom/tapjoy/internal/hc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
    .registers 4

    .line 121
    iput-object p1, p0, Lcom/tapjoy/internal/hc$6;->c:Lcom/tapjoy/internal/hc;

    iput-object p2, p0, Lcom/tapjoy/internal/hc$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/hc$6;->b:Lcom/tapjoy/internal/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/hc$6;->c:Lcom/tapjoy/internal/hc;

    invoke-static {v0}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/hc;)Lcom/tapjoy/internal/gq;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hc$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/hc$6;->b:Lcom/tapjoy/internal/gn;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/gq;->a(Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 125
    return-void
.end method
