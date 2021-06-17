.class final Lcom/tapjoy/internal/hg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hg;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/hc;

.field final synthetic c:Lcom/tapjoy/internal/hg;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hg;Landroid/app/Activity;Lcom/tapjoy/internal/hc;)V
    .registers 4

    .line 182
    iput-object p1, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iput-object p2, p0, Lcom/tapjoy/internal/hg$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/hg$3;->b:Lcom/tapjoy/internal/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 185
    invoke-static {}, Lcom/tapjoy/internal/hg;->d()Lcom/tapjoy/internal/hg;

    .line 186
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, v1, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v1, v1, Lcom/tapjoy/internal/hw;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->c(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, v1, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v1, v1, Lcom/tapjoy/internal/hw;->k:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v4}, Lcom/tapjoy/internal/hg;->b(Lcom/tapjoy/internal/hg;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Map;J)V

    .line 190
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-boolean v0, v0, Lcom/tapjoy/internal/hg;->d:Z

    if-nez v0, :cond_41

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->b:Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v1, v1, Lcom/tapjoy/internal/hg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v2, v2, Lcom/tapjoy/internal/hg;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v3, v3, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v3, v3, Lcom/tapjoy/internal/hw;->h:Lcom/tapjoy/internal/gn;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 194
    :cond_41
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->d(Lcom/tapjoy/internal/hg;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 195
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v0, v0, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v0, v0, Lcom/tapjoy/internal/hw;->k:Ljava/util/Map;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v0, v0, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v0, v0, Lcom/tapjoy/internal/hw;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 196
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    iget-object v0, v0, Lcom/tapjoy/internal/hg;->b:Lcom/tapjoy/internal/hw;

    iget-object v0, v0, Lcom/tapjoy/internal/hw;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c8

    .line 198
    iget-object v1, p0, Lcom/tapjoy/internal/hg$3;->c:Lcom/tapjoy/internal/hg;

    invoke-static {v1}, Lcom/tapjoy/internal/hg;->c(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/hb;

    move-result-object v1

    .line 1937
    iget-object v2, v1, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/hk;

    if-eqz v2, :cond_c8

    .line 1939
    iget-object v1, v1, Lcom/tapjoy/internal/hb;->b:Lcom/tapjoy/internal/hk;

    .line 2055
    invoke-static {}, Lcom/tapjoy/internal/hk;->a()Ljava/lang/String;

    move-result-object v2

    .line 2056
    iget-object v3, v1, Lcom/tapjoy/internal/hk;->b:Lcom/tapjoy/internal/n;

    invoke-virtual {v3}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v3

    .line 2057
    iget-object v4, v1, Lcom/tapjoy/internal/hk;->a:Lcom/tapjoy/internal/n;

    invoke-virtual {v4}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v4

    .line 2059
    if-eqz v4, :cond_99

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 2060
    :cond_99
    iget-object v3, v1, Lcom/tapjoy/internal/hk;->a:Lcom/tapjoy/internal/n;

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 2061
    const-string v3, ""

    .line 2063
    :cond_a0
    nop

    .line 3010
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a9

    const/4 v2, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v2, 0x0

    .line 2063
    :goto_aa
    if-eqz v2, :cond_ad

    .line 2064
    goto :goto_c3

    .line 2065
    :cond_ad
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 2066
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c3

    .line 2065
    :cond_c2
    move-object v0, v3

    .line 2068
    :goto_c3
    iget-object v1, v1, Lcom/tapjoy/internal/hk;->b:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 203
    :cond_c8
    iget-object v0, p0, Lcom/tapjoy/internal/hg$3;->a:Landroid/app/Activity;

    instance-of v1, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v1, :cond_d1

    .line 204
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 206
    :cond_d1
    return-void
.end method
