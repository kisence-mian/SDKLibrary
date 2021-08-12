.class Lcom/kwad/sdk/api/loader/c$a;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/c$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method
