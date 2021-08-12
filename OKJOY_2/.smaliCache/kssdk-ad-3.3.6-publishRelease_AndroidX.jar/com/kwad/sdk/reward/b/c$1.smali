.class Lcom/kwad/sdk/reward/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdInfo;

.field final synthetic b:Lcom/kwad/sdk/reward/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/c;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/c$1;->b:Lcom/kwad/sdk/reward/b/c;

    iput-object p2, p0, Lcom/kwad/sdk/reward/b/c$1;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$1;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$1;->b:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->a(Lcom/kwad/sdk/reward/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$1;->b:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->b(Lcom/kwad/sdk/reward/b/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long p1, v0, v2

    if-lez p1, :cond_3c

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$1;->b:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->c(Lcom/kwad/sdk/reward/b/c;)V

    goto :goto_3c

    :cond_2b
    iget-object p1, p0, Lcom/kwad/sdk/reward/b/c$1;->b:Lcom/kwad/sdk/reward/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/c;->d(Lcom/kwad/sdk/reward/b/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c$1;->b:Lcom/kwad/sdk/reward/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/c;->e(Lcom/kwad/sdk/reward/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_3c
    :goto_3c
    return-void
.end method
