.class final Lcom/anythink/splashad/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/b;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/anythink/splashad/api/ATSplashAdListener;

.field final synthetic e:Lcom/anythink/splashad/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/a;Lcom/anythink/core/common/d/b;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 6

    .line 105
    iput-object p1, p0, Lcom/anythink/splashad/a/a$1;->e:Lcom/anythink/splashad/a/a;

    iput-object p2, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/core/common/d/b;

    iput-object p3, p0, Lcom/anythink/splashad/a/a$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/anythink/splashad/a/a$1;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/anythink/splashad/a/a$1;->d:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 108
    iget-object v0, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    check-cast v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 109
    iget-object v1, p0, Lcom/anythink/splashad/a/a$1;->b:Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 110
    invoke-virtual {v0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 113
    :cond_f
    iget-object v1, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 117
    if-eqz v1, :cond_3f

    .line 118
    iget-object v4, p0, Lcom/anythink/splashad/a/a$1;->e:Lcom/anythink/splashad/a/a;

    invoke-static {v4}, Lcom/anythink/splashad/a/a;->a(Lcom/anythink/splashad/a/a;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    iput-object v4, v1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    .line 119
    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/d/d;->d(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/anythink/splashad/a/a$1;->e:Lcom/anythink/splashad/a/a;

    invoke-static {v4}, Lcom/anythink/splashad/a/a;->b(Lcom/anythink/splashad/a/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/anythink/core/common/g/n;->a(Landroid/content/Context;Lcom/anythink/core/common/d/d;)V

    .line 125
    :cond_3f
    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 126
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/splashad/a/a$1;->e:Lcom/anythink/splashad/a/a;

    invoke-static {v5}, Lcom/anythink/splashad/a/a;->c(Lcom/anythink/splashad/a/a;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/splashad/a/a$1;->a:Lcom/anythink/core/common/d/b;

    invoke-virtual {v4, v5, v6}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/b;)V

    .line 130
    :cond_54
    iget-object v4, p0, Lcom/anythink/splashad/a/a$1;->e:Lcom/anythink/splashad/a/a;

    invoke-static {v4}, Lcom/anythink/splashad/a/a;->d(Lcom/anythink/splashad/a/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;J)V

    .line 131
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    new-instance v2, Lcom/anythink/splashad/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/splashad/a/a$1$1;-><init>(Lcom/anythink/splashad/a/a$1;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
