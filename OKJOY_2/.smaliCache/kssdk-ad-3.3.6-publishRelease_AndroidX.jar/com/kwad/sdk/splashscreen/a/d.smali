.class public Lcom/kwad/sdk/splashscreen/a/d;
.super Lcom/kwad/sdk/mvp/Presenter;


# instance fields
.field private a:Lcom/kwad/sdk/splashscreen/c;

.field private b:Lcom/kwad/sdk/core/download/b/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/d;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/d;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/splashscreen/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/a/d;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/d;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/splashscreen/a/d;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/d;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/d;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/d;->a:Lcom/kwad/sdk/splashscreen/c;

    new-instance v0, Lcom/kwad/sdk/splashscreen/a/d$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/splashscreen/a/d$1;-><init>(Lcom/kwad/sdk/splashscreen/a/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/d;->b:Lcom/kwad/sdk/core/download/b/c;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/d;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->f:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/d;->b:Lcom/kwad/sdk/core/download/b/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/d;->b:Lcom/kwad/sdk/core/download/b/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/d;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->f:Lcom/kwad/sdk/core/download/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/d;->b:Lcom/kwad/sdk/core/download/b/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b/b;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_d
    return-void
.end method
