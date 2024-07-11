.class final Lcom/anythink/splashad/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field final synthetic b:Lcom/anythink/splashad/a/a$1;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/a$1;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/anythink/splashad/a/a$1$1;->b:Lcom/anythink/splashad/a/a$1;

    iput-object p2, p0, Lcom/anythink/splashad/a/a$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 134
    iget-object v0, p0, Lcom/anythink/splashad/a/a$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v1, p0, Lcom/anythink/splashad/a/a$1$1;->b:Lcom/anythink/splashad/a/a$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/a$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/splashad/a/a$1$1;->b:Lcom/anythink/splashad/a/a$1;

    iget-object v2, v2, Lcom/anythink/splashad/a/a$1;->c:Landroid/view/ViewGroup;

    new-instance v3, Lcom/anythink/splashad/a/d;

    iget-object v4, p0, Lcom/anythink/splashad/a/a$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v5, p0, Lcom/anythink/splashad/a/a$1$1;->b:Lcom/anythink/splashad/a/a$1;

    iget-object v5, v5, Lcom/anythink/splashad/a/a$1;->d:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-direct {v3, v4, v5}, Lcom/anythink/splashad/a/d;-><init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->internalShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;)V

    .line 135
    return-void
.end method
