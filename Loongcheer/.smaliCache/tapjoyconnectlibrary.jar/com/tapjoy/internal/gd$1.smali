.class final Lcom/tapjoy/internal/gd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gd;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gd;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 147
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    .line 1032
    iget-object v0, v0, Lcom/tapjoy/internal/gd;->e:Lcom/tapjoy/internal/gd$a;

    .line 148
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    .line 2032
    iget-object v0, v0, Lcom/tapjoy/internal/gd;->e:Lcom/tapjoy/internal/gd$a;

    .line 148
    iget-object v0, v0, Lcom/tapjoy/internal/gd$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_2e

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    new-instance v1, Lcom/tapjoy/internal/gd$b;

    iget-object v2, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/gd$b;-><init>(Lcom/tapjoy/internal/gd;B)V

    .line 3032
    iput-object v1, v0, Lcom/tapjoy/internal/gd;->c:Lcom/tapjoy/internal/gd$b;

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/gd$1;->a:Lcom/tapjoy/internal/gd;

    .line 4032
    iget-object v0, v0, Lcom/tapjoy/internal/gd;->c:Lcom/tapjoy/internal/gd$b;

    .line 150
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$b;->e()Lcom/tapjoy/internal/kg;

    .line 152
    :cond_2e
    return-void
.end method
