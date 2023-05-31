.class final Lcom/anythink/splashad/a/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/b$1;->onSplashAdShow(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field final synthetic b:Lcom/anythink/splashad/a/b$1;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/b$1;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 3

    .prologue
    .line 125
    iput-object p1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iput-object p2, p0, Lcom/anythink/splashad/a/b$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v1, :cond_6b

    .line 131
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->b(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->a(Lcom/anythink/splashad/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/core/b/g/m;->a(Landroid/content/Context;Lcom/anythink/core/b/c/b;)V

    .line 138
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->b(Lcom/anythink/splashad/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V

    .line 140
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->c:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->c(Lcom/anythink/splashad/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_cb

    invoke-virtual {v1}, Lcom/anythink/core/b/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_56
    if-eqz v0, :cond_5a

    .line 1334
    iput-object v1, v0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    .line 149
    :cond_5a
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->d(Lcom/anythink/splashad/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 152
    :cond_6b
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    iget-object v1, v1, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v1, :cond_88

    .line 153
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    iget-object v1, v1, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v2, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v2, v2, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v2}, Lcom/anythink/splashad/a/b;->e(Lcom/anythink/splashad/a/b;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 158
    :cond_88
    if-eqz v0, :cond_ca

    .line 160
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->g(Lcom/anythink/splashad/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v3, v3, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v3}, Lcom/anythink/splashad/a/b;->f(Lcom/anythink/splashad/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    iget-object v1, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->h(Lcom/anythink/splashad/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/splashad/a/b$1$1;->b:Lcom/anythink/splashad/a/b$1;

    iget-object v2, v2, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v2}, Lcom/anythink/splashad/a/b;->i(Lcom/anythink/splashad/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_ca
    return-void

    .line 143
    :cond_cb
    const-string v1, ""

    goto :goto_56
.end method
