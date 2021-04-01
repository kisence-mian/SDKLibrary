.class final Lcom/anythink/splashad/api/ATSplashAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/splashad/api/ATSplashAd;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 182
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 185
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v3, v1, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->v()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2a

    const-wide/16 v0, 0x1388

    :goto_26
    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;J)V

    .line 187
    return-void

    .line 186
    :cond_2a
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->v()J

    move-result-wide v0

    goto :goto_26
.end method
