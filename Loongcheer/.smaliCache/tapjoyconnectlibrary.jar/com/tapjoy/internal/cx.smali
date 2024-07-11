.class public final Lcom/tapjoy/internal/cx;
.super Lcom/tapjoy/internal/cn;


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/tapjoy/internal/co;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/de;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/tapjoy/internal/dt;

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field private final j:Lcom/tapjoy/internal/cp;

.field private k:Lcom/tapjoy/internal/dr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/cx;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/co;Lcom/tapjoy/internal/cp;)V
    .registers 8

    invoke-direct {p0}, Lcom/tapjoy/internal/cn;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/cx;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/cx;->d:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/cx;->e:Z

    iput-object p1, p0, Lcom/tapjoy/internal/cx;->a:Lcom/tapjoy/internal/co;

    iput-object p2, p0, Lcom/tapjoy/internal/cx;->j:Lcom/tapjoy/internal/cp;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/cx;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/cx;->b(Landroid/view/View;)V

    .line 1000
    iget-object v1, p2, Lcom/tapjoy/internal/cp;->h:Lcom/tapjoy/internal/cq;

    sget-object v2, Lcom/tapjoy/internal/cq;->a:Lcom/tapjoy/internal/cq;

    if-eq v1, v2, :cond_3e

    .line 2000
    iget-object v1, p2, Lcom/tapjoy/internal/cp;->h:Lcom/tapjoy/internal/cq;

    sget-object v2, Lcom/tapjoy/internal/cq;->c:Lcom/tapjoy/internal/cq;

    if-ne v1, v2, :cond_2e

    goto :goto_3e

    .line 3000
    :cond_2e
    new-instance v1, Lcom/tapjoy/internal/dv;

    .line 4000
    iget-object v2, p2, Lcom/tapjoy/internal/cp;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 5000
    iget-object p2, p2, Lcom/tapjoy/internal/cp;->e:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/tapjoy/internal/dv;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    goto :goto_47

    .line 2000
    :cond_3e
    :goto_3e
    new-instance v1, Lcom/tapjoy/internal/du;

    .line 3000
    iget-object p2, p2, Lcom/tapjoy/internal/cp;->b:Landroid/webkit/WebView;

    invoke-direct {v1, p2}, Lcom/tapjoy/internal/du;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 5000
    :goto_47
    iget-object p2, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    invoke-virtual {p2}, Lcom/tapjoy/internal/dt;->a()V

    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object p2

    .line 6000
    iget-object p2, p2, Lcom/tapjoy/internal/dc;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 7000
    invoke-static {}, Lcom/tapjoy/internal/dg;->a()Lcom/tapjoy/internal/dg;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tapjoy/internal/dt;->c()Landroid/webkit/WebView;

    move-result-object p2

    .line 8000
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->a:Lcom/tapjoy/internal/cu;

    const-string v4, "impressionOwner"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->b:Lcom/tapjoy/internal/cu;

    const-string v4, "mediaEventsOwner"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->d:Lcom/tapjoy/internal/cr;

    const-string v4, "creativeType"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/tapjoy/internal/co;->e:Lcom/tapjoy/internal/ct;

    const-string v4, "impressionType"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/tapjoy/internal/co;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "isolateVerificationScripts"

    invoke-static {v2, v3, p1}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7000
    nop

    .line 9000
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const-string v0, "init"

    invoke-virtual {v1, p2, v0, p1}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/dr;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/dr;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tapjoy/internal/cx;->k:Lcom/tapjoy/internal/dr;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/cx;->d:Z

    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v1

    .line 10000
    invoke-virtual {v1}, Lcom/tapjoy/internal/dc;->b()Z

    move-result v2

    iget-object v1, v1, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_49

    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    .line 11000
    invoke-static {}, Lcom/tapjoy/internal/dd;->a()Lcom/tapjoy/internal/dd;

    move-result-object v2

    .line 12000
    iput-object v1, v2, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    .line 11000
    invoke-static {}, Lcom/tapjoy/internal/dd;->a()Lcom/tapjoy/internal/dd;

    move-result-object v2

    .line 13000
    iput-boolean v0, v2, Lcom/tapjoy/internal/dd;->a:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/tapjoy/internal/dd;->b:Z

    invoke-virtual {v2}, Lcom/tapjoy/internal/dd;->b()V

    .line 11000
    invoke-static {}, Lcom/tapjoy/internal/dw;->a()Lcom/tapjoy/internal/dw;

    .line 14000
    invoke-static {}, Lcom/tapjoy/internal/dw;->b()V

    .line 11000
    iget-object v1, v1, Lcom/tapjoy/internal/dh;->b:Lcom/tapjoy/internal/ck;

    .line 15000
    invoke-virtual {v1}, Lcom/tapjoy/internal/ck;->a()F

    move-result v2

    iput v2, v1, Lcom/tapjoy/internal/ck;->b:F

    invoke-virtual {v1}, Lcom/tapjoy/internal/ck;->b()V

    iget-object v2, v1, Lcom/tapjoy/internal/ck;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_49
    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 16000
    iget v0, v0, Lcom/tapjoy/internal/dh;->a:F

    iget-object v1, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/dt;->a(F)V

    iget-object v0, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    iget-object v1, p0, Lcom/tapjoy/internal/cx;->j:Lcom/tapjoy/internal/cp;

    invoke-virtual {v0, p0, v1}, Lcom/tapjoy/internal/dt;->a(Lcom/tapjoy/internal/cx;Lcom/tapjoy/internal/cp;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/cx;->c()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_11

    return-void

    :cond_11
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/cx;->b(Landroid/view/View;)V

    .line 17000
    iget-object v0, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dt;->d()V

    .line 18000
    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/tapjoy/internal/dc;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 18000
    if-eqz v0, :cond_49

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/cx;

    if-eq v1, p0, :cond_2f

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->c()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2f

    iget-object v1, v1, Lcom/tapjoy/internal/cx;->k:Lcom/tapjoy/internal/dr;

    invoke-virtual {v1}, Lcom/tapjoy/internal/dr;->clear()V

    goto :goto_2f

    :cond_49
    return-void
.end method

.method public final b()V
    .registers 7

    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/cx;->k:Lcom/tapjoy/internal/dr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dr;->clear()V

    .line 20000
    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->e:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/cx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/cx;->e:Z

    .line 21000
    iget-object v0, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 22000
    invoke-static {}, Lcom/tapjoy/internal/dg;->a()Lcom/tapjoy/internal/dg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/dt;->c()Landroid/webkit/WebView;

    move-result-object v0

    .line 23000
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "finishSession"

    invoke-virtual {v1, v0, v4, v3}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v0

    .line 24000
    invoke-virtual {v0}, Lcom/tapjoy/internal/dc;->b()Z

    move-result v1

    iget-object v3, v0, Lcom/tapjoy/internal/dc;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Lcom/tapjoy/internal/dc;->b()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v0

    .line 25000
    invoke-static {}, Lcom/tapjoy/internal/dw;->a()Lcom/tapjoy/internal/dw;

    move-result-object v1

    .line 26000
    nop

    .line 27000
    invoke-static {}, Lcom/tapjoy/internal/dw;->c()V

    .line 26000
    iget-object v4, v1, Lcom/tapjoy/internal/dw;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/tapjoy/internal/dw;->a:Landroid/os/Handler;

    new-instance v5, Lcom/tapjoy/internal/dw$1;

    invoke-direct {v5, v1}, Lcom/tapjoy/internal/dw$1;-><init>(Lcom/tapjoy/internal/dw;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25000
    invoke-static {}, Lcom/tapjoy/internal/dd;->a()Lcom/tapjoy/internal/dd;

    move-result-object v1

    .line 28000
    iput-boolean v2, v1, Lcom/tapjoy/internal/dd;->a:Z

    iput-boolean v2, v1, Lcom/tapjoy/internal/dd;->b:Z

    iput-object v3, v1, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    .line 25000
    iget-object v0, v0, Lcom/tapjoy/internal/dh;->b:Lcom/tapjoy/internal/ck;

    .line 29000
    iget-object v1, v0, Lcom/tapjoy/internal/ck;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 30000
    :cond_73
    iget-object v0, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dt;->b()V

    iput-object v3, p0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    return-void
.end method

.method public final c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/cx;->k:Lcom/tapjoy/internal/dr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->d:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/tapjoy/internal/cx;->e:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
