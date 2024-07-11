.class final Lcom/tapjoy/internal/gx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gx;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gx;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gx;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/tapjoy/internal/gx$3;->a:Lcom/tapjoy/internal/gx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/tapjoy/internal/gx$3;->a:Lcom/tapjoy/internal/gx;

    invoke-static {v0}, Lcom/tapjoy/internal/gx;->a(Lcom/tapjoy/internal/gx;)V

    .line 189
    return-void
.end method
