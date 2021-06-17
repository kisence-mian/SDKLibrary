.class final Lcom/tapjoy/internal/gx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/iq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gx;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/hc;

.field final synthetic c:Lcom/tapjoy/internal/gx;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gx;Landroid/app/Activity;Lcom/tapjoy/internal/hc;)V
    .registers 4

    .line 135
    iput-object p1, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    iput-object p2, p0, Lcom/tapjoy/internal/gx$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/gx$2;->b:Lcom/tapjoy/internal/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    invoke-static {v0}, Lcom/tapjoy/internal/gx;->a(Lcom/tapjoy/internal/gx;)V

    .line 165
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ib;)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    iget-object v0, v0, Lcom/tapjoy/internal/gx;->g:Lcom/tapjoy/internal/fr;

    instance-of v0, v0, Lcom/tapjoy/internal/fw;

    if-eqz v0, :cond_19

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    iget-object v0, v0, Lcom/tapjoy/internal/gx;->g:Lcom/tapjoy/internal/fr;

    check-cast v0, Lcom/tapjoy/internal/fw;

    .line 140
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/tapjoy/internal/fw;->b:Lcom/tapjoy/internal/fn;

    if-eqz v1, :cond_19

    .line 141
    iget-object v0, v0, Lcom/tapjoy/internal/fw;->b:Lcom/tapjoy/internal/fn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fn;->a()Lcom/tapjoy/internal/gh$a;

    .line 145
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    invoke-static {v0}, Lcom/tapjoy/internal/gx;->b(Lcom/tapjoy/internal/gx;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    iget-object v1, v1, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    iget-object v1, v1, Lcom/tapjoy/internal/ht;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/ib;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lcom/tapjoy/internal/ib;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    iget-object v0, v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/gu;

    iget-object v1, p0, Lcom/tapjoy/internal/gx$2;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/ib;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ib;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/js;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/gu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/gx;->d:Z

    goto :goto_58

    .line 151
    :cond_49
    iget-object v0, p1, Lcom/tapjoy/internal/ib;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/ib;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/hi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/tapjoy/internal/gx$2;->b:Lcom/tapjoy/internal/hc;

    iget-object v1, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    iget-object v1, v1, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 157
    iget-boolean p1, p1, Lcom/tapjoy/internal/ib;->j:Z

    if-eqz p1, :cond_6b

    .line 158
    iget-object p1, p0, Lcom/tapjoy/internal/gx$2;->c:Lcom/tapjoy/internal/gx;

    invoke-static {p1}, Lcom/tapjoy/internal/gx;->a(Lcom/tapjoy/internal/gx;)V

    .line 160
    :cond_6b
    return-void
.end method
