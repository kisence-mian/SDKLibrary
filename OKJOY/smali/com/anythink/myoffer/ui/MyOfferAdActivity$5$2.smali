.class final Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 425
    iput-object p1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iput-object p2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v0, v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->m(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 429
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v0, v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 431
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openApp -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v2, v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v0, v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->z()Ljava/lang/String;

    move-result-object v1

    .line 1059
    :try_start_55
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1060
    if-eqz v1, :cond_67

    .line 1061
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1062
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_67} :catch_68

    .line 1066
    :cond_67
    :goto_67
    return-void

    .line 1065
    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_67

    .line 435
    :cond_6d
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadApp:  -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v2, v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/c/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Lcom/anythink/china/common/a/c;

    invoke-direct {v0}, Lcom/anythink/china/common/a/c;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->n(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/china/common/a/c;->a:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/china/common/a/c;->f:Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/china/common/a/c;->e:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    .line 442
    const/4 v1, 0x1

    const/high16 v2, 0x42480000    # 50.0f

    iget-object v3, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v3, v3, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-virtual {v3}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 443
    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v2, v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/china/common/a/c;->d:Landroid/graphics/Bitmap;

    .line 446
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v2, v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/c/c;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/china/common/a;->a(J)V

    .line 447
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/china/common/a;->e()V

    .line 448
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;->b:Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    iget-object v1, v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/c;)V

    goto/16 :goto_67
.end method
