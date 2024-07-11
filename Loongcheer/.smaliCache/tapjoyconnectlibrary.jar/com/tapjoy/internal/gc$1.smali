.class final Lcom/tapjoy/internal/gc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gc;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    iget-object v0, v0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    .line 1138
    const-string v1, "usage_tracking_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/gl;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    invoke-static {v0}, Lcom/tapjoy/internal/gh;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    iget-object v0, v0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    const-class v1, Ljava/util/List;

    .line 106
    nop

    .line 2124
    iget-object v0, v0, Lcom/tapjoy/internal/gl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/gl$a;

    .line 2125
    const-string v3, "usage_tracking_exclude"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/gl$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2126
    if-eqz v2, :cond_3a

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2127
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3c

    .line 2129
    :cond_3a
    goto :goto_1b

    .line 2130
    :cond_3b
    const/4 v0, 0x0

    .line 106
    :goto_3c
    check-cast v0, Ljava/util/Collection;

    .line 105
    invoke-static {v0}, Lcom/tapjoy/internal/gh;->a(Ljava/util/Collection;)V

    .line 107
    return-void
.end method
